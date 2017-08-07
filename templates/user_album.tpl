{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/photos.css?53" />
<link rel="stylesheet" type="text/css" href="/css/al/common.css?277" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="/css/al/groups.css?60"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?54"></link><script type="text/javascript" src="/js/loader_nav8121_0.js"></script><script type="text/javascript" src="/js/al/common.js?745"></script><script type="text/javascript" src="/js/lang0_0.js?5891"></script><script type="text/javascript" src="/js/al/groups_list.js?24"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?159"></script>

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
    <div id="content"><div class="t_bar clear_fix">
  <ul class="t0"><li class="active_link">
  <a href="/albums{$owner->user_info.user_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Все фотографии</nobr></b>
  </a>
</li><li class="t_r" id="add_album_link"><a href="/user_album_add.php" onclick="return !showBox('al_photos.php', {literal}{act: 'new_album_box'}{/literal});" class="fl_r summary_right">Создать альбом</a></li></ul>
</div><div id="photos_albums">
  
<div class="summary_wrap" style="">
<div class="summary">{if $albums_total > 0}У Вас {$albums_total} альбомов{else}У Вас нет альбомов{/if}</div>
</div>
{if $albums_total == 0}
<div id="photos_albums_container" class="clear_fix">
<div class="photos_no_content"> Вы можете хранить неограниченное количество фотографий на Вашей странице. </div>
{else}
<div id="photos_container" class="clear" style="width: 578px;margin-left: 10px;">

{if $albums_total > 0}
           {section name=album_loop loop=$albums max=5}
		   
		   {if $albums[album_loop].album_cover_id == 0}{assign var='album_cover_src' value='./images/m_noalbum.gif'}{else}{* IF IMAGE, GET THUMBNAIL *}{if $albums[album_loop].album_cover_ext == "jpeg" || $albums[album_loop].album_cover_ext == "jpg" || $albums[album_loop].album_cover_ext == "gif" || $albums[album_loop].album_cover_ext == "png" || $albums[album_loop].album_cover_ext == "bmp"}{assign var='album_cover_dir' value=$url->url_userdir($user->user_info.user_id)}{assign var='album_cover_src' value="`$album_cover_dir``$albums[album_loop].album_cover_id`_thumb.jpg"}{* SET THUMB PATH FOR AUDIO *}{elseif $albums[album_loop].album_cover_ext == "mp3" || $albums[album_loop].album_cover_ext == "mp4" || $albums[album_loop].album_cover_ext == "wav"}{assign var='album_cover_src' value='./images/icons/audio_big.gif'}{* SET THUMB PATH FOR VIDEO *}{elseif $albums[album_loop].album_cover_ext == "mpeg" || $albums[album_loop].album_cover_ext == "mpg" || $albums[album_loop].album_cover_ext == "mpa" || $albums[album_loop].album_cover_ext == "avi" || $albums[album_loop].album_cover_ext == "swf" || $albums[album_loop].album_cover_ext == "mov" || $albums[album_loop].album_cover_ext == "ram" || $albums[album_loop].album_cover_ext == "rm"}{assign var='album_cover_src' value='./images/icons/video_big.gif'}{* SET THUMB PATH FOR UNKNOWN *}{else}{assign var='album_cover_src' value='./images/icons/file_big.gif'}{/if}{/if}
		   <div class="clear_fix album" id="album50_26">

  <div class="fl_l thumb">
  <a href="/album.php?user_id={$user->user_info.user_id}&album_id={$albums[album_loop].album_id}">
      <img src="{$album_cover_src}"nosorthandle="1" width="130"  />
    </a>
  </div>
  <div class="fl_l info_wrap">
    <div class="name"><a class="ge_photos_album" href="/album.php?user_id={$user->user_info.user_id}&album_id={$albums[album_loop].album_id}">{$albums[album_loop].album_title}</a></div>
    <div class="info">{$albums[album_loop].album_files} фотографий</div>
<div class="info">
{assign var='album_dateupdated' value=$datetime->time_since($albums[album_loop].album_dateupdated)}
              Обновлён {lang_sprintf id=$album_dateupdated[0] 1=$album_dateupdated[1]}<br></div>

 <div class="desc">{$albums[album_loop].album_desc}</div>
 {if $owner->user_info.user_id == $user->user_info.user_id}
   <a href="user_album_edit.php?album_id={$albums[album_loop].album_id}">Редактировать</a><span class="divider">|</span><a href="user_album_upload.php?album_id={$albums[album_loop].album_id}">Добавить фотографии</a><span class="divider">|</span><a onclick="photos.deleteAlbum(cur.album, cur.albumhash)" href='/user_album_delete.php?album_id={$albums[album_loop].album_id}'>Удалить</a>
   {/if}
  </div>

</div>


{/section}{else}
{/if}</div>
  <a id="albums_load_more" onclick="photos.loadAlbums()" style="display: none"><span>Показать все 5 альбомов</span>
    <div id="albums_more_progress" class="progress"></div>
  </a>{/if}
  <div class="summary_wrap photos_summary">
  <div class="summary">Последние загруженные фотографии</div>
</div>
<div id="photos_container">
{section name=last_photos_loop loop=5 max=4}
{if $last_photos[last_photos_loop].media_ext == "jpg" OR
              $last_photos[last_photos_loop].media_ext == "jpeg" OR
              $last_photos[last_photos_loop].media_ext == "gif" OR
              $last_photos[last_photos_loop].media_ext == "png" OR
              $last_photos[last_photos_loop].media_ext == "tif" OR
              $last_photos[last_photos_loop].media_ext == "bmp"}
			  <div class="photo_row" id="photo_row40297585_276246095">
<a href="/photo{$owner->user_info.user_id}_{$last_photos[last_photos_loop].media_id}">
  <img src="{$last_photos[last_photos_loop].media_path}" />
</a></div>{/if}{/section}

</div>
</div></div></div></div></div>
{include file='footer.tpl'}


