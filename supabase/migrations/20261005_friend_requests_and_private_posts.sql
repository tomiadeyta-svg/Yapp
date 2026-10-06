-- YAP friend requests and friends-only post access
-- Run this once in Supabase Dashboard > SQL Editor for project cjgzlubvneorecmpdpqk.

begin;

create table if not exists public.friend_requests (
  id uuid primary key default gen_random_uuid(),
  requester_id uuid not null references auth.users(id) on delete cascade,
  recipient_id uuid not null references auth.users(id) on delete cascade,
  status text not null default 'pending' check (status in ('pending','accepted','declined')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint friend_requests_not_self check (requester_id <> recipient_id)
);

create unique index if not exists friend_requests_one_pending_direction
  on public.friend_requests(requester_id, recipient_id) where status = 'pending';
create index if not exists friend_requests_recipient_status
  on public.friend_requests(recipient_id, status, created_at desc);
create index if not exists friend_requests_requester_status
  on public.friend_requests(requester_id, status, created_at desc);

alter table public.friend_requests enable row level security;
grant select, insert, update on public.friend_requests to authenticated;

drop policy if exists "friend_requests_participant_read" on public.friend_requests;
create policy "friend_requests_participant_read"
  on public.friend_requests for select to authenticated
  using (auth.uid() = requester_id or auth.uid() = recipient_id);

drop policy if exists "friend_requests_requester_create" on public.friend_requests;
create policy "friend_requests_requester_create"
  on public.friend_requests for insert to authenticated
  with check (auth.uid() = requester_id and status = 'pending' and requester_id <> recipient_id);

drop policy if exists "friend_requests_recipient_answer" on public.friend_requests;
create policy "friend_requests_recipient_answer"
  on public.friend_requests for update to authenticated
  using (auth.uid() = recipient_id and status = 'pending')
  with check (auth.uid() = recipient_id and status in ('accepted','declined'));

create or replace function public.guard_friend_request_update()
returns trigger
language plpgsql
security definer
set search_path = ''
as $$
begin
  if tg_op = 'UPDATE' then
    if new.id is distinct from old.id
      or new.requester_id is distinct from old.requester_id
      or new.recipient_id is distinct from old.recipient_id
      or new.created_at is distinct from old.created_at
      or old.status <> 'pending'
      or new.status not in ('accepted','declined')
      or auth.uid() is distinct from old.recipient_id then
      raise exception 'Invalid friend request update';
    end if;
    new.updated_at := now();
  end if;
  return new;
end;
$$;

drop trigger if exists friend_request_guard on public.friend_requests;
create trigger friend_request_guard
  before update on public.friend_requests
  for each row execute function public.guard_friend_request_update();

-- Ensure the existing friendship table is symmetric and cannot contain duplicate pairs.
delete from public.friendships a
using public.friendships b
where a.ctid < b.ctid and a.user_id = b.user_id and a.friend_id = b.friend_id;

create unique index if not exists friendships_user_friend_unique
  on public.friendships(user_id, friend_id);

insert into public.friendships(user_id, friend_id)
select distinct pairs.user_id, pairs.friend_id
from (
  select user_id, friend_id from public.friendships
  union all
  select friend_id, user_id from public.friendships
) as pairs
where pairs.user_id <> pairs.friend_id
on conflict (user_id, friend_id) do nothing;

create or replace function public.are_yap_friends(a uuid, b uuid)
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select exists (
    select 1 from public.friendships f
    where (f.user_id = a and f.friend_id = b)
       or (f.user_id = b and f.friend_id = a)
  );
$$;
revoke all on function public.are_yap_friends(uuid, uuid) from public;
grant execute on function public.are_yap_friends(uuid, uuid) to authenticated;

create or replace function public.accepted_friend_request_add_friendship()
returns trigger
language plpgsql
security definer
set search_path = ''
as $$
begin
  if new.status = 'accepted' and old.status = 'pending' then
    insert into public.friendships(user_id, friend_id)
      values (new.requester_id, new.recipient_id), (new.recipient_id, new.requester_id)
      on conflict (user_id, friend_id) do nothing;
  end if;
  return new;
end;
$$;

drop trigger if exists friend_request_accept_friendship on public.friend_requests;
create trigger friend_request_accept_friendship
  after update of status on public.friend_requests
  for each row execute function public.accepted_friend_request_add_friendship();

-- Remove existing post policies so no older public-read policy can bypass this rule.
do $$
declare p record;
begin
  for p in
    select policyname from pg_policies
    where schemaname = 'public' and tablename = 'posts'
  loop
    execute format('drop policy if exists %I on public.posts', p.policyname);
  end loop;
end $$;

create policy "posts_read_self_or_accepted_friends"
  on public.posts for select to authenticated
  using (author_id = auth.uid() or public.are_yap_friends(auth.uid(), author_id));

create policy "posts_insert_own"
  on public.posts for insert to authenticated
  with check (author_id = auth.uid());

create policy "posts_update_own"
  on public.posts for update to authenticated
  using (author_id = auth.uid()) with check (author_id = auth.uid());

create policy "posts_delete_own"
  on public.posts for delete to authenticated
  using (author_id = auth.uid());

-- Friendship records are managed only by the friend-request acceptance trigger.
alter table public.friendships enable row level security;
grant select on public.friendships to authenticated;
revoke insert, update, delete on public.friendships from authenticated;

do $$
declare p record;
begin
  for p in
    select policyname from pg_policies
    where schemaname = 'public' and tablename = 'friendships'
  loop
    execute format('drop policy if exists %I on public.friendships', p.policyname);
  end loop;
end $$;

create policy "friendships_participant_read"
  on public.friendships for select to authenticated
  using (user_id = auth.uid() or friend_id = auth.uid());

commit;
