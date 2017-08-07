<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="shortcut icon"  href="/images/faviconnew.ico" />

<meta http-equiv="content-type" content="text/html; charset=windows-1251" />
<meta name="description" content=" " />

<title>U-positive.ru</title>

<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>

{literal}



<script type="text/javascript">
var vk = {
  ad: 1,
  adupd: 120000, // 2 min
  al: parseInt('3') || 4,
  id: 650,
  intnat: '' ? true : false,
  host: 'vceti.org',
  lang: 1,
  rtl: parseInt('') || 0,
  version: 8524,
  stDomains: 3,
  zero: false,
  contlen: 76775,
  loginscheme: 'https',
  ip_h: 'b94fa726946e1135b4',
  vc_h: '2494ab1beeef66db5d53e801e4fd8d3a',
  navPrefix: '/',
  dt: parseInt('') || 0,
  fs: parseInt('11') || 11,
  time: [2012, 3, 22, 21, 8]
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
  'common.js' : {v: 788},
  'common.css': {v: 294},
  'ie6.css'   : {v: 22},
  'ie7.css'   : {v: 16}
  ,'lang1_0.js':{v:2432},'profile.css':{v:145},'page.css':{v:309},'notifier.css':{v:55}
}

</script>




{/literal}

<link rel="stylesheet" type="text/css" href="/css/al/common.css?294" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->

<link type="text/css" rel="stylesheet" href="/css/al/profile.css?145"></link>
<link type="text/css" rel="stylesheet" href="/css/al/page.css?309"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?55"></link>

<script type="text/javascript" src="/js_old/loader_nav8524_1.js"></script>
<script type="text/javascript" src="/js_old/common1.js?788"></script>

<script type="text/javascript" src="/js_old/lang1_0.js?2432"></script>




</head>

<body onresize="onBodyResize()" class="is_rtl font_default">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>
  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>
<div id="greenBar" class="day"  ></div>
  <div class="scroll_fix_wrap" id="page_wrap">
<div><div class="scroll_fix">
<div id="page_layout" >
    <div id="page_header" class="p_head p_head_l1"  >
      <div class="back"></div>
      <div class="left"></div>
      <div class="right"></div>
      <div class="content">

<div id="top_nav" class="head_nav">
  <table cellspacing="0" cellpadding="0" id="top_links" style="margin-right: 10px;">
    <tr>
 <td class="top_home_link_td">

        <div id="top_logo_down"></div>
        <a class="top_home_link" href="/index.php"></a>
      </td>
      <td class="top_back_link_td"><a class="top_nav_link fl_l" href="" id="top_back_link" onclick="if (nav.go(this, event, {literal}{back: true}) === false) { hide(this); TopSearch.toggleTsWrap(true); return false; }{/literal}"></a></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_people" href="/search?c[section]=people">люди</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_communities" href="/search?c[section]=communities" >сообщества</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_games" href="/search?c[section]=video" >видео</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_music" href="/search?c[section]=audio" >музыка</a>
      </nobr></td>
      <td id="logout_link_td"><nobr>
        <a class="top_nav_link" id="logout_link" href="user_logout.php?token={$token}" >выйти</a>
      </nobr></td>
    </tr>
  </table>
  <div id="ts_wrap" class="clear_fix">
    <div id="ts_input_wrap" class="ts_input_wrap fl_r" onmouseover="TopSearch.highlightInput(true); TopSearch.initFriendsList();" onmouseout="TopSearch.highlightInput(false)">
      <div class="ts" onmousedown="event.cancelBubble = true;">
        <div class="ts_input_wrap2"><div>
		<form method="POST" action="al_search.php?c[section]=people" name="qsearch">
          <input type="text" class="text" id="ts_input"  placeholder="Поиск" />
		  </form>
        </div></div>
      </div>
    </div>
    <div id="ts_friends_online" class="ta_r"></div>
  </div>
  <span style="display: none" id="top_new_msg"></span>
</div>
<div id="ts_cont_wrap" ontouchstart="event.cancelBubble = true;" onmousedown="event.cancelBubble = true;"></div>
      </div>
    </div>

<div id="side_bar" class="fl_l" style="">
	<ol id='nav'>
	<div id="menu">
{if $user->user_exists != 0}

{if $user->user_info.profile != 0}<li id="myprofile" class="clear_fix"><a href="/user_editprofile.php"  class="edit fl_r">ред.</a><a href="/id{$user->user_info.user_id}" class="hasedit fl_l">Моя Страница</a></li>{else}{/if}

{if $user->user_info.friends != 0}<li id="l_fr"><a {if $total_friend_requests == 0}href="/friends"{else}href="/user_friends_requests.php"{/if} class="left_row"> <span class="left_label inl_bl">Мои Друзья</span>{if $total_friend_requests > 0}<span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$total_friend_requests}</span></span>{/if}</a></li>{else}{/if}

{if $user->user_info.photos != 0}<li id="l_ph"><a href="/albums{$user->user_info.user_id}" >Мои Фотографии<span></span></a></li>{else}{/if}

{if $user->user_info.video != 0}<li id="l_vid"><a href="/video{$user->user_info.user_id}" >Мои Видеозаписи <span></span></a></li>{else}{/if}

{if $user->user_info.audio != 0}<li><a href="/audio{$user->user_info.user_id}"  >Мои Аудиозаписи<span></span></a></li>{else}{/if}

{if $user->user_info.mail != 0}<li id="l_msg"><a href="/mail"  class="left_row"><span class="left_label inl_bl">Мои Сообщения</span>{if $user_unread_pms != 0}<span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$user_unread_pms}</span></span>{/if}</a></li>{else}{/if}

{if $user->user_info.groups != 0}<li id="l_gr"><a href="/user_group.php"  >Мои Группы<span></span></a></li>{else}{/if}

	<li id="l_set"><a href="/settings.php"  >Мои Настройки <span></span></a></li>
	<li id="l_spr" class="kr" ><a href="/support"  onclick="return !showPages('support?act=vse&jax=ajaxframe');" class="left_row"><span class="left_label inl_bl">Тех. Поддержка</span><span class="left_count_wrap inl_bl">{if $user->user_info.total_support == '0' }{else}<span class="inl_bl left_count" >{$user->user_info.total_support}</span>{/if}</span></a></li>
</div>

</ol>

<div class="left_box" style="" id='left_balance_box'>
 <div id='coins_left'>У Вас <b>{$user->user_info.user_points}</b> голосов.</div><br />
 <a href='/payments.php?act=sms' onclick="return getVotes(-1)">Пополнить баланс &raquo;</a>
</div>
<div class="left_box" style="display: none" id="left_money_box">
 <div></div><br />

</div>

<div style="position: static; opacity: 1; left: 0px; top: 0px; display: block;">
{section name=say_loop loop=$says}
<div class="more_div">
</div>
<a id="ad_box_ad_1" class="ad_box_new" target="_blank" style="">
<div id="left_hide_ad_1" class="left_hide_new" style="opacity: 0;"></div>
<div id="ad_title" class="ad_title_new">Хочу общаться!</div>
<div class="ad_domain_new"></div>
<span>
<div style="position: relative;">
<img width="100" src="{$says[say_loop].user->user_photo("./images/question_b.gif")}" />
<div class="ads_play_btn " style="display: none;"></div>
</div>
</span>
<div id="ad_desc" class="ad_desc_new" style="">{$says[say_loop].user->user_info.user_fname} {$says[say_loop].user->user_info.user_lname}</div>
</a>
<div id="ad_help_link" class="ad_help_link">
<a href="/user_account_other.php">Как сюда попасть?</a>
</div>
{/section}

</div>

</div>
{else}

<li id="l_fr"><a href="/index.php" class="left_row"> <span class="left_label inl_bl">Главная</span></a></li>

<li id="l_ph"><a href="login.php" >Вход<span></span></a></li>

<li id="l_vid"><a href="/signup.php" >Регистрация<span></span></a></li>

</ol>

</div>
{/if}
