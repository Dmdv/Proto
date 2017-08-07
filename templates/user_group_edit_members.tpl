{include file='header_top.tpl'}
{include file='header_shapka.tpl'} 
{include file='header_menu.tpl'}


<link rel="stylesheet" href="/skin/def/css/rustyle.css" type="text/css" />
<script>var base_domain = '/';
</script><script type="text/javascript" src="/js/common.js"></script>
<link rel="stylesheet" href="/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="/css/mail2.css" type="text/css" />
<link rel="stylesheet" href="/css/search.css" type="text/css" />

<link rel="stylesheet" href="/css/photos2.css" type="text/css" />

<link rel="stylesheet" href="/css/friends.css" type="text/css" />


<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?320" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/groups_edit.css?20"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?30"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9379_0.js"></script><script type="text/javascript" src="http://st3.userapi.com/js/al/common.js?850"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>

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
    <div id="content"><div class="t_bar clear_fix">
  <ul id="group_edit_filters" class="t0">
    <li class="">
      <a href='user_group_edit.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Информация</b>
      </a>
    </li>
	    <li class="">
      <a href='user_group_edit_photo.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Фотография</b>
      </a>
    </li>
    <li class="active_link">
      <a href='user_group_edit_members.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Участники</b>
      </a>
    </li>
    <li class="">
      <a href='user_group_edit_delete.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Удалить группу</b>
      </a>
    </li>
    <li class="t_r"><a href='club{$group->group_info.group_id}' >Вернуться к сообществу</a></li>
  </ul>
</div>
<div class="group_edit">


<table id="searchResults" class="mine searchResults peopleResults">
<tbody><tr>
<td id="results" class="results">


  {section name=member_loop loop=$members}

<div class="result clearFix" id="fr_res{$friends[friend_loop]->user_info.user_id}">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="108">
 <div class="image">
  <a href='{$url->url_create('profile', $members[member_loop].member->user_info.user_username)}'><img src='{$members[member_loop].member->user_photo('./images/camera_a.gif')}' class='photo' width="100")}' border='0'></a>
 </div>
</td><td style="vertical-align: top;">

 <div class="info">
  <dl class="clearFix">
   <dt>Имя:</dt><dd><a href='{$url->url_create('profile', $members[member_loop].member->user_info.user_username)}'>{$members[member_loop].member->user_info.user_displayname}</a>
   </dd>
		  </dl>
		  </dl>
		  <dl class="clearFix">
   <dt>Статус:</dt><dd>{if $members[member_loop].groupmember_rank == 2}<font color="red">Администратор</font>{elseif $members[member_loop].groupmember_rank == 1}{$user_group_edit_members28}{else}{$user_group_edit_members29}{/if}</dd>
		  </dl>
  <div style="margin: 5px 0px 0px 67px" id="cats1783">
  	  </div>
  <div style="margin: 5px 0px 0px 67px;" id="res1783">


  </div>
 </div>
</td><td style="vertical-align: top;">

  <ul id="nav" style="margin: 0px; overflow: hidden; width: 130px;">
  {if $group->user_rank > $members[member_loop].groupmember_rank OR $group->user_rank == 2}

        {if $members[member_loop].member->user_info.user_id != $user->user_info.user_id}
          <li><a href='user_group_edit_members_remove.php?group_id={$group->group_info.group_id}&member_id={$members[member_loop].groupmember_id}'>{$user_group_edit_members32}</a>
    {/if}
  {/if}
  {if $members[member_loop].member->user_info.user_id != $user->user_info.user_id}
    <li><a href='user_messages_new.php?to={$members[member_loop].member->user_info.user_username}'>{$user_group_edit_members33}</a></li>
  {/if}
	 </ul>
</td></tr></tbody></table>
</div>
  {/section}

</td>

</tr></tbody></table>
<div class="bar clearFix footerBar">
 <div style="display: none;" id="progressTop">
  <img src="images/upload.gif" style="vertical-align: baseline;"/>
 </div>
</div>

   </div>
     </div>

  </div>

  </div>
  <div id="boxHolder"></div>

  {include file='footer.tpl'}
