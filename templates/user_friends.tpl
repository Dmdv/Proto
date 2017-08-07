{if $ajax}4658<!>upload.js,profile.css,page.css,profile.js,page.js<!>0<!>4250{else}
{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<script type="text/javascript" src="/js/lang0_0.js?5393"></script>
<script type="text/javascript" src="/js/al/common.js"></script>
<script type="text/javascript" src="/js/al/profile.js"></script>
<script type="text/javascript" src="/js/al/page.js"></script>
<script type="text/javascript" src="/js/al/notifier.js"></script>
<link type="text/css" rel="stylesheet" href="/css/al/profile.css?100"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css?190"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?38"></link>

<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/photos.css?53" />
<link rel="stylesheet" type="text/css" href="/css/al/common.css?277" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="/css/al/groups.css?60"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?54"></link><script type="text/javascript" src="/js/loader_nav8121_0.js"></script><script type="text/javascript" src="/js/al/common.js?745"></script><script type="text/javascript" src="/js/lang0_0.js?5891"></script><script type="text/javascript" src="/js/al/groups_list.js?24"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?159"></script>

<link type="text/css" rel="stylesheet" href="/css/al/video.css?57"></link><link type="text/css" rel="stylesheet" href="/css/al/videoview.css?72"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?48"></link><script type="text/javascript" src="/js/lang0_0.js?{$owner->user_info.user_id}15"></script><script type="text/javascript" src="/js/al/video.js?73"></script><script type="text/javascript" src="/js/al/videoview.js?105"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?132"></script>  <div id="stl_left"></div><div id="stl_side"></div>
<link href="/css/al/video_edit.css" rel="stylesheet" type="text/css">
{/if}


<link type="text/css" rel="stylesheet" href="/css/al/friends.css"></link>
<link rel="stylesheet" href="/css_old/friends.css" type="text/css" />
  <script type="text/javascript">domStarted();</script>



<div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="display: none">
            <h1 id="title"></h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content"><div id="friends">
<div class="tabs t_bar clear_fix">
  <ul id="friends_tabs" class="t0">
   <li id="tab_all" class="active_link">
    <a href="/friends"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Все друзья</b>
    </a>
   </li>
      <li id="tab_requests" class="" style="">
    <a href="/user_friends_online.php"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Друзья онлайн<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_requests" class="" style="">
    <a href="/user_friends_requests.php"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Заявки в друзья<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_common" class="" style="display:none;">
    <a href="/friends?section=common" onclick="return checkEvent(event);" onmousedown="return Friends.switchTab('common', event);"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Общие друзья<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_members" class="" style="display: none;">
    <a href="/friends?section=members" onclick="return checkEvent(event);" onmousedown="return Friends.switchTab('members', event);"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word"></b>
    </a>
   </li>
   <li class="t_r"><a href="/search?c[section]=people">Поиск друзей</a></li>
  </ul>
</div>






</div>
<div class="summary_wrap">

  <div class="summary" id="friends_summary">{if $total_friends == 0}У Вас нет друзей.{else}У Вас {$total_friends} {include file='sklonenie_friends.tpl'}{/if}</div>
</div>



</div>
{if $total_friends != 0}
<table id="searchResults" class="mine searchResults peopleResults friendsPage">
<tbody><tr>
<td id="results" class="results friendRows">

 {section name=friend_loop loop=$friends}

  <div class="result clearFix" id="fr_res{$friends[friend_loop]->user_info.user_id}">

<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="108">
 <div class="image">
  <a href="/id{$friends[friend_loop]->user_info.user_id}"><img src="{$friends[friend_loop]->user_photo('./images/camera_a.gif')}" alt="" width="100"/></a>
 </div>
</td><td style="vertical-align: top;" >

 <div class="info">
  <dl class="clearFix">
   <dt>Имя:</dt><a href='/id{$friends[friend_loop]->user_info.user_id}'>{$friends[friend_loop]->user_info.user_fname}  {$friends[friend_loop]->user_info.user_lname}</a></dd>{section name=online_loop loop=$online_users}{if $friends[friend_loop]->user_info.user_username == $online_users[online_loop]}<dt>&nbsp;</dt><dd><span class="bbb">Online</span></dd> </dl>{/if}{/section}
  <div class="friendRowBtns" id="cats{$friends[friend_loop]->user_info.user_id}"></div>
  <div class="friendRowBtns" id="res{$friends[friend_loop]->user_info.user_id}"></div>
 </div>
</td><td style="vertical-align: top;">

  <div class="actions fl_r">
<a onclick="return checkEvent(event) ? true : showWriteMessageBox(event, {$friends[friend_loop]->user_info.user_id})" class="friends_act">Отправить сообщение</a>
  </div>
</td></tr></tbody></table>
</div>
{/section}
  </td>
</td>

{else}
<table id="searchResults" class="mine searchResults peopleResults friendsPage">
<tbody>
<tr>
<td id="results" class="results friendRows">
<div id="noResults">У Вас пока нет друзей.</div>
</td>
{/if}

<td id="right_pane" class="side_filters" >
<!--<div class="blue_button_shadow"><div class="blue_button"><div class="blue_button_body" onmouseover="this.className='blue_button_body_over'" onmouseout="this.className='blue_button_body'" onclick="listEditBox.newList();" >Создать список</div></div></div>-->
<div style="padding: 0px 0px 0px 0px" id="side_filters">
<div id="list_item0" class="side_filter_selected" onmouseover="listOver(this, 0)" onmouseout="listOut(this, 0)" onclick="loadFriends('all', 0)">Все друзья</div>

</div>
</td>

</tr></tbody></table>
<div class="bar clearFix footerBar">


 <div style="display: none;" id="progressTop">
  <img src="images/upload.gif" style="vertical-align: baseline;"/>
 </div>
</div><iframe name="inviter" id="inviter" style="width:1px;height:1px;visibility:hidden;position:absolute;"></iframe>

   </div>
  </div>
  </div>
</aside>
<div id="contentBody">
{include file='footer.tpl'}
