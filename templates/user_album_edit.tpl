{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
{include file='header_top.tpl'}


<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?318" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos.css?54"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos_add.css?15"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?28"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9294_0.js"></script><script type="text/javascript" src="http://st1.userapi.com/js/al/common.js?836"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>
<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?24"></link>


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
    <div id="content">
	
<div class="t_bar photos_tabs clear_fix">
  <ul class="t0"><li class="active_link">
  <a href="user_album_edit.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Редактировать альбом</nobr></b>
  </a>
</li><li class="">
  <a href="user_album_update.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Фотографии</nobr></b>
  </a>
</li><li id="photo_add_tab" class="">
<a href="user_album_upload.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Добавление фотографий</nobr></b>
  </a>
</li></ul>
</div>

<form action='user_album_edit.php' method='post'>
<div class="photos_edit_album">
{* SHOW RESULT MESSAGE *}
{if $result != 0}
<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
  Изменения сохранены.
</div>
</div>
{/if}

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
  <div class='error'><img src='./images/error.gif' border='0' class='icon'> {lang_print id=$is_error}</div>
{/if}
<div class="fl_l photos_thumb_edit">
    <div class="photos_thumb_preview fl_r"></div>
    <div class="photos_edit_actions fl_r">

    </div>
  </div>
  
	<div class="fl_l photos_edit_data">
    <div class="photos_edit_header">Название</div>
   <input type="text" class="text photos_edit_title" maxlength="64" id="album_title" name="album_title" value="{$album_info.album_title}" />
   <div class="photos_edit_header">Описание</div>
   <textarea name="album_desc" class="photos_edit_description" id="album_description">{$album_info.album_desc}</textarea>
	<div class="button_blue fl_l"><button id="album_save_button">Сохранить изменения</button></div>
	  <input type='hidden' name='task' value='dosave'>
  <input type='hidden' name='album_id' value='{$album_info.album_id}'>
    <div class="progress fl_l" id="album_save_progress"></div>
  </div>
  <br class="clear" />
</div>
</form>
</div>
</div>
</div>
{include file='footer.tpl'}