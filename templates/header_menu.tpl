<script type="text/javascript" src="/js/lang0_0.js?5393"></script>
<script type="text/javascript" src="/js/al/common.js"></script>
<script type="text/javascript" src="/js/al/profile.js"></script>
<script type="text/javascript" src="/js/al/page.js"></script>
<script type="text/javascript" src="/js/al/notifier.js"></script>
<link type="text/css" rel="stylesheet" href="/css/al/profile.css?100"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css?190"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?38"></link>
<link rel="stylesheet" type="text/css" href="/css/al/common.css?310" />
<link type="text/css" rel="stylesheet" href="/css/al/join.css?53"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?28"></link>
<link type="text/css" rel="stylesheet" href="/css/al/tooltips.css?59"></link>
<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?24"></link>


{literal}<style>
#page_layout {width: 791px;}
#page_body {width: 631px;}
#footer_wrap {width: 661px;}
</style>{/literal}


<div id="side_bar" class="fl_l" style="">
	<ol id='nav'>
	<div id="menu">
{if $user->user_exists != 0}

{if $user->user_info.profile != 0}<li id="myprofile" class="clear_fix"><a href="/edit"  class="edit fl_r">ред.</a><a href="/id{$user->user_info.user_id}" class="hasedit fl_l">Моя Страница</a></li>{else}{/if}

{if $user->user_info.friends != 0}<li id="l_fr"><a {if $total_friend_requests == 0}href="/friends"{else}href="/user_friends_requests.php"{/if} class="left_row"> <span class="left_label inl_bl">Мои Друзья</span>{if $total_friend_requests > 0}<span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$total_friend_requests}</span></span>{/if}</a></li>{else}{/if}

{if $user->user_info.photos != 0}<li id="l_ph"><a href="/albums{$user->user_info.user_id}" >Мои Фотографии<span></span></a></li>{else}{/if}

{if $user->user_info.video != 0}<li id="l_vid"><a href="/video{$user->user_info.user_id}" >Мои Видеозаписи <span></span></a></li>{else}{/if}

{if $user->user_info.audio != 0}<li><a href="/audio{$user->user_info.user_id}"  >Мои Аудиозаписи<span></span></a></li>{else}{/if}

{if $user->user_info.mail != 0}<li id="l_msg"><a href="/mail"  class="left_row"><span class="left_label inl_bl">Мои Сообщения</span>{if $user_unread_pms != 0}<span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$user_unread_pms}</span></span>{/if}</a></li>{else}{/if}

{if $user->user_info.groups != 0}<li id="l_gr"><a href="/user_group.php"  >Мои Группы<span></span></a></li>{else}{/if}
	<li id="l_set"><a href="/settings.php"  >Мои Настройки <span></span></a></li>
      	      	<li id="l_set"><a href="/user_home.php">Мой Гороскоп<span></span></a></li>
      	<li id="l_set"><a href="/apps.php"  >Приложения <span></span></a></li>
							 <li id="l_fr"><a class="left_row" href='opinions.php'><span class="left_label inl_bl">Мнения</span>{if $total_my_checkbox != 0} <span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$total_my_checkbox}</span></span>{/if}</a></li>
</div>

</ol>


{if $user->user_exists != 0 }
<div style="width:124px"></div>
{section name=birthday_loop loop=$birthdays max=20}
<div style="width:118px;" class="left_box" style="margin-top:10px;"><h4>День рождения!</h4>
<center><a href='id{$birthdays[birthday_loop].birthday_user_id}'>{$birthdays[birthday_loop].birthday_user_displayname}</a></center></div>
{/section}
{/if}


{if $user->user_exists != 0 AND $news_total > 0}
<div style="width:124px"></div>
{section name=news_loop loop=$news max=1}
<div style="width:118px;" class="left_box" style="margin-top:10px;"><h4>&#1053;&#1086;&#1074;&#1086;&#1089;&#1090;&#1080;</h4>
<center>{$news[news_loop].item_subject}</center>

<a href="/news.php">&#1055;&#1086;&#1076;&#1088;&#1086;&#1073;&#1085;&#1077;&#1077;</a></div>
{/section}
{/if}

<div class="left_box" style="" id='left_balance_box'>
 <div id='coins_left'>У Вас <b>{$user->user_info.user_points}</b> голосов.</div><br />
 <a href='payments.php'>Пополнить баланс &raquo;</a>
</div>
<div class="left_box" style="display: none" id="left_money_box">
 <div></div><br />

</div>



<div style="position: static; opacity: 1; left: 0px; top: 0px; display: block;">
{section name=say_loop loop=$says}
<div class="more_div">
</div>
<a href='id{$says[say_loop].user->user_info.user_id}' id="ad_box_ad_1" class="ad_box_new" target="_blank" style="">
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
<a href="/settings?act=other">Как сюда попасть?</a>
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
<!-- End sideBar -->
