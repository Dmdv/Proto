{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
{include file='header_top.tpl'}


<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?318" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos.css?54"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos_add.css?15"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?28"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9294_0.js"></script><script type="text/javascript" src="http://st1.userapi.com/js/al/common.js?836"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>
<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?24"></link>
{literal}
<style>
.video_info_msg {
    color: #777777;
    font-size: 1.09em;
    text-align: center;
}
</style>
{/literal}

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
  <ul class="t0"><li class="">
  <a href="user_album_edit.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Редактировать альбом</nobr></b>
  </a>
</li><li class="active_link">
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


<div id="photos_add_wrap" class="photos_add_wrap photos_add_selected">
<div id="photos_add_cont" class="photos_add_cont">

{if $result != 0 && $files_total > 0}
<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
Изменения сохранены.
</div>
</div>
{/if}

  <form action='user_album_update.php' method='POST'>
  {if $files_total > 0}
        {section name=files_loop loop=$files}
{if $smarty.section.files_loop.first}{assign var='first_media_id' value=$files[files_loop].media_id}{/if}

    {* IF IMAGE, GET THUMBNAIL *}
    {assign var='has_thumb' value='0'}

    {if $files[files_loop].media_ext == "jpeg" || $files[files_loop].media_ext == "jpg" || $files[files_loop].media_ext == "gif" || $files[files_loop].media_ext == "png" || $files[files_loop].media_ext == "bmp"}
      {assign var='file_dir' value=$url->url_userdir($user->user_info.user_id)}
      {assign var='file_src' value="`$file_dir``$files[files_loop].media_id`_thumb.jpg"}
      {assign var='has_thumb' value='1'}
    {* SET THUMB PATH FOR AUDIO *}
    {elseif $files[files_loop].media_ext == "mp3" || $files[files_loop].media_ext == "mp4" || $files[files_loop].media_ext == "wav"}
      {assign var='file_src' value='./images/icons/audio_big.gif'}
    {* SET THUMB PATH FOR VIDEO *}
    {elseif $files[files_loop].media_ext == "mpeg" || $files[files_loop].media_ext == "mpg" || $files[files_loop].media_ext == "mpa" || $files[files_loop].media_ext == "avi" || $files[files_loop].media_ext == "swf" || $files[files_loop].media_ext == "mov" || $files[files_loop].media_ext == "ram" || $files[files_loop].media_ext == "rm"}
      {assign var='file_src' value='./images/icons/video_big.gif'}
    {* SET THUMB PATH FOR UNKNOWN *}
    {else}
      {assign var='file_src' value='./images/icons/file_big.gif'}
    {/if}

<div id="photos_add_list">
<div class="sort_helper" style="width: 605px; height: 132px;"></div>
<div id="photo_edit_row72539830_284852808" class="photos_add_upl_row photos_add_first_child" style="display: block; z-index: 100; left: 12px; top: 0px; width: 603px; position: absolute; cursor: move;">
<table class="photos_add_upl_table">
<tbody>
<tr>
<td class="photos_add_s_thumb">
<div id="photos_add_thumb72539830_284852808" class="photos_add_thumb" onmouseout="PhotosAdd.thumbOut(this);" onmouseover="PhotosAdd.thumbOver(this, '72539830_284852808');">
<a class="photos_add_a_thumb" href='{$url->url_create("album_file", $user->user_info.user_username, $album_info.album_id, $files[files_loop].media_id)}'>
<img pid="{$user->user_info.user_id}_{$files[files_loop].media_id}" src="{$file_src}" class="photos_add_img" align="middle" width='100' id="thumb_{$user->user_info.user_id}_{$files[files_loop].media_id}_img"/>
</a>
<div id="photos_add_controls72539830_284852808" class="photos_add_controls" style="width: 130px; margin-left: 1px; display: block; overflow: hidden; height: 0px; margin-top: 0px;">
<div class="photos_add_c_bar">
<a class="photos_add_rl" onclick="PhotosAdd.rotateAngle('72539830_284852808', 90);"></a>
<a class="photos_add_rr" onclick="PhotosAdd.rotateAngle('72539830_284852808', -90);"></a>
</div>
</div>
</div>
</td>
<td class="photos_add_s_info">
<div class="photos_add_s_header">
<div id="photo_save_result72539830_284852808" class="fl_l">Описание</div>
<div id="photo_save_progress72539830_284852808" class="fl_l photo_save_progress progress"></div>
</div>
<textarea name='media_desc_{$files[files_loop].media_id}' id="photo_caption72539830_284852808" class="photos_add_s_caption" style="overflow-x: hidden; overflow-y: hidden;">{$files[files_loop].media_desc}</textarea>
<div class="photos_add_s_move">
<div id="photo_edit_progress72539830_284852808" class="fl_r progress"></div>
<input class="fl_r" type='checkbox' name='delete[]' id='delete_media_{$files[files_loop].media_id}' value='{$files[files_loop].media_id}'><label for='delete_media_{$files[files_loop].media_id}' class="fl_r" padding-top: 1px;'>Удалить</label>
<div >

<div style='float: left; padding-left: 0px;'><input type='radio' name='album_cover' id='album_cover_{$files[files_loop].media_id}' value='{$files[files_loop].media_id}'{if $album_info.album_cover == $files[files_loop].media_id} checked='checked'{/if}></div>
          <div style='float: left; padding-top: 1px;'><label for='album_cover_{$files[files_loop].media_id}'>Обложка</label></div>
</div>
</div>

<html>
<head>
</head>
<body>
</body>
</html>
</iframe>
</td>
</tr>
</tbody>
</table>
</div>
</div>
{/section}
{else}
<br>
<div id="not_found" class="video_info_msg " style="">
<div class="join_header_wrap">
<span class="video_empty">В альбоме нет фотографий</span>
</div>
</div>
<br>
{/if}
<div>
<div id="photos_go_to_album" class="photos_go_to_album" style="display: block;">
<div class="photos_done_bar_shadow"></div>
<div id="photos_go_to_album_cont" class="photos_go_to_album_cont">
<div class="button_blue">
<button>Сохранить фотографии</button>
</div>
    <input type='hidden' name='task' value='doupdate'>
    <input type='hidden' name='album_id' value='{$album_info.album_id}'>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
{include file='footer.tpl'}