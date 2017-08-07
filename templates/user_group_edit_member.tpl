{include file='header.tpl'}

<link rel="stylesheet" href="/skin/def/css/rustyle.css" type="text/css" />
<script>var base_domain = '/';
</script><script type="text/javascript" src="/js/common.js"></script>
<link rel="stylesheet" href="/skin/def/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="/skin/def/css/mail2.css" type="text/css" />
<link rel="stylesheet" href="/skin/def/css/search.css" type="text/css" />
<script type="text/javascript" src="/js/photo.js"></script>

<link rel="stylesheet" href="/skin/def/css/photos2.css" type="text/css" />
<script type="text/javascript" src="/js/lang0_1000.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>

<link rel="stylesheet" href="./skin/def/css/friends.css" type="text/css" />

<link rel="stylesheet" href="/skin/def/css/editProfile.css" type="text/css" />
<script type="text/javascript" src="/js/editProfile_oth.js"></script>

<div id="pageBody" class="pageBody">
<div id="wrapH">
<div id="wrapHI">
<div id="header">
<h1>Мои группы</h1>
</div>
</div>
</div>
<div id="wrap2">
<div id="wrap1">
<div id="content">

<div class="tBar clearFix">
<ul id="groups_list_tabs" class="tabs">
<li id="groups_tab_groups" class="">

<a style="width: 7em; padding-top: 0pt;" href='user_group_edit.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Информация
</a>
</li>
<li id="groups_tab_groups" class="">

<a style="width: 7em; padding-top: 0pt;" href='user_group_edit_photo.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Фотография
</a>
</li>
<li class="activeLink" id="groups_tab_groups">
<a style="width: 6em; padding-top: 0pt;" href='user_group_edit_members.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Участники
</a>
</li>
<li id="groups_tab_groups">
<a style="width: 12em; padding-top: 0pt;" href='user_group_edit_files.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Фотографии в группе
</a>
</li>
<li id="groups_tab_groups">
<a style="width: 8em; padding-top: 0pt;" href='user_group_edit_comments.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Стена группы
</a>
</li>
{if $group->user_rank == 2}
<li id="groups_tab_groups">
<a style="width: 9em; padding-top: 0pt;" href='user_group_edit_delete.php?group_id={$group->group_info.group_id}'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
Удалить группу
</a>
</li>{/if}
<li id="groups_tab_groups">
<a style="width: 8em; padding-top: 0pt;" href='user_group.php'>
<b class="niftycorners" style="margin-left: 0px; margin-right: 0px; display: block; margin-bottom: 3px; background: none repeat scroll 0% 0% transparent;">
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 2px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
<b style="display: block; height: 1px; line-height: 1px; font-size: 1px; overflow: hidden; border-style: solid; border-width: 0pt 1px; background-color: transparent; border-color: rgb(255, 255, 255);"></b>
</b>
к Моим группам
</a>
</li>
</ul>
</div>


<div id="editor">
  <div id="messageWrap"></div>

  <div id="general">

</div>
<table id="searchResults" class="mine searchResults peopleResults">
<tbody><tr>
<td id="results" class="results">

<form action='user_group_edit_member.php' name='memberinfo' method='post'>
<div class="row">
      <div class="label">Имя пользователя:</div>
      <div class="labeled"><a href='{$url->url_create('profile', $member_info.user_username)}'>{$member_info.user_username}</a>      </div>
    </div>

{* SHOW MEMBER TITLE FIELD IF ALLOWED BY ADMIN *}
{if $group->groupowner_level_info.level_group_titles == 1}
  <div class="row">
      <div class="label">{$user_group_edit_member12}</div>
      <div class="labeled">
    <input type='text' name='member_title' class='text' size='40' maxlength='50' value='{$member_info.groupmember_title}'>
  </div>
    </div>
{/if}

{* SHOW MEMBER RANK FIELD *}
{if $group->user_rank == 2}
   <div class="row">
      <div class="label">{$user_group_edit_member13}</div>
      <div class="labeled">
    <select name='member_rank' id='member_rank' onChange="showwarning();">
    {if $member_info.groupmember_rank == 2}
      <option value='2'{if $member_info.groupmember_rank == 2} SELECTED{/if}>{$user_group_edit_member14}</option>
    {else}
      <option value='0'{if $member_info.groupmember_rank == 0} SELECTED{/if}>{$user_group_edit_member15}</option>
      {* ONLY SHOW OFFICER OPTION IF ALLOWED BY ADMIN *}
      {if $group->groupowner_level_info.level_group_officers == 1}<option value='1'{if $member_info.groupmember_rank == 1} SELECTED{/if}>{$user_group_edit_member16}</option>{/if}
      <option value='2'{if $member_info.groupmember_rank == 2} SELECTED{/if}>{$user_group_edit_member14}</option>
    {/if}
    </select>
  </div>
    </div>
{/if}

{* SHOW INSTRUCTIONS IF EDITING OWNER *}
{if $member_info.groupmember_rank == 2}
  <div class="row">
      <div class="label">
	  </div>
      <div class="labeled">
	  В настоящее время Вы являетесь Администратором данной группы. Если Вы хотите передать право собственности другому участнику группы, Вы должны найти его в <a href='user_group_edit_members.php?group_id={$group->group_info.group_id}'>Списке</a> и редактировать его статус. Когда Вы сделаете пользователя владельцем группы, Вы сами будете понижены в ранге до участника группы.</div>
</div>
{else}

  {* SHOW WARNING MESSAGE IF USER IS ABOUT TO TRANSFER OWNERSHIP *}
  <tr>
  <td class='form1' width='150'>&nbsp;</td>
  <td class='form2'><div id='warning' class='form_desc' style='display: none;'>{$user_group_edit_member17}</div></td>
  </tr>

{/if}

<br><br><br><br><br><br><br><br></div></div>
    <div id="buttons">
      <ul class="nNav">
        <li style='margin: 0px'>

          <div class="button_green ">
<button id="login_button">Сохранить</button>
</div>
    <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>
    <input type='hidden' name='member_id' value='{$member_info.groupmember_id}'>
    <input type='hidden' name='task' value='dosave'>
        </li>
        
      </ul>
      <div style="float: left"><img src="images/upload.gif" id="save_progress"/></div>
    </div>

    <div style="clear: both; height: 0px; overflow: hidden">&nbsp;</div>
  </div>
</div>

   </div>
  </div>
  </div>
  </div>
  <div id="boxHolder">

{* JAVASCRIPT FOR SHOWING OWNERSHIP TRANSFER WARNING MESSAGE *}
{literal}
<script language='JavaScript'>
<!--
function showwarning() {
  if(document.memberinfo.member_rank.value == '2') {
    document.all.warning.style.display = 'block';
  } else {
    document.all.warning.style.display = 'none';
  }
}
//-->
</script>
{/literal}