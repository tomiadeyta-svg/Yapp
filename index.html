<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no,viewport-fit=cover"/>
<title>YAP - Speak Your Mind</title>
<meta name="theme-color" content="#C800FF"/>
<link href="https://fonts.googleapis.com/css2?family=Lilita+One&family=Bungee&family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
<style>
*{margin:0;padding:0;box-sizing:border-box;-webkit-tap-highlight-color:transparent}
:root{
  --c1:#FF85C8;--c2:#C800FF;--c3:#FFD700;--c4:#00FFD0;--c5:#FF6B9D;
  --bg0:#180018;--bg1:#2e0048;--bg2:#3d0060;--bg3:#120015;
  --cbg:rgba(20,0,28,0.96);
  --b1:#FF85C8;--b2:#C800FF;--b3:#FFD700;
  --t1:#FFE0F0;--t2:#D88AFF;
  --g1:rgba(255,133,200,0.4);--g2:rgba(200,0,255,0.35);
  --sh:#C800FF;
  --safe-top:env(safe-area-inset-top,0px);
  --safe-bot:env(safe-area-inset-bottom,0px);
}
html,body{height:100%;overflow:hidden}
body{background:linear-gradient(145deg,var(--bg0),var(--bg1),var(--bg2),var(--bg3));font-family:'Montserrat',sans-serif;color:var(--t1)}

/* AUTH */
#authScreen{position:fixed;inset:0;z-index:9000;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:24px;background:linear-gradient(145deg,var(--bg0),var(--bg1),var(--bg2));overflow-y:auto}
#authScreen.hidden{display:none}
.auth-logo{font-family:'Bungee',cursive;font-size:72px;color:var(--c1);-webkit-text-stroke:4px #1a0025;text-shadow:5px 5px 0 #1a0025,4px 4px 0 var(--sh);letter-spacing:8px;animation:titleBounce 2.2s ease-in-out infinite;margin-bottom:4px}
.auth-sub{font-family:'Lilita One',cursive;font-size:10px;color:var(--c1);letter-spacing:5px;opacity:.7;margin-bottom:32px}
.auth-card{width:100%;max-width:340px;background:var(--cbg);border-radius:28px;border:2.5px solid var(--b1);padding:24px;box-shadow:0 0 40px var(--g1),0 0 80px var(--g2)}
.auth-tabs{display:flex;gap:3px;background:rgba(255,255,255,0.05);border:1.5px solid var(--b1);border-radius:12px;padding:3px;margin-bottom:20px}
.auth-tab{flex:1;padding:10px;border-radius:9px;border:none;background:transparent;color:rgba(255,255,255,0.4);font-family:'Montserrat',sans-serif;font-size:12px;font-weight:700;cursor:pointer;transition:all 0.2s}
.auth-tab.on{background:var(--c2);color:var(--c1)}
.auth-input{width:100%;background:rgba(255,255,255,0.06);border:1.5px solid var(--b1);border-radius:12px;padding:12px 14px;color:var(--t1);font-family:'Montserrat',sans-serif;font-size:13px;outline:none;margin-bottom:10px;transition:border-color 0.3s}
.auth-input:focus{border-color:var(--c1)}
.auth-input::placeholder{color:rgba(255,255,255,0.22)}
.auth-btn{width:100%;background:var(--c2);border:1.5px solid var(--c1);border-radius:14px;padding:14px;font-family:'Bungee',cursive;font-size:16px;color:var(--c1);letter-spacing:2px;cursor:pointer;transition:all 0.3s;-webkit-text-stroke:0.8px rgba(0,0,0,0.4);text-shadow:2px 2px 0 rgba(0,0,0,0.3);margin-top:6px}
.auth-btn:hover{filter:brightness(1.2);transform:scale(1.02)}
.auth-divider{display:flex;align-items:center;gap:10px;margin:16px 0;font-size:10px;color:rgba(255,255,255,0.3);letter-spacing:1px}
.auth-divider::before,.auth-divider::after{content:'';flex:1;height:1px;background:rgba(255,255,255,0.12)}
.social-row{display:flex;gap:8px;margin-bottom:12px}
.social-btn{flex:1;padding:11px;border-radius:12px;border:1.5px solid rgba(255,255,255,0.15);background:rgba(255,255,255,0.05);color:rgba(255,255,255,0.7);font-size:13px;font-weight:600;font-family:'Montserrat',sans-serif;cursor:pointer;display:flex;align-items:center;justify-content:center;gap:6px;transition:all 0.2s}
.social-btn:hover{background:rgba(255,255,255,0.1);border-color:var(--b1)}
.skip-btn{background:none;border:none;color:rgba(255,255,255,0.35);font-size:12px;font-weight:600;cursor:pointer;padding:8px;font-family:'Montserrat',sans-serif;letter-spacing:1px;margin-top:8px}
.skip-btn:hover{color:var(--c1)}
.auth-error{color:#FF4570;font-size:11px;text-align:center;margin-bottom:8px;min-height:16px}

/* APP SHELL */
#app{position:fixed;inset:0;display:flex;flex-direction:column;overflow:hidden;z-index:1;background:linear-gradient(145deg,var(--bg0),var(--bg1),var(--bg2),var(--bg3))}
#app.hidden{display:none}
#particles{position:fixed;inset:0;pointer-events:none;z-index:0;overflow:hidden}
.particle{position:absolute;pointer-events:none;animation:floatP 3s ease-in-out infinite}
@keyframes floatP{0%,100%{transform:translateY(0) scale(0.9);opacity:.25}50%{transform:translateY(-14px) scale(1.2);opacity:.9}}

.screen{flex:1;overflow:hidden;position:relative;display:none;flex-direction:column;z-index:2}
.screen.active{display:flex}

/* Plus btn */
.plus-btn{position:absolute;top:calc(8px + var(--safe-top));left:14px;z-index:100;width:48px;height:48px;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:34px;font-weight:900;color:var(--c1);line-height:1;transition:all 0.3s;text-shadow:0 0 12px var(--g1),2px 2px 0 rgba(0,0,0,0.5);background:none;border:none;font-family:'Bungee',cursive}
.plus-btn:hover{transform:scale(1.2) rotate(15deg);text-shadow:0 0 22px var(--c1)}

/* Theme dots */
.theme-bar{display:flex;align-items:center;gap:5px;position:absolute;top:calc(14px + var(--safe-top));right:12px;z-index:100}
.tdot{width:20px;height:20px;border-radius:50%;cursor:pointer;border:2px solid transparent;transition:all 0.25s;flex-shrink:0}
.tdot:hover,.tdot.on{border-color:#fff;transform:scale(1.25);box-shadow:0 0 8px currentColor}

/* Feed */
.feed{flex:1;overflow-y:scroll;scroll-snap-type:y mandatory;scrollbar-width:none;padding-top:var(--safe-top)}
.feed::-webkit-scrollbar{display:none}
.page{width:100%;min-height:100vh;min-height:100dvh;scroll-snap-align:start;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:54px 18px 88px;position:relative;flex-shrink:0}

/* YAP header */
.yap-title{font-family:'Bungee',cursive;font-size:88px;color:var(--c1);-webkit-text-stroke:4px #1a0025;text-shadow:5px 5px 0 #1a0025,-2px -2px 0 #1a0025,4px 4px 0 var(--sh);letter-spacing:8px;display:block;line-height:1;transform:rotate(-2deg);animation:titleBounce 2.2s ease-in-out infinite,glitch 9s ease infinite}
@keyframes titleBounce{0%,100%{transform:rotate(-2deg) scale(1)}50%{transform:rotate(-2deg) scale(1.04)}}
@keyframes glitch{0%,88%,100%{}90%{text-shadow:5px 5px 0 #1a0025,4px 4px 0 var(--sh),-6px 2px 0 var(--c3);transform:rotate(-2deg) translateX(3px)}93%{text-shadow:5px 5px 0 #1a0025,4px 4px 0 var(--c4);transform:rotate(-2deg) translateX(-2px)}95%{transform:rotate(-2deg) translateX(0)}}
.title-wrap{position:relative;display:inline-block;margin-bottom:6px}
.title-star{position:absolute;font-size:18px;animation:starSpin 3s ease-in-out infinite;line-height:1}
.ts1{top:-10px;right:-8px;animation-delay:.2s}
.ts2{bottom:-8px;left:-6px;animation-delay:.7s}
.ts3{top:10px;right:-22px;font-size:12px;animation-delay:1.1s}
@keyframes starSpin{0%,100%{transform:rotate(0deg) scale(1)}50%{transform:rotate(20deg) scale(1.3)}}
.yap-sub{font-family:'Lilita One',cursive;font-size:10px;color:var(--c1);letter-spacing:5px;opacity:.7;margin-top:2px}

/* Compose */
.compose-card{width:100%;max-width:400px;background:var(--cbg);border-radius:28px;border:2.5px solid var(--b1);padding:16px;box-shadow:0 0 30px var(--g1),0 0 60px var(--g2)}
.compose-row{display:flex;gap:11px;margin-bottom:12px}
.compose-ta{flex:1;background:transparent;border:none;outline:none;color:var(--t1);font-family:'Montserrat',sans-serif;font-size:13.5px;resize:none;height:100px;padding:4px;line-height:1.55}
.compose-ta::placeholder{color:rgba(255,255,255,0.22)}
.feel-box{width:105px;border:2px solid var(--b2);border-radius:16px;padding:9px 7px;display:flex;flex-direction:column;align-items:center;background:rgba(0,0,0,0.35);gap:6px;justify-content:flex-start;min-height:100px}
.feel-lbl{font-size:9px;font-weight:700;color:var(--c2);letter-spacing:1.5px;text-align:center}
.feel-emoji-btn{width:42px;height:42px;border-radius:11px;border:1.5px solid var(--b1);display:flex;align-items:center;justify-content:center;background:transparent;cursor:pointer;font-size:22px;transition:all 0.2s}
.feel-emoji-btn:hover{background:rgba(255,255,255,0.1)}
.feel-in{width:100%;background:transparent;border:none;border-bottom:1px solid rgba(255,255,255,0.25);outline:none;color:var(--t1);font-family:'Montserrat',sans-serif;font-size:11px;text-align:center;padding-bottom:3px}
.feel-in::placeholder{color:rgba(255,255,255,0.22)}
.char-counter{font-size:10px;color:rgba(255,255,255,0.3);text-align:right;margin-bottom:6px;font-weight:500}
.yap-btn{width:100%;background:var(--c2);border:1.5px solid var(--c1);border-radius:14px;padding:12px;font-family:'Bungee',cursive;font-size:17px;color:var(--c1);letter-spacing:2px;cursor:pointer;transition:all 0.3s;-webkit-text-stroke:1px rgba(0,0,0,0.4);text-shadow:2px 2px 0 rgba(0,0,0,0.3)}
.yap-btn:hover{filter:brightness(1.25);transform:scale(1.02)}
.upload-lock{display:flex;align-items:center;gap:7px;background:rgba(255,200,0,0.08);border:1.5px solid rgba(255,200,0,0.3);border-radius:10px;padding:8px 12px;cursor:pointer;transition:all 0.2s;margin-top:8px}
.upload-lock:hover{background:rgba(255,200,0,0.15)}
.ul-text{font-size:11px;font-weight:600;color:rgba(255,200,0,0.7);font-family:'Montserrat',sans-serif}
.ul-badge{font-size:9px;font-weight:800;background:var(--c3);color:#000;padding:2px 8px;border-radius:20px;letter-spacing:1px;margin-left:auto;white-space:nowrap}
.scroll-hint{text-align:center;margin-top:12px;opacity:.45}
.scroll-hint span{font-size:9px;font-family:'Montserrat',sans-serif;color:var(--c1);letter-spacing:2px;display:block}
.arr{font-size:14px;color:var(--c1);animation:bounceD 1.6s ease-in-out infinite;display:block}
@keyframes bounceD{0%,100%{transform:translateY(0)}50%{transform:translateY(4px)}}

/* Post card */
.yap-card-outer{width:100%;max-width:400px;background:var(--cbg);border-radius:32px;border:2.5px solid var(--b1);padding:20px;box-shadow:0 0 28px var(--g1),0 12px 40px rgba(0,0,0,0.5);display:flex;flex-direction:column;position:relative;overflow:hidden;max-height:600px}
.yap-card-outer::after{content:'';position:absolute;top:0;left:0;right:0;height:3px;background:linear-gradient(90deg,var(--b1),var(--b2),var(--b3));border-radius:32px 32px 0 0}
.yap-author{display:flex;align-items:center;gap:10px;margin-bottom:14px}
.yap-av{width:46px;height:46px;border-radius:50%;background:var(--c2);border:2.5px solid var(--c1);display:flex;align-items:center;justify-content:center;font-family:'Bungee',cursive;font-size:18px;color:var(--c1);overflow:hidden;flex-shrink:0}
.yap-uname{font-size:14px;font-weight:700;color:var(--c1)}
.yap-handle{font-size:10px;color:var(--t2);margin-top:1px}
.yap-time{font-size:9px;color:rgba(255,255,255,0.3);margin-left:auto;letter-spacing:.5px}
.yap-body{display:flex;gap:12px;flex:1;min-height:0;margin-bottom:14px}
.yap-content{flex:1;font-size:15px;font-weight:500;color:var(--t1);line-height:1.6;overflow:hidden}
.post-feel{width:90px;border:2px solid var(--b2);border-radius:18px;padding:10px 7px;display:flex;flex-direction:column;align-items:center;background:rgba(0,0,0,0.3);gap:7px;flex-shrink:0;justify-content:flex-start}
.pf-label{font-size:8px;font-weight:700;color:var(--c2);letter-spacing:1.5px;text-align:center}
.pf-emoji{font-size:28px;line-height:1}
.pf-text{font-size:10px;font-weight:600;color:var(--t1);text-align:center;line-height:1.35}
.yap-actions{display:flex;gap:14px;border-top:1px solid rgba(255,255,255,0.1);padding-top:12px;align-items:center}
.act{display:flex;align-items:center;gap:5px;background:none;border:none;cursor:pointer;font-family:'Montserrat',sans-serif;font-size:13px;font-weight:700;transition:all 0.2s;padding:0}
.act:hover{transform:scale(1.09)}
.act.heart-act{color:#FF6B9D}
.act.cmnt-act{color:var(--c3)}
.act.dm-act{color:var(--c4)}
.hi{font-size:19px}
@keyframes heartPop{0%{transform:scale(1)}50%{transform:scale(1.6)}100%{transform:scale(1)}}

/* Ad strip */
.ad-strip{background:rgba(255,255,255,0.05);border:1.5px dashed rgba(255,255,255,0.2);border-radius:14px;padding:9px 14px;display:flex;align-items:center;justify-content:space-between;margin-top:10px;font-size:10px;color:rgba(255,255,255,0.35);max-width:400px;width:100%}
.ad-remove{font-size:10px;font-weight:700;color:var(--c3);cursor:pointer;text-decoration:underline}

/* Comments drawer */
.cmts-overlay-bg{position:fixed;inset:0;background:rgba(0,0,0,0.5);z-index:200;display:none}
.cmts-overlay-bg.open{display:block}
.cmts-drawer{position:fixed;bottom:0;left:0;right:0;background:var(--cbg);border-top:2px solid var(--b1);border-radius:28px 28px 0 0;padding:16px;transform:translateY(100%);transition:transform 0.35s cubic-bezier(0.34,1.56,0.64,1);max-height:65vh;overflow-y:auto;z-index:300}
.cmts-drawer.open{transform:translateY(0)}
.cmts-head{display:flex;align-items:center;justify-content:space-between;margin-bottom:12px}
.cmts-title{font-family:'Bungee',cursive;font-size:20px;color:var(--c1);-webkit-text-stroke:1.5px rgba(0,0,0,0.4)}
.cmts-close{background:rgba(255,255,255,0.08);border:1px solid var(--b1);border-radius:8px;padding:5px 9px;cursor:pointer;color:var(--c1);font-size:14px}
.cmts-input-row{display:flex;gap:7px;margin-bottom:12px}
.cmts-in{flex:1;background:rgba(255,255,255,0.06);border:1.5px solid var(--b1);border-radius:12px;padding:8px 12px;color:var(--t1);font-family:'Montserrat',sans-serif;font-size:12px;outline:none}
.cmts-in::placeholder{color:rgba(255,255,255,0.22)}
.cmts-send{width:36px;height:36px;background:var(--c2);border:1px solid var(--c1);border-radius:10px;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:14px;flex-shrink:0}
.comment-item{background:rgba(255,255,255,0.04);border-left:2.5px solid var(--c2);border-radius:10px;padding:9px 11px;margin-bottom:7px}
.ci-name{font-size:11px;font-weight:700;color:var(--c2);margin-bottom:2px}
.ci-text{font-size:12px;color:var(--t1)}

/* Tab bar */
.tabbar-wrap{position:fixed;bottom:calc(12px + var(--safe-bot));left:50%;transform:translateX(-50%);z-index:400;pointer-events:none}
.tabbar{display:flex;align-items:center;gap:4px;background:rgba(0,0,0,0.75);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);border-radius:50px;padding:7px 10px;border:1.5px solid rgba(255,255,255,0.15);pointer-events:auto;box-shadow:0 4px 24px rgba(0,0,0,0.5),0 0 16px var(--g2)}
.tab-btn{display:flex;align-items:center;justify-content:center;padding:9px 18px;border-radius:40px;border:none;background:transparent;cursor:pointer;font-size:20px;transition:all 0.25s;position:relative}
.tab-btn.active{background:rgba(255,255,255,0.12);border:1px solid rgba(255,255,255,0.2)}
.tab-btn:hover{background:rgba(255,255,255,0.08)}

/* Sub sheet */
.sub-overlay{position:fixed;inset:0;background:rgba(0,0,0,0.82);z-index:800;display:none;align-items:flex-end}
.sub-overlay.open{display:flex}
.sub-sheet{width:100%;background:var(--cbg);border-top:3px solid var(--c3);border-radius:28px 28px 0 0;padding:22px 20px calc(28px + var(--safe-bot));position:relative;overflow:hidden;max-height:85vh;overflow-y:auto}
.sub-sheet::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;background:linear-gradient(90deg,var(--c2),var(--c3),var(--c1),var(--c3),var(--c2));background-size:200%;animation:shim 2s linear infinite}
@keyframes shim{0%{background-position:0% 50%}100%{background-position:200% 50%}}
.sub-close{position:absolute;top:14px;right:16px;background:rgba(255,255,255,0.08);border:1px solid rgba(255,255,255,0.2);border-radius:8px;padding:5px 9px;cursor:pointer;color:rgba(255,255,255,0.6);font-size:13px}
.sub-crown{font-size:42px;text-align:center;display:block;margin-bottom:6px;animation:crownBounce 1.5s ease-in-out infinite}
@keyframes crownBounce{0%,100%{transform:translateY(0) rotate(-3deg)}50%{transform:translateY(-5px) rotate(3deg)}}
.sub-title{font-family:'Bungee',cursive;font-size:32px;text-align:center;display:block;color:var(--c3);-webkit-text-stroke:2.5px #000;text-shadow:3px 3px 0 #000;margin-bottom:4px;letter-spacing:2px}
.sub-subtitle{font-size:11px;color:rgba(255,255,255,0.5);text-align:center;letter-spacing:1px;margin-bottom:18px}
.sub-reason{background:rgba(255,200,0,0.12);border:1.5px solid var(--c3);border-radius:12px;padding:10px 14px;margin-bottom:16px;display:flex;align-items:center;gap:10px;font-size:12px;color:var(--c3);font-weight:600}
.sub-features{margin-bottom:20px}
.sub-feat{display:flex;align-items:center;gap:10px;padding:10px 0;border-bottom:1px solid rgba(255,255,255,0.07)}
.sf-icon{width:36px;height:36px;border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:18px;flex-shrink:0}
.sf-name{font-size:13px;font-weight:700;color:var(--t1)}
.sf-desc{font-size:11px;color:rgba(255,255,255,0.45);margin-top:1px}
.sf-check{margin-left:auto;font-size:16px;color:#4CAF50}
.plan-row{display:flex;gap:8px;margin-bottom:18px}
.plan-card{flex:1;border-radius:16px;padding:13px 10px;border:2px solid rgba(255,255,255,0.12);background:rgba(255,255,255,0.05);cursor:pointer;text-align:center;transition:all 0.25s;position:relative}
.plan-card:hover,.plan-card.sel{border-color:var(--c3);background:rgba(255,200,0,0.1)}
.plan-badge{position:absolute;top:-10px;left:50%;transform:translateX(-50%);background:var(--c3);color:#000;font-size:9px;font-weight:800;font-family:'Montserrat',sans-serif;padding:3px 10px;border-radius:20px;letter-spacing:1px;white-space:nowrap}
.plan-price{font-family:'Bungee',cursive;font-size:24px;color:var(--c1);display:block}
.plan-period{font-size:10px;color:rgba(255,255,255,0.45);display:block;margin-top:2px}
.plan-name{font-size:11px;font-weight:700;color:var(--t1);display:block;margin-top:4px}
.sub-cta{width:100%;background:var(--c3);border:2px solid #000;border-radius:16px;padding:14px;font-family:'Bungee',cursive;font-size:20px;color:#000;letter-spacing:2px;cursor:pointer;transition:all 0.3s;box-shadow:0 4px 0 #a07000,0 8px 20px rgba(255,200,0,0.4)}
.sub-cta:hover{transform:translateY(-2px)}
.sub-fine{font-size:9px;color:rgba(255,255,255,0.25);text-align:center;margin-top:10px;letter-spacing:.5px}

/* Limit toast */
.limit-toast{position:fixed;top:50%;left:50%;transform:translate(-50%,-50%) scale(0);z-index:900;background:var(--cbg);border:2.5px solid var(--c3);border-radius:24px;padding:28px 24px;text-align:center;box-shadow:0 0 60px rgba(255,200,0,0.3);transition:transform 0.35s cubic-bezier(0.34,1.56,0.64,1),opacity 0.3s;opacity:0;width:85%;max-width:300px}
.limit-toast.show{transform:translate(-50%,-50%) scale(1);opacity:1}
.limit-toast-icon{font-size:48px;display:block;margin-bottom:10px;animation:crownBounce 1.5s ease-in-out infinite}
.limit-toast-title{font-family:'Bungee',cursive;font-size:20px;color:var(--c3);display:block;margin-bottom:6px;-webkit-text-stroke:1.5px rgba(0,0,0,0.4)}
.limit-toast-text{font-size:12px;color:rgba(255,255,255,0.6);line-height:1.6;margin-bottom:18px}
.limit-toast-upgrade{width:100%;background:var(--c3);border:2px solid #000;border-radius:14px;padding:12px;font-family:'Bungee',cursive;font-size:16px;color:#000;letter-spacing:2px;cursor:pointer;margin-bottom:8px;box-shadow:0 3px 0 #a07000}
.limit-toast-dismiss{background:none;border:none;color:rgba(255,255,255,0.4);font-size:12px;cursor:pointer;font-family:'Montserrat',sans-serif;font-weight:500;padding:6px}

/* Friends overlay */
.friends-overlay{position:fixed;inset:0;background:rgba(0,0,0,0.7);z-index:600;display:none;align-items:flex-end}
.friends-overlay.open{display:flex}
.friends-sheet{width:100%;background:var(--cbg);border-top:2px solid var(--b1);border-radius:28px 28px 0 0;padding:20px;max-height:75%;overflow-y:auto}
.fs-head{display:flex;align-items:center;justify-content:space-between;margin-bottom:16px}
.fs-title{font-family:'Bungee',cursive;font-size:24px;color:var(--c1);-webkit-text-stroke:2px rgba(0,0,0,0.4);text-shadow:3px 3px 0 rgba(0,0,0,0.3)}
.fs-close{background:rgba(255,255,255,0.08);border:1px solid var(--b1);border-radius:8px;padding:6px 10px;cursor:pointer;color:var(--c1);font-size:14px}
.sub-tabs-row{display:flex;gap:3px;background:rgba(255,255,255,0.05);border:1.5px solid var(--b1);border-radius:12px;padding:3px;margin-bottom:14px}
.stab{flex:1;padding:7px;border-radius:9px;border:none;background:transparent;color:rgba(255,255,255,0.4);font-family:'Montserrat',sans-serif;font-size:10px;font-weight:700;cursor:pointer;transition:all 0.2s}
.stab.on{background:var(--c2);color:var(--c1)}
.friend-row{display:flex;align-items:center;gap:11px;background:rgba(255,255,255,0.04);border:1.5px solid var(--b1);border-radius:13px;padding:11px;margin-bottom:8px}
.fr-av{width:38px;height:38px;border-radius:50%;background:var(--c2);border:2px solid var(--c1);display:flex;align-items:center;justify-content:center;font-family:'Bungee',cursive;font-size:16px;color:var(--c1);flex-shrink:0}
.fr-name{font-size:13px;font-weight:700;color:var(--c1)}
.fr-sub{font-size:11px;color:rgba(255,255,255,0.38);margin-top:1px}
.add-btn{background:var(--c2);border:1px solid var(--c1);border-radius:9px;padding:6px 12px;color:var(--c1);font-size:11px;font-weight:700;font-family:'Montserrat',sans-serif;cursor:pointer;margin-left:auto;flex-shrink:0;transition:all 0.2s}
.add-btn.added{background:rgba(255,255,255,0.08);color:rgba(255,255,255,0.4);border-color:rgba(255,255,255,0.15)}

/* Emoji picker */
.picker-overlay{position:fixed;inset:0;background:rgba(0,0,0,0.7);z-index:700;display:none;align-items:flex-end}
.picker-overlay.open{display:flex}
.picker-sheet{width:100%;height:360px;background:var(--cbg);border-top:2px solid var(--b1);border-radius:24px 24px 0 0;display:flex;flex-direction:column;overflow:hidden}
.pck-head{display:flex;align-items:center;justify-content:space-between;padding:12px 16px 8px;border-bottom:1px solid rgba(255,255,255,0.08)}
.pck-title{font-family:'Bungee',cursive;font-size:16px;color:var(--c1);letter-spacing:1px}
.pck-close{background:rgba(255,255,255,0.08);border:1px solid var(--b1);border-radius:8px;padding:5px 9px;cursor:pointer;color:var(--c1);font-size:14px}
.pck-cats{display:flex;gap:6px;padding:8px 12px;overflow-x:auto;scrollbar-width:none;flex-shrink:0}
.pck-cats::-webkit-scrollbar{display:none}
.cat-btn{padding:5px 11px;border-radius:20px;border:1.5px solid rgba(255,255,255,0.18);background:transparent;color:rgba(255,255,255,0.45);font-size:11px;font-family:'Montserrat',sans-serif;font-weight:700;cursor:pointer;white-space:nowrap;transition:all 0.2s}
.cat-btn.on{background:var(--c2);border-color:var(--c1);color:var(--c1)}
.pck-body{flex:1;overflow-y:auto;padding:6px;scrollbar-width:none}
.pck-body::-webkit-scrollbar{display:none}
.eg{display:flex;flex-wrap:wrap}
.eb{width:12.5%;aspect-ratio:1;display:flex;align-items:center;justify-content:center;font-size:23px;cursor:pointer;border-radius:8px;transition:background 0.15s}
.eb:hover{background:rgba(255,255,255,0.1)}

/* Chat */
.chat-head{text-align:center;padding:calc(48px + var(--safe-top)) 16px 10px;flex-shrink:0}
.screen-title{font-family:'Bungee',cursive;font-size:32px;color:var(--c1);-webkit-text-stroke:2.5px rgba(0,0,0,0.5);text-shadow:3px 3px 0 rgba(0,0,0,0.4);display:block;letter-spacing:2px}
.e2e{display:flex;align-items:center;justify-content:center;gap:4px;font-size:10px;color:rgba(255,255,255,0.38);letter-spacing:1px;margin-top:3px}
.chat-list{flex:1;overflow-y:auto;padding:0 14px 100px;scrollbar-width:none}
.chat-list::-webkit-scrollbar{display:none}
.chat-row{display:flex;align-items:center;gap:11px;background:rgba(255,255,255,0.04);border:1.5px solid var(--b1);border-radius:13px;padding:12px;margin-bottom:9px;cursor:pointer;transition:all 0.2s}
.chat-row:hover{background:rgba(255,255,255,0.09)}
.cr-av{width:42px;height:42px;border-radius:50%;background:var(--c2);border:2px solid var(--c1);display:flex;align-items:center;justify-content:center;font-size:18px;flex-shrink:0}
.cr-name{font-size:14px;font-weight:700;color:var(--c1)}
.cr-sub{font-size:11px;color:rgba(255,255,255,0.38);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:180px}
.online-dot{width:8px;height:8px;border-radius:50%;background:#4CAF50;flex-shrink:0;margin-left:auto;box-shadow:0 0 6px #4CAF50}

/* Chat view */
.chat-view{position:fixed;inset:0;z-index:500;background:linear-gradient(145deg,var(--bg0),var(--bg1));display:none;flex-direction:column}
.chat-view.open{display:flex}
.cv-head{display:flex;align-items:center;gap:10px;padding:calc(12px + var(--safe-top)) 14px 10px;border-bottom:1px solid rgba(255,255,255,0.1);flex-shrink:0}
.cv-back{background:none;border:none;color:var(--c1);font-size:22px;cursor:pointer;padding:4px}
.cv-name{font-family:'Bungee',cursive;font-size:18px;color:var(--c1)}
.cv-online{font-size:10px;color:#4CAF50;margin-left:2px}
.cv-msgs{flex:1;overflow-y:auto;padding:14px;display:flex;flex-direction:column;gap:8px;scrollbar-width:none}
.cv-msgs::-webkit-scrollbar{display:none}
.msg{max-width:80%;padding:10px 14px;border-radius:18px;font-size:13px;line-height:1.5;animation:msgIn 0.3s ease}
@keyframes msgIn{from{opacity:0;transform:translateY(8px)}to{opacity:1;transform:translateY(0)}}
.msg.them{background:rgba(255,255,255,0.08);border:1px solid var(--b1);align-self:flex-start;color:var(--t1);border-bottom-left-radius:4px}
.msg.me{background:var(--c2);border:1px solid var(--c1);align-self:flex-end;color:var(--c1);border-bottom-right-radius:4px}
.cv-input-row{display:flex;gap:8px;padding:12px 14px calc(12px + var(--safe-bot));border-top:1px solid rgba(255,255,255,0.1);flex-shrink:0}
.cv-input{flex:1;background:rgba(255,255,255,0.06);border:1.5px solid var(--b1);border-radius:20px;padding:10px 16px;color:var(--t1);font-family:'Montserrat',sans-serif;font-size:13px;outline:none}
.cv-input::placeholder{color:rgba(255,255,255,0.22)}
.cv-send{width:40px;height:40px;background:var(--c2);border:1px solid var(--c1);border-radius:50%;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:16px;flex-shrink:0;transition:filter 0.2s}
.cv-send:hover{filter:brightness(1.3)}

/* Profile */
.prof-head{text-align:center;padding:calc(44px + var(--safe-top)) 16px 8px;flex-shrink:0}
.prof-scroll{flex:1;overflow-y:auto;padding:0 15px 100px;scrollbar-width:none}
.prof-scroll::-webkit-scrollbar{display:none}
.prof-card{background:var(--cbg);border-radius:22px;border:2.5px solid var(--b1);padding:22px;display:flex;flex-direction:column;align-items:center;margin-bottom:14px;box-shadow:0 0 30px var(--g1);animation:glowP 3s ease-in-out infinite}
@keyframes glowP{0%,100%{box-shadow:0 0 15px var(--g1)}50%{box-shadow:0 0 35px var(--g1),0 0 60px var(--g2)}}
.prof-av-wrap{position:relative;cursor:pointer}
.prof-av{width:86px;height:86px;border-radius:50%;border:3px solid var(--c1);overflow:hidden;background:#1a0033}
.cam-badge{position:absolute;bottom:0;right:0;width:26px;height:26px;background:var(--c2);border:2px solid var(--c1);border-radius:50%;display:flex;align-items:center;justify-content:center;font-size:12px}
.p-name{font-size:20px;font-weight:700;color:var(--c1);margin-top:10px}
.p-handle{font-size:13px;color:var(--c2);margin-bottom:10px}
.stats-row{display:flex;justify-content:space-around;width:100%;border-top:1px solid rgba(255,255,255,0.1);border-bottom:1px solid rgba(255,255,255,0.1);padding:10px 0;margin-bottom:12px}
.stat{text-align:center}
.stat-n{font-size:20px;font-weight:700;color:var(--c1)}
.stat-l{font-size:10px;color:rgba(255,255,255,0.38);letter-spacing:1px}
.free-badge{display:flex;align-items:center;gap:6px;background:rgba(255,255,255,0.06);border:1.5px solid rgba(255,255,255,0.2);border-radius:20px;padding:5px 14px;margin-bottom:12px;font-size:11px;font-weight:700;color:rgba(255,255,255,0.5);font-family:'Montserrat',sans-serif;cursor:pointer}
.free-badge:hover{border-color:var(--c3);color:var(--c3)}
.pro-badge{display:flex;align-items:center;gap:6px;background:rgba(255,200,0,0.15);border:1.5px solid var(--c3);border-radius:20px;padding:5px 14px;margin-bottom:12px;font-size:11px;font-weight:700;color:var(--c3);font-family:'Montserrat',sans-serif;cursor:pointer}
.logout-btn{display:flex;align-items:center;gap:8px;background:rgba(255,255,255,0.06);border:1.5px solid rgba(255,255,255,0.15);border-radius:12px;padding:10px 20px;color:rgba(255,255,255,0.6);font-family:'Montserrat',sans-serif;font-weight:700;font-size:13px;cursor:pointer;transition:all 0.2s}
.logout-btn:hover{border-color:var(--c1);color:var(--c1)}

/* DM Toast */
.dm-toast{position:fixed;top:20%;left:50%;transform:translateX(-50%) scale(0);background:var(--cbg);border:2px solid var(--c4);border-radius:18px;padding:14px 22px;z-index:850;text-align:center;transition:transform 0.3s cubic-bezier(0.34,1.56,0.64,1);box-shadow:0 0 40px rgba(0,255,208,0.3);white-space:nowrap}
.dm-toast.show{transform:translateX(-50%) scale(1)}

/* Notif */
.notif-dot{position:absolute;top:4px;right:4px;width:9px;height:9px;background:#FF6B9D;border-radius:50%;border:2px solid rgba(0,0,0,0.6);animation:pulse 1.5s ease-in-out infinite}
@keyframes pulse{0%,100%{transform:scale(1)}50%{transform:scale(1.3)}}

/* Confetti */
.confetti-piece{position:fixed;pointer-events:none;z-index:1000;border-radius:3px;animation:confettiFall 1.2s ease-out forwards}
@keyframes confettiFall{0%{transform:translateY(0) rotate(0);opacity:1}100%{transform:translateY(300px) rotate(720deg);opacity:0}}
</style>
</head>
<body>

<!-- AUTH SCREEN -->
<div id="authScreen">
  <div class="auth-logo">YAP</div>
  <div class="auth-sub">★ SPEAK YOUR MIND ★</div>
  <div class="auth-card">
    <div class="auth-tabs">
      <button class="auth-tab on" onclick="authTab(0)">Sign In</button>
      <button class="auth-tab" onclick="authTab(1)">Sign Up</button>
    </div>
    <div id="authPane0">
      <input class="auth-input" id="loginEmail" placeholder="Email" type="email"/>
      <input class="auth-input" id="loginPass" placeholder="Password" type="password" onkeydown="if(event.key==='Enter')doLogin()"/>
      <div class="auth-error" id="loginErr"></div>
      <button class="auth-btn" onclick="doLogin()">★ SIGN IN ★</button>
    </div>
    <div id="authPane1" style="display:none">
      <input class="auth-input" id="regName" placeholder="Display name"/>
      <input class="auth-input" id="regEmail" placeholder="Email" type="email"/>
      <input class="auth-input" id="regHandle" placeholder="@handle"/>
      <input class="auth-input" id="regPass" placeholder="Password" type="password"/>
      <div class="auth-error" id="regErr"></div>
      <button class="auth-btn" onclick="doRegister()">★ CREATE ACCOUNT ★</button>
    </div>
    <div class="auth-divider">OR CONTINUE WITH</div>
    <div class="social-row">
      <button class="social-btn" onclick="socialAuth('google')">🔵 Google</button>
      <button class="social-btn" onclick="socialAuth('apple')">🍎 Apple</button>
    </div>
  </div>
</div>

<!-- APP -->
<div id="app" class="hidden">
  <div id="particles"></div>

  <!-- FEED -->
  <div class="screen active" id="screenFeed">
    <button class="plus-btn" onclick="openFriends()" title="Find friends">+</button>
    <div class="theme-bar" id="themebar"></div>
    <div class="feed" id="feedEl">
      <div class="page" id="heroPage">
        <div class="title-wrap">
          <span class="yap-title">YAP</span>
          <span class="title-star ts1">✦</span>
          <span class="title-star ts2">✦</span>
          <span class="title-star ts3">✧</span>
        </div>
        <div class="yap-sub">★ SPEAK YOUR MIND ★</div>
        <div class="compose-card" style="margin-top:20px">
          <div class="compose-row">
            <textarea class="compose-ta" id="composeText" placeholder="What's on your mind right now? Don't hold back..." maxlength="280" oninput="updateChar()"></textarea>
            <div class="feel-box">
              <div class="feel-lbl">FEELING</div>
              <button class="feel-emoji-btn" onclick="openPicker()" id="feelEmojiBtn">😶</button>
              <input class="feel-in" id="feelText" placeholder="vibes..." maxlength="20"/>
              <div style="font-size:8px;color:rgba(255,255,255,0.3);text-align:center">tap emoji</div>
            </div>
          </div>
          <div class="char-counter"><span id="charCount">0</span>/280</div>
          <button class="yap-btn" onclick="postYap()">✦ YAP IT ✦</button>
          <div class="upload-lock" onclick="openSub('upload photos & videos')">
            <span style="font-size:18px">📸</span>
            <span class="ul-text">Add photo / video</span>
            <span class="ul-badge">PRO</span>
          </div>
        </div>
        <div class="scroll-hint">
          <span>SCROLL FOR YAPS</span>
          <span class="arr">↓</span>
        </div>
      </div>
    </div>
  </div>

  <!-- CHAT -->
  <div class="screen" id="screenChat">
    <div class="chat-head">
      <span class="screen-title">DMs</span>
      <div class="e2e">🔒 end-to-end encrypted</div>
    </div>
    <div class="chat-list" id="chatList"></div>
  </div>

  <!-- PROFILE -->
  <div class="screen" id="screenProfile">
    <div class="prof-head"><span class="screen-title">PROFILE</span></div>
    <div class="prof-scroll">
      <div class="prof-card">
        <div class="prof-av-wrap" onclick="changeAvatar()">
          <div class="prof-av">
            <div id="profAvatarInitials" style="width:100%;height:100%;display:flex;align-items:center;justify-content:center;font-family:'Bungee',cursive;font-size:32px;color:var(--c1);background:var(--c2)">Y</div>
          </div>
          <div class="cam-badge">📷</div>
        </div>
        <input type="file" id="avatarFileInput" accept="image/*" style="display:none" onchange="handleAvatarUpload(event)"/>
        <div style="font-size:9px;color:rgba(255,255,255,0.3);letter-spacing:1px;margin-top:5px">TAP TO CHANGE</div>
        <div class="p-name" id="profName">YAPper</div>
        <div class="p-handle" id="profHandle">@yapper</div>
        <div class="stats-row">
          <div class="stat"><div class="stat-n" id="statYaps">0</div><div class="stat-l">YAPS</div></div>
          <div class="stat"><div class="stat-n" id="statFriends">3</div><div class="stat-l">FRIENDS</div></div>
        </div>
        <div id="planBadge" class="free-badge" onclick="openSub('unlock YAP PRO')"><span>✦</span> FREE PLAN · UPGRADE TO PRO</div>
        <button class="logout-btn" onclick="doLogout()">🚪 Sign Out</button>
      </div>
      <div style="font-family:'Bungee',cursive;font-size:16px;color:var(--c1);margin-bottom:12px;-webkit-text-stroke:1px rgba(0,0,0,0.4)">✦ MY YAPS</div>
      <div id="myYapsPreview"></div>
      <div id="myYapsEmpty" style="font-size:11px;color:rgba(255,255,255,0.3);text-align:center;line-height:1.6;margin-top:10px">Post your first YAP to see it here!</div>
    </div>
  </div>

  <!-- TAB BAR -->
  <div class="tabbar-wrap">
    <div class="tabbar">
      <button class="tab-btn active" id="tab0" onclick="goTab(0)">🏠</button>
      <button class="tab-btn" id="tab1" onclick="goTab(1)" style="position:relative">💬<div class="notif-dot" style="display:none" id="chatNotif"></div></button>
      <button class="tab-btn" id="tab2" onclick="goTab(2)">👤</button>
    </div>
  </div>
</div>

<!-- Comments Drawer -->
<div class="cmts-overlay-bg" id="cmtsOverlay" onclick="closeCmts()"></div>
<div class="cmts-drawer" id="cmtsDrawer">
  <div class="cmts-head">
    <span class="cmts-title">COMMENTS</span>
    <button class="cmts-close" onclick="closeCmts()">✕</button>
  </div>
  <div class="cmts-input-row">
    <input class="cmts-in" id="cmtsInput" placeholder="Add a comment..." onkeydown="if(event.key==='Enter')sendComment()"/>
    <div class="cmts-send" onclick="sendComment()">✦</div>
  </div>
  <div id="cmtsList"></div>
</div>

<!-- Emoji Picker -->
<div class="picker-overlay" id="pickerOverlay" onclick="if(event.target===this)closePicker()">
  <div class="picker-sheet">
    <div class="pck-head">
      <span class="pck-title">PICK A VIBE ✦</span>
      <button class="pck-close" onclick="closePicker()">✕</button>
    </div>
    <div class="pck-cats" id="pickerCats"></div>
    <div class="pck-body"><div class="eg" id="pickerGrid"></div></div>
  </div>
</div>

<!-- Friends Overlay -->
<div class="friends-overlay" id="friendsOverlay" onclick="if(event.target===this)closeFriends()">
  <div class="friends-sheet">
    <div class="fs-head">
      <span class="fs-title">FIND FRIENDS ✦</span>
      <button class="fs-close" onclick="closeFriends()">✕</button>
    </div>
    <div class="sub-tabs-row">
      <button class="stab on" onclick="friendsTab(0,this)">Suggested</button>
      <button class="stab" onclick="friendsTab(1,this)">My Friends</button>
      <button class="stab" onclick="friendsTab(2,this)">Contacts</button>
    </div>
    <div id="friendsList"></div>
  </div>
</div>

<!-- Sub Sheet -->
<div class="sub-overlay" id="subOverlay" onclick="if(event.target===this)closeSub()">
  <div class="sub-sheet">
    <button class="sub-close" onclick="closeSub()">✕ Close</button>
    <span class="sub-crown">👑</span>
    <span class="sub-title">YAP PRO</span>
    <div class="sub-subtitle">UNLIMITED YAPPING · ZERO LIMITS</div>
    <div class="sub-reason"><span style="font-size:20px;flex-shrink:0">🚀</span><span id="subReasonText">Unlock everything and express yourself fully.</span></div>
    <div class="sub-features">
      <div class="sub-feat"><div class="sf-icon" style="background:rgba(255,133,200,0.15)">📸</div><div><div class="sf-name">Photos & Videos</div><div class="sf-desc">Share moments, not just words</div></div><div class="sf-check">✓</div></div>
      <div class="sub-feat"><div class="sf-icon" style="background:rgba(200,0,255,0.15)">∞</div><div><div class="sf-name">Unlimited Posts</div><div class="sf-desc">No daily limit, YAP forever</div></div><div class="sf-check">✓</div></div>
      <div class="sub-feat"><div class="sf-icon" style="background:rgba(255,215,0,0.15)">👑</div><div><div class="sf-name">PRO Badge</div><div class="sf-desc">Gold crown on your profile</div></div><div class="sf-check">✓</div></div>
      <div class="sub-feat"><div class="sf-icon" style="background:rgba(0,255,208,0.15)">🎨</div><div><div class="sf-name">Custom Themes</div><div class="sf-desc">Exclusive color palettes</div></div><div class="sf-check">✓</div></div>
      <div class="sub-feat"><div class="sf-icon" style="background:rgba(255,107,157,0.15)">❌</div><div><div class="sf-name">Ad-Free</div><div class="sf-desc">No ads, ever</div></div><div class="sf-check">✓</div></div>
    </div>
    <div class="plan-row">
      <div class="plan-card" onclick="selectPlan(this,'monthly')"><span class="plan-price">$3.99</span><span class="plan-period">/ month</span><span class="plan-name">Monthly</span></div>
      <div class="plan-card sel" onclick="selectPlan(this,'yearly')"><span class="plan-badge">BEST VALUE</span><span class="plan-price">$29.99</span><span class="plan-period">/ year</span><span class="plan-name">Yearly · Save 37%</span></div>
    </div>
    <button class="sub-cta" onclick="subscribePro()">✦ GET YAP PRO ✦</button>
    <div class="sub-fine">Cancel anytime · Billed by the App Store · Terms apply</div>
  </div>
</div>

<!-- Limit Toast -->
<div class="limit-toast" id="limitToast">
  <span class="limit-toast-icon">👑</span>
  <span class="limit-toast-title">DAILY LIMIT HIT!</span>
  <p class="limit-toast-text">Free accounts get <strong>3 Yaps</strong> per day.<br>Upgrade to PRO for unlimited posting!</p>
  <button class="limit-toast-upgrade" onclick="hideLimitToast();openSub('unlimited posts')">✦ UPGRADE TO PRO ✦</button>
  <button class="limit-toast-dismiss" onclick="hideLimitToast()">Maybe later</button>
</div>

<!-- DM Toast -->
<div class="dm-toast" id="dmToast">
  <div id="dmToastText" style="font-size:14px;font-weight:700;color:var(--c4);font-family:'Montserrat',sans-serif">📬 DM sent!</div>
</div>

<!-- Chat View -->
<div class="chat-view" id="chatView">
  <div class="cv-head">
    <button class="cv-back" onclick="closeChatView()">←</button>
    <div class="cr-av" id="cvAvatar">?</div>
    <div>
      <div class="cv-name" id="cvName">Friend</div>
      <div class="cv-online" id="cvOnline">● online</div>
    </div>
  </div>
  <div class="cv-msgs" id="cvMsgs"></div>
  <div class="cv-input-row">
    <input class="cv-input" id="cvInput" placeholder="Type something..." onkeydown="if(event.key==='Enter')sendChatMsg()"/>
    <div class="cv-send" onclick="sendChatMsg()">✦</div>
  </div>
</div>

<script>
const SUPABASE_URL='https://cjgzlubvneorecmpdpqk.supabase.co';
const SUPABASE_ANON_KEY='sb_publishable_uIBBP8WaAdh_GM_kBfxnng_j8sORclM';
const sb=supabase.createClient(SUPABASE_URL,SUPABASE_ANON_KEY);

const STATE={session:null,profile:null,posts:[],myLikes:new Set(),currentCommentPost:null,currentChatPartner:null,friendIds:new Set(),feedChannel:null,chatChannel:null,inboxChannel:null};
const FREE_POST_LIMIT=3;

const THEMES=[
  {dots:['#FF85C8','#C800FF','#FFD700'],vars:{'--c1':'#FF85C8','--c2':'#C800FF','--c3':'#FFD700','--c4':'#00FFD0','--bg0':'#180018','--bg1':'#2e0048','--bg2':'#3d0060','--bg3':'#120015'}},
  {dots:['#00D4FF','#0066FF','#00FFB0'],vars:{'--c1':'#00D4FF','--c2':'#0066FF','--c3':'#00FFB0','--c4':'#FF6B9D','--bg0':'#000d20','--bg1':'#001840','--bg2':'#002255','--bg3':'#000810'}},
  {dots:['#FF9A56','#FF3366','#FFD700'],vars:{'--c1':'#FF9A56','--c2':'#FF3366','--c3':'#FFD700','--c4':'#00FFD0','--bg0':'#200008','--bg1':'#3a0010','--bg2':'#550018','--bg3':'#150005'}},
  {dots:['#7DFF8A','#00CC44','#FFE44D'],vars:{'--c1':'#7DFF8A','--c2':'#00CC44','--c3':'#FFE44D','--c4':'#FF6B9D','--bg0':'#001400','--bg1':'#002800','--bg2':'#003800','--bg3':'#000d00'}},
  {dots:['#AAAAAA','#666666','#FFFFFF'],vars:{'--c1':'#CCCCCC','--c2':'#888888','--c3':'#FFFFFF','--c4':'#AAFFFF','--bg0':'#060606','--bg1':'#111111','--bg2':'#1a1a1a','--bg3':'#030303'}},
];

const EMOJI_CATS={
  'Faces':['😀','😂','🥹','😍','🤩','😎','🥳','😴','😤','😡','🥺','😭','😱','🤯','😈','🫠','🤭','😶‍🌫️','🤪','😏','🙃','😬','🫣','😮','🤔','😒','🙄','😔','😪','😋'],
  'Hearts':['❤️','🧡','💛','💚','💙','💜','🖤','🤍','💖','💗','💓','💞','💕','❣️','💔','❤️‍🔥','💝','🩷','🩵','🩶'],
  'Vibes':['✨','⚡','🌙','⭐','🌟','💫','🔥','🌈','🌊','🍀','🌸','🌺','🦋','☁️','🎆','🎇','🌠','🌀','💥','🎵'],
  'Moods':['😩','🛋️','🎧','😤','🥱','😮‍💨','🫠','🤡','💀','🫶','🤞','✌️','🤙','👏','🙌','💅','🫰','🥸','🤠','🤑'],
  'Food':['🍕','🍔','🌮','🍜','🧁','🍩','🍦','🧃','☕','🧋','🍓','🍉','🥑','🍟','🍿','🧇','🥞','🍪','🍫','🌯'],
};

function esc(s){return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;')}
function timeAgo(ts){const s=Math.floor((Date.now()-new Date(ts).getTime())/1000);if(s<60)return'just now';if(s<3600)return Math.floor(s/60)+'m ago';if(s<86400)return Math.floor(s/3600)+'h ago';return Math.floor(s/86400)+'d ago'}
function isToday(ts){const d=new Date(ts),n=new Date();return d.toDateString()===n.toDateString()}
function avatarHTML(p){return p&&p.avatar_url?`<img src="${p.avatar_url}" style="width:100%;height:100%;object-fit:cover;border-radius:50%">`:esc(((p&&p.display_name)||'?').charAt(0).toUpperCase())}

// AUTH
function authTab(i){
  document.querySelectorAll('.auth-tab').forEach((t,j)=>t.classList.toggle('on',j===i));
  document.getElementById('authPane0').style.display=i===0?'block':'none';
  document.getElementById('authPane1').style.display=i===1?'block':'none';
}
async function doLogin(){
  const email=document.getElementById('loginEmail').value.trim();
  const pass=document.getElementById('loginPass').value;
  const err=document.getElementById('loginErr');
  if(!email||!pass){err.textContent='Please fill in all fields.';return;}
  err.textContent='Signing in...';
  const {error}=await sb.auth.signInWithPassword({email,password:pass});
  err.textContent=error?error.message:'';
}
async function doRegister(){
  const name=document.getElementById('regName').value.trim();
  const email=document.getElementById('regEmail').value.trim();
  const handleRaw=document.getElementById('regHandle').value.trim();
  const pass=document.getElementById('regPass').value;
  const err=document.getElementById('regErr');
  if(!name||!email||!pass){err.textContent='Please fill in all fields.';return;}
  if(pass.length<6){err.textContent='Password must be 6+ characters.';return;}
  const handle=(handleRaw?handleRaw.replace(/^@/,''):name).toLowerCase().replace(/[^a-z0-9_]/g,'')||'yapper'+Math.floor(Math.random()*10000);
  err.textContent='Creating account...';
  const {data,error}=await sb.auth.signUp({email,password:pass,options:{data:{display_name:name,handle}}});
  if(error){err.textContent=error.message;return;}
  if(data.user){
    const {error:profErr}=await sb.from('profiles').insert({id:data.user.id,handle,display_name:name});
    if(profErr&&profErr.code!=='23505'){err.textContent=profErr.message;return;}
  }
  err.textContent=data.session?'':'Check your email to confirm your account, then sign in.';
}
async function socialAuth(provider){
  const {error}=await sb.auth.signInWithOAuth({provider});
  if(error)showDMToast('⚠️ '+error.message);
}
async function doLogout(){
  await sb.auth.signOut();
  STATE.posts=[];STATE.myLikes=new Set();STATE.friendIds=new Set();STATE.profile=null;
  if(STATE.feedChannel){sb.removeChannel(STATE.feedChannel);STATE.feedChannel=null;}
  if(STATE.chatChannel){sb.removeChannel(STATE.chatChannel);STATE.chatChannel=null;}
  if(STATE.inboxChannel){sb.removeChannel(STATE.inboxChannel);STATE.inboxChannel=null;}
  document.getElementById('loginEmail').value='';document.getElementById('loginPass').value='';
}

sb.auth.onAuthStateChange(async (event,session)=>{
  STATE.session=session;
  if(session){
    await loadProfile();
    document.getElementById('authScreen').classList.add('hidden');
    document.getElementById('app').classList.remove('hidden');
    await initApp();
  } else {
    document.getElementById('app').classList.add('hidden');
    document.getElementById('authScreen').classList.remove('hidden');
  }
});

async function loadProfile(){
  const uid=STATE.session.user.id;
  let {data}=await sb.from('profiles').select('*').eq('id',uid).single();
  if(!data){
    const meta=STATE.session.user.user_metadata||{};
    const display_name=meta.display_name||meta.full_name||STATE.session.user.email.split('@')[0];
    const handle=(meta.handle||display_name).toLowerCase().replace(/[^a-z0-9_]/g,'')||'yapper'+uid.slice(0,6);
    const ins=await sb.from('profiles').insert({id:uid,handle,display_name}).select().single();
    data=ins.data;
  }
  STATE.profile=data;
}

// INIT
async function initApp(){
  buildThemebar();buildParticles();
  await loadFeed();
  await loadFriendIds();
  await buildChatList();
  updateProfile();
  buildFriendsList(0);
  goTab(0);
  subscribeFeed();
  subscribeInbox();
}
function updateProfile(){
  if(!STATE.profile)return;
  document.getElementById('profName').textContent=STATE.profile.display_name;
  document.getElementById('profHandle').textContent='@'+STATE.profile.handle;
  const avWrap=document.querySelector('.prof-av');
  const initEl=document.getElementById('profAvatarInitials');
  if(STATE.profile.avatar_url){
    avWrap.style.backgroundImage=`url('${STATE.profile.avatar_url}')`;avWrap.style.backgroundSize='cover';avWrap.style.backgroundPosition='center';initEl.textContent='';
  }else{
    avWrap.style.backgroundImage='';initEl.textContent=STATE.profile.display_name.charAt(0).toUpperCase();
  }
  document.getElementById('statYaps').textContent=STATE.posts.filter(p=>p.author_id===STATE.profile.id).length;
  document.getElementById('statFriends').textContent=STATE.friendIds.size;
  const pb=document.getElementById('planBadge');
  pb.className=STATE.profile.is_pro?'pro-badge':'free-badge';
  pb.innerHTML=STATE.profile.is_pro?'<span>👑</span> YAP PRO · ACTIVE':'<span>✦</span> FREE PLAN · UPGRADE TO PRO';
  document.getElementById('myYapsEmpty').style.display=STATE.posts.filter(p=>p.author_id===STATE.profile.id).length?'none':'block';
  updateMyYapsPreview();
}

// PARTICLES
function buildParticles(){
  const el=document.getElementById('particles');el.innerHTML='';
  ['✦','★','✧','·','◆','✦','★','✧','◇','✦','★','✧'].forEach((s,i)=>{
    const p=document.createElement('div');p.className='particle';p.textContent=s;
    p.style.cssText=`left:${5+i*8}%;top:${10+i*7}%;font-size:${10+Math.random()*14}px;color:var(--c${(i%3)+1});animation-delay:${i*0.3}s;animation-duration:${2.5+Math.random()*2}s`;
    el.appendChild(p);
  });
}

// THEMES
function buildThemebar(){
  const bar=document.getElementById('themebar');bar.innerHTML='';
  THEMES.forEach((t,i)=>{
    const d=document.createElement('div');d.className='tdot'+(i===0?' on':'');
    d.style.background=`linear-gradient(135deg,${t.dots[0]},${t.dots[1]})`;
    d.onclick=()=>applyTheme(i,d);bar.appendChild(d);
  });
}
function applyTheme(i,dot){
  document.querySelectorAll('.tdot').forEach(d=>d.classList.remove('on'));dot.classList.add('on');
  const t=THEMES[i],r=document.documentElement;
  Object.entries(t.vars).forEach(([k,v])=>r.style.setProperty(k,v));
  r.style.setProperty('--b1',t.vars['--c1']);
  r.style.setProperty('--b2',t.vars['--c2']);
  r.style.setProperty('--b3',t.vars['--c3']);
  r.style.setProperty('--sh',t.vars['--c2']);
  r.style.setProperty('--g1',hexRgba(t.vars['--c1'],0.4));r.style.setProperty('--g2',hexRgba(t.vars['--c2'],0.35));
}
function hexRgba(h,a){const r=parseInt(h.slice(1,3),16),g=parseInt(h.slice(3,5),16),b=parseInt(h.slice(5,7),16);return`rgba(${r},${g},${b},${a})`}

// TABS
function goTab(i){
  ['screenFeed','screenChat','screenProfile'].forEach((s,j)=>{
    document.getElementById(s).classList.toggle('active',j===i);
    document.getElementById('tab'+j).classList.toggle('active',j===i);
  });
  if(i===2)updateProfile();
  if(i===1)document.getElementById('chatNotif').style.display='none';
}

// COMPOSE
function updateChar(){document.getElementById('charCount').textContent=document.getElementById('composeText').value.length}
async function postYap(){
  const textEl=document.getElementById('composeText');
  const text=textEl.value.trim();
  if(!text){textEl.style.border='2px solid #FF4570';setTimeout(()=>{textEl.style.border=''},1000);return;}
  const todayCount=STATE.posts.filter(p=>p.author_id===STATE.profile.id&&isToday(p.created_at)).length;
  if(!STATE.profile.is_pro&&todayCount>=FREE_POST_LIMIT){showLimitToast();return;}
  const emoji=document.getElementById('feelEmojiBtn').textContent;
  const feelTxt=document.getElementById('feelText').value||'';
  const {error}=await sb.from('posts').insert({author_id:STATE.profile.id,text,feel_emoji:emoji,feel_text:feelTxt});
  if(error){showDMToast('⚠️ Could not post: '+error.message);return;}
  textEl.value='';document.getElementById('feelEmojiBtn').textContent='😶';document.getElementById('feelText').value='';document.getElementById('charCount').textContent='0';
  spawnConfetti();
  setTimeout(()=>{const p=document.querySelectorAll('.page');if(p[1])p[1].scrollIntoView({behavior:'smooth'})},100);
}

// POSTS
async function loadFeed(){
  const {data,error}=await sb.from('posts').select('*, profiles!posts_author_id_fkey(id,handle,display_name,avatar_url)').order('created_at',{ascending:false}).limit(50);
  if(error){console.error(error);return;}
  STATE.posts=data||[];
  if(STATE.profile&&STATE.posts.length){
    const ids=STATE.posts.map(p=>p.id);
    const {data:likes}=await sb.from('likes').select('post_id').eq('user_id',STATE.profile.id).in('post_id',ids);
    STATE.myLikes=new Set((likes||[]).map(l=>l.post_id));
  }
  renderPosts();
}
function subscribeFeed(){
  STATE.feedChannel=sb.channel('public:posts')
    .on('postgres_changes',{event:'INSERT',schema:'public',table:'posts'},payload=>{
      if(STATE.posts.find(p=>p.id===payload.new.id))return;
      sb.from('profiles').select('id,handle,display_name,avatar_url').eq('id',payload.new.author_id).single().then(({data:prof})=>{
        STATE.posts.unshift({...payload.new,profiles:prof});
        renderPosts();
      });
    })
    .subscribe();
}
function renderPosts(){
  const feed=document.getElementById('feedEl');
  feed.querySelectorAll('.post-page').forEach(el=>el.remove());
  STATE.posts.forEach((p,idx)=>{
    const page=document.createElement('div');page.className='page post-page';
    const author=p.profiles||{};
    const liked=STATE.myLikes.has(p.id);
    page.innerHTML=`
      <div class="yap-card-outer">
        <div class="yap-author">
          <div class="yap-av">${avatarHTML(author)}</div>
          <div><div class="yap-uname">${esc(author.display_name||'YAPper')}</div><div class="yap-handle">@${esc(author.handle||'')}</div></div>
          <div class="yap-time">${timeAgo(p.created_at)}</div>
        </div>
        <div class="yap-body">
          <div class="yap-content">${esc(p.text)}</div>
          <div class="post-feel"><div class="pf-label">FEELING</div><div class="pf-emoji">${p.feel_emoji||'😶'}</div>${p.feel_text?`<div class="pf-text">${esc(p.feel_text)}</div>`:''}</div>
        </div>
        <div class="yap-actions">
          <button class="act heart-act${liked?' liked':''}" onclick="likePost('${p.id}',this)"><span class="hi">${liked?'❤️':'🤍'}</span><span class="lcount">${p.like_count||0}</span></button>
          <button class="act cmnt-act" onclick="openCmts('${p.id}')"><span>💬</span><span>${p.comment_count||0}</span></button>
          <button class="act dm-act" onclick="sendDM('${author.id||p.author_id}','${esc((author.display_name||'').replace(/'/g,"\\'"))}')"><span>📬</span><span style="font-size:11px">DM</span></button>
        </div>
      </div>
      ${!(STATE.profile&&STATE.profile.is_pro)&&idx===1?`<div class="ad-strip"><span style="font-size:8px;letter-spacing:2px;color:rgba(255,255,255,0.25);font-weight:700">AD</span><span style="flex:1;padding:0 10px">🛍️ Discover stuff you'll actually want</span><span class="ad-remove" onclick="openSub('remove ads')">Remove ads →</span></div>`:''}
    `;
    feed.appendChild(page);
  });
  updateMyYapsPreview();
}
async function likePost(id,btn){
  if(!STATE.profile)return;
  const post=STATE.posts.find(p=>p.id===id);if(!post)return;
  const liked=STATE.myLikes.has(id);
  const hi=btn.querySelector('.hi');
  if(liked){
    STATE.myLikes.delete(id);post.like_count=Math.max((post.like_count||1)-1,0);
    sb.from('likes').delete().eq('post_id',id).eq('user_id',STATE.profile.id).then();
  }else{
    STATE.myLikes.add(id);post.like_count=(post.like_count||0)+1;
    sb.from('likes').insert({post_id:id,user_id:STATE.profile.id}).then();
  }
  hi.textContent=STATE.myLikes.has(id)?'❤️':'🤍';btn.querySelector('.lcount').textContent=post.like_count;
  btn.classList.toggle('liked',STATE.myLikes.has(id));
  if(STATE.myLikes.has(id)){hi.style.animation='none';requestAnimationFrame(()=>{hi.style.animation='heartPop 0.4s cubic-bezier(0.34,1.56,0.64,1)'})}
}
function sendDM(authorId,name){
  if(!authorId||!STATE.profile||authorId===STATE.profile.id)return;
  openChatWith(authorId,name);
}
function updateMyYapsPreview(){
  const own=STATE.posts.filter(p=>STATE.profile&&p.author_id===STATE.profile.id);
  const el=document.getElementById('myYapsPreview');
  if(!own.length){el.innerHTML='';return;}
  el.innerHTML=own.slice(0,3).map(p=>`
    <div style="background:rgba(255,255,255,0.04);border:1.5px solid var(--b1);border-radius:14px;padding:12px;margin-bottom:8px">
      <div style="font-size:13px;color:var(--t1);margin-bottom:6px">${p.feel_emoji||''} ${esc(p.text.substring(0,80)+(p.text.length>80?'...':''))}</div>
      <div style="font-size:11px;color:var(--c2)">❤️ ${p.like_count||0} · 💬 ${p.comment_count||0} · ${timeAgo(p.created_at)}</div>
    </div>
  `).join('');
}

// COMMENTS
async function openCmts(postId){
  STATE.currentCommentPost=postId;
  document.getElementById('cmtsList').innerHTML='<div style="text-align:center;padding:16px;font-size:12px;color:rgba(255,255,255,0.3)">Loading...</div>';
  document.getElementById('cmtsDrawer').classList.add('open');
  document.getElementById('cmtsOverlay').classList.add('open');
  const {data}=await sb.from('comments').select('*, profiles!comments_author_id_fkey(display_name)').eq('post_id',postId).order('created_at',{ascending:true});
  const cmts=data||[];
  document.getElementById('cmtsList').innerHTML=cmts.length?cmts.map(c=>`<div class="comment-item"><div class="ci-name">${esc(c.profiles?.display_name||'YAPper')}</div><div class="ci-text">${esc(c.text)}</div></div>`).join(''):'<div style="text-align:center;color:rgba(255,255,255,0.3);font-size:12px;padding:16px">No comments yet. Be first! ✦</div>';
  setTimeout(()=>document.getElementById('cmtsInput').focus(),200);
}
function closeCmts(){document.getElementById('cmtsDrawer').classList.remove('open');document.getElementById('cmtsOverlay').classList.remove('open')}
async function sendComment(){
  const inp=document.getElementById('cmtsInput'),text=inp.value.trim();
  if(!text||!STATE.currentCommentPost||!STATE.profile)return;
  inp.value='';
  const {error}=await sb.from('comments').insert({post_id:STATE.currentCommentPost,author_id:STATE.profile.id,text});
  if(error){showDMToast('⚠️ '+error.message);return;}
  const post=STATE.posts.find(p=>p.id===STATE.currentCommentPost);if(post)post.comment_count=(post.comment_count||0)+1;
  openCmts(STATE.currentCommentPost);renderPosts();
}

// EMOJI PICKER
function openPicker(){
  document.getElementById('pickerOverlay').classList.add('open');
  const cats=document.getElementById('pickerCats');
  cats.innerHTML=Object.keys(EMOJI_CATS).map((c,i)=>`<button class="cat-btn${i===0?' on':''}" onclick="loadCat('${c}',this)">${c}</button>`).join('');
  loadCat(Object.keys(EMOJI_CATS)[0]);
}
function closePicker(){document.getElementById('pickerOverlay').classList.remove('open')}
function loadCat(cat,btn){
  document.querySelectorAll('.cat-btn').forEach(b=>b.classList.remove('on'));
  if(btn)btn.classList.add('on');else document.querySelector('.cat-btn')?.classList.add('on');
  document.getElementById('pickerGrid').innerHTML=(EMOJI_CATS[cat]||[]).map(e=>`<div class="eb" onclick="pickEmoji('${e}')">${e}</div>`).join('');
}
function pickEmoji(e){document.getElementById('feelEmojiBtn').textContent=e;closePicker()}

// FRIENDS
async function loadFriendIds(){
  if(!STATE.profile)return;
  const {data}=await sb.from('friendships').select('friend_id').eq('user_id',STATE.profile.id);
  STATE.friendIds=new Set((data||[]).map(f=>f.friend_id));
}
function openFriends(){document.getElementById('friendsOverlay').classList.add('open');buildFriendsList(0)}
function closeFriends(){document.getElementById('friendsOverlay').classList.remove('open')}
function friendsTab(i,el){document.querySelectorAll('.stab').forEach(b=>b.classList.remove('on'));el.classList.add('on');buildFriendsList(i)}
async function buildFriendsList(tab){
  const el=document.getElementById('friendsList');
  if(!STATE.profile)return;
  el.innerHTML='<div style="text-align:center;padding:16px;font-size:12px;color:rgba(255,255,255,0.3)">Loading...</div>';
  if(tab===0){
    const excludeIds=[STATE.profile.id,...STATE.friendIds];
    let q=sb.from('profiles').select('id,handle,display_name,avatar_url').limit(20);
    excludeIds.forEach(id=>{q=q.neq('id',id)});
    const {data}=await q;
    const list=data||[];
    el.innerHTML=list.length?list.map(f=>`
      <div class="friend-row">
        <div class="fr-av">${avatarHTML(f)}</div>
        <div><div class="fr-name">${esc(f.display_name)}</div><div class="fr-sub">@${esc(f.handle)}</div></div>
        <button class="add-btn" onclick="addFriend('${f.id}',this)">+ Add</button>
      </div>`).join(''):'<div style="text-align:center;color:rgba(255,255,255,0.3);padding:24px;font-size:13px">No new people to suggest right now. ✦</div>';
  }else if(tab===1){
    if(!STATE.friendIds.size){el.innerHTML='<div style="text-align:center;color:rgba(255,255,255,0.3);padding:24px;font-size:13px">No friends yet! Add some from Suggested. ✦</div>';return;}
    const {data}=await sb.from('profiles').select('id,handle,display_name,avatar_url').in('id',[...STATE.friendIds]);
    el.innerHTML=(data||[]).map(f=>`
      <div class="friend-row">
        <div class="fr-av">${avatarHTML(f)}</div>
        <div><div class="fr-name">${esc(f.display_name)}</div><div class="fr-sub">@${esc(f.handle)}</div></div>
        <button class="add-btn" onclick="openChatWith('${f.id}','${esc(f.display_name.replace(/'/g,"\\'"))}');closeFriends()">💬 DM</button>
      </div>`).join('');
  }else{
    el.innerHTML=`<div style="background:rgba(255,255,255,0.04);border:2px solid var(--b1);border-radius:18px;padding:22px;text-align:center">
      <div style="font-family:'Bungee',cursive;font-size:20px;color:var(--c1);margin-bottom:8px">FIND YOUR PEOPLE ✦</div>
      <p style="font-size:11px;color:rgba(255,255,255,0.45);line-height:1.6;margin-bottom:16px">Allow access to your contacts to see which of your friends are already on YAP.</p>
      <button style="background:var(--c2);border:2px solid var(--c1);border-radius:12px;padding:11px 20px;color:var(--c1);font-family:'Montserrat',sans-serif;font-weight:700;font-size:13px;cursor:pointer;width:100%" onclick="closeFriends();showDMToast('📱 Contacts sync coming soon!')">📱 Sync Contacts</button>
    </div>`;
  }
}
async function addFriend(id,btn){
  if(STATE.friendIds.has(id)){
    STATE.friendIds.delete(id);
    await sb.from('friendships').delete().eq('user_id',STATE.profile.id).eq('friend_id',id);
  }else{
    STATE.friendIds.add(id);
    await sb.from('friendships').insert({user_id:STATE.profile.id,friend_id:id});
  }
  btn.textContent=STATE.friendIds.has(id)?'✓ Added':'+ Add';
  btn.classList.toggle('added',STATE.friendIds.has(id));
  document.getElementById('statFriends').textContent=STATE.friendIds.size;
}

// CHAT
async function buildChatList(){
  if(!STATE.profile)return;
  const myId=STATE.profile.id;
  const {data}=await sb.from('messages').select('*').or(`sender_id.eq.${myId},recipient_id.eq.${myId}`).order('created_at',{ascending:false});
  const msgs=data||[];
  const convMap=new Map();
  msgs.forEach(m=>{const partner=m.sender_id===myId?m.recipient_id:m.sender_id;if(!convMap.has(partner))convMap.set(partner,m);});
  const partnerIds=[...convMap.keys()];
  if(!partnerIds.length){document.getElementById('chatList').innerHTML='<div style="text-align:center;color:rgba(255,255,255,0.3);padding:24px;font-size:13px">No DMs yet. Add friends and say hi! ✦</div>';return;}
  const {data:profs}=await sb.from('profiles').select('id,handle,display_name,avatar_url').in('id',partnerIds);
  const profMap=new Map((profs||[]).map(p=>[p.id,p]));
  document.getElementById('chatList').innerHTML=partnerIds.map(pid=>{
    const p=profMap.get(pid)||{display_name:'YAPper',handle:''};
    const last=convMap.get(pid);
    return `<div class="chat-row" onclick="openChatWith('${pid}','${esc(p.display_name.replace(/'/g,"\\'"))}')">
      <div class="cr-av">${avatarHTML(p)}</div>
      <div style="flex:1;min-width:0"><div class="cr-name">${esc(p.display_name)}</div><div class="cr-sub">${esc(last.text)}</div></div>
    </div>`;
  }).join('');
}
async function openChatWith(partnerId,partnerName){
  if(!STATE.profile||!partnerId||partnerId===STATE.profile.id)return;
  STATE.currentChatPartner=partnerId;
  document.getElementById('cvName').textContent=partnerName||'YAPper';
  document.getElementById('cvAvatar').textContent='?';
  document.getElementById('cvOnline').textContent='';
  document.getElementById('chatView').classList.add('open');
  const myId=STATE.profile.id;
  const {data}=await sb.from('messages').select('*').or(`and(sender_id.eq.${myId},recipient_id.eq.${partnerId}),and(sender_id.eq.${partnerId},recipient_id.eq.${myId})`).order('created_at',{ascending:true});
  renderChatMsgs(data||[]);
  subscribeChat(partnerId);
}
function renderChatMsgs(msgs){
  const el=document.getElementById('cvMsgs');
  const myId=STATE.profile?.id;
  el.innerHTML=msgs.map(m=>`<div class="msg ${m.sender_id===myId?'me':'them'}">${esc(m.text)}</div>`).join('');
  el.scrollTop=el.scrollHeight;
}
function closeChatView(){
  document.getElementById('chatView').classList.remove('open');
  if(STATE.chatChannel){sb.removeChannel(STATE.chatChannel);STATE.chatChannel=null;}
  STATE.currentChatPartner=null;
}
function subscribeChat(partnerId){
  if(STATE.chatChannel)sb.removeChannel(STATE.chatChannel);
  const myId=STATE.profile.id;
  STATE.chatChannel=sb.channel('chat:'+[myId,partnerId].sort().join(':'))
    .on('postgres_changes',{event:'INSERT',schema:'public',table:'messages'},payload=>{
      const m=payload.new;
      const involved=(m.sender_id===myId&&m.recipient_id===partnerId)||(m.sender_id===partnerId&&m.recipient_id===myId);
      if(!involved)return;
      if(STATE.currentChatPartner===partnerId){
        const el=document.getElementById('cvMsgs');
        el.insertAdjacentHTML('beforeend',`<div class="msg ${m.sender_id===myId?'me':'them'}">${esc(m.text)}</div>`);
        el.scrollTop=el.scrollHeight;
      }
      buildChatList();
    })
    .subscribe();
}
async function sendChatMsg(){
  const inp=document.getElementById('cvInput'),text=inp.value.trim();
  if(!text||!STATE.currentChatPartner||!STATE.profile)return;
  inp.value='';
  const {error}=await sb.from('messages').insert({sender_id:STATE.profile.id,recipient_id:STATE.currentChatPartner,text});
  if(error)showDMToast('⚠️ '+error.message);
}
function subscribeInbox(){
  const myId=STATE.profile.id;
  STATE.inboxChannel=sb.channel('inbox:'+myId)
    .on('postgres_changes',{event:'INSERT',schema:'public',table:'messages',filter:`recipient_id=eq.${myId}`},payload=>{
      if(STATE.currentChatPartner!==payload.new.sender_id){
        document.getElementById('chatNotif').style.display='block';
      }
      buildChatList();
    })
    .subscribe();
}

// SUB (Stripe wiring is a separate step — see chat)
function openSub(reason){document.getElementById('subReasonText').textContent='Unlock: '+reason;document.getElementById('subOverlay').classList.add('open')}
function closeSub(){document.getElementById('subOverlay').classList.remove('open')}
function selectPlan(card){document.querySelectorAll('.plan-card').forEach(c=>c.classList.remove('sel'));card.classList.add('sel')}
function subscribePro(){
  closeSub();
  showDMToast('💳 Real checkout isn\'t wired up yet — ask me to add Stripe next!');
}

// TOASTS
function showLimitToast(){document.getElementById('limitToast').classList.add('show')}
function hideLimitToast(){document.getElementById('limitToast').classList.remove('show')}
function showDMToast(msg){
  const t=document.getElementById('dmToast');
  document.getElementById('dmToastText').textContent=msg;
  t.classList.add('show');setTimeout(()=>t.classList.remove('show'),2500);
}

// CONFETTI
function spawnConfetti(){
  const colors=['#FF85C8','#C800FF','#FFD700','#00FFD0','#FF6B9D'];
  for(let i=0;i<20;i++){
    const el=document.createElement('div');el.className='confetti-piece';
    el.style.cssText=`left:${25+Math.random()*50}%;top:${15+Math.random()*30}%;width:${6+Math.random()*8}px;height:${6+Math.random()*8}px;background:${colors[i%colors.length]};animation-delay:${Math.random()*0.4}s;animation-duration:${0.9+Math.random()*0.5}s;border-radius:${Math.random()>0.5?'50%':'3px'}`;
    document.body.appendChild(el);setTimeout(()=>el.remove(),1600);
  }
}

// AVATAR UPLOAD
function changeAvatar(){document.getElementById('avatarFileInput').click()}
async function handleAvatarUpload(e){
  const file=e.target.files[0];if(!file||!STATE.profile)return;
  if(file.size>5*1024*1024){showDMToast('⚠️ Image must be under 5MB');e.target.value='';return;}
  showDMToast('📤 Uploading photo...');
  const ext=(file.name.split('.').pop()||'jpg').toLowerCase();
  const path=`${STATE.profile.id}/avatar.${ext}`;
  const {error:upErr}=await sb.storage.from('yap-media').upload(path,file,{upsert:true});
  if(upErr){showDMToast('⚠️ Upload failed: '+upErr.message);e.target.value='';return;}
  const {data:pub}=sb.storage.from('yap-media').getPublicUrl(path);
  const avatar_url=pub.publicUrl+'?t='+Date.now();
  const {error:updErr}=await sb.from('profiles').update({avatar_url}).eq('id',STATE.profile.id);
  if(updErr){showDMToast('⚠️ '+updErr.message);e.target.value='';return;}
  STATE.profile.avatar_url=avatar_url;
  updateProfile();
  showDMToast('✅ Photo updated!');
  e.target.value='';
}
</script>
</body>
</html>
