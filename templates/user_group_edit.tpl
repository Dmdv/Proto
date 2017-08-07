{include file='header_top.tpl'}
{include file='header_shapka.tpl'} 
{include file='header_menu.tpl'}

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
    <li class="active_link">
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
    <li class="">
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


{* IF GROUP WAS JUST CREATED, SHOW SUCCESS MESSAGE *}
{if $justadded == 1}
<div id="group_saved_msg" class="msg" style="display: block; background-color: rgb(249, 246, 231);">
<b>Изменения сохранены.</b>
<br>
Основная информация и настройки сообщества сохранены.
</div>
{/if}


{* SHOW RESULT MESSAGE *}
{if $result != 0}
<div id="group_saved_msg" class="msg" style="display: block; background-color: rgb(249, 246, 231);">
<b>Изменения сохранены.</b>
<br>
Основная информация и настройки сообщества сохранены.
</div>
{/if}

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
<div id="group_saved_msg" class="msg" style="display: block; background-color: rgb(249, 246, 231);">
<b>{lang_print id=$is_error}</b>
</div>
{/if}





  
  <form action='user_group_edit.php' method='POST'>

 <div class="group_edit_label fl_l ta_r">Название:</div>
  <div class="group_edit_field fl_l">
<input id="group_edit_name" type='text' class='text' name='group_title' value='{$group->group_info.group_title}' >
</div>
  <br class="clear" />

  <div class="group_edit_label fl_l ta_r">Адрес страницы:</div>
  <div class="group_edit_field fl_l">
    <table id="group_edit_addr_table" cellspacing="0" cellpadding="0">
      <tr>
        <td class="group_edit_addr_label" onclick="elfocus('group_edit_addr', 0, 0)"><nobr>http://vk.com/</nobr></td>
        <td class="group_edit_addr_field"><input id="group_edit_addr" maxlength="32" type="text" class="text group_edit_addr_field" value="club{$group->group_info.group_id}" />
      </tr>
    </table>
  </div>
  <div id="group_edit_about_addr" class="fl_l"></div>
  <br class="clear" />

  <div class="group_edit_label fl_l ta_r">Описание сообщества:</div>
  <div class="group_edit_field fl_l">
  <textarea id="group_edit_desc" name='group_desc'>{$group->group_info.group_desc}</textarea></div>
  <br class="clear" />
  
<div class="group_edit_label fl_l ta_r">&nbsp;</div>
  <div class="button_blue group_save_button fl_l"><button id="group_save">Сохранить</button></div>
    <input type='hidden' name='task' value='dosave'>
  <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>
  <br class="clear" />

</div></div>
  </div>
</div></div>
    </div>


{include file='footer.tpl'}