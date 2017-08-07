{include file='header.tpl'}
<link rel='stylesheet' href='{$filedata}css/dialog2.css' type='text/css' />
<link rel='stylesheet' href='{$filedata}css/search.css' type='text/css' />
<link rel='stylesheet' href='{$filedata}css/photos.css' type='text/css' />
<link rel='stylesheet' href='{$filedata}css/nopadding.css' type='text/css' />  
<link rel="stylesheet" href="{$filedata}templates/styles_album.css" title="stylesheet" type="text/css">  
<div id="pageBody" class="pageBody">

  <div id="wrapH">
  <div id="wrapHI">
   <div id="header">
    <h1>{if $gid == 0}<a href='{$url->url_create('profile', $owner->user_info.user_id)}'>{$owner->user_info.user_firstname} {$owner->user_info.user_username} {$owner->user_info.user_lastname}</a>{else}<a href='club{$group->group_info.group_id}'>{$group->group_info.group_title}</a>{/if}  &#187; ְכüבמלû</h1>
   </div>
  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">
<div class="bar clearFix summaryBar">

<div id="message" style="margin: 10px 50px 17px 74px; color: rgb(0, 0, 0); font-weight: normal; text-align: center; width: 435px;">ֲûבונטעו אכüבמל ס פמעמדנאפטוי הכÿ סעוםû {if $gid == 0}<a style="color: rgb(136, 117, 28);" href="id{$owner->user_info.user_id}">{$owner->user_info.user_lastname} {$owner->user_info.user_username} {$owner->user_info.user_firstname}</a>{else}<a style="color: rgb(136, 117, 28);" href='club{$group->group_info.group_id}'>{$group->group_info.group_title}</a>{/if}.</div>


 <div class="summary"><span class="notbold"><b>{$total_albums} אכüבמלמג
</span></div>
</div>

 <div id="searchResults" class="searchResults clearFix">
  <div class="column results">
	<div id="albums">
   
{* SHOW NO ALBUMS NOTICE *}
{if $total_albums == 0}
  <table cellpadding='0' cellspacing='0'>
  <tr><td class='result'>
    <img src='./images/icons/bulb22.gif' border='0' class='icon'>
    {$albums3}
  </td></tr>
  </table>
{/if}

{* LOOP THROUGH ALBUMS *}
{section name=album_loop loop=$albums}

  {* SET ALBUM COVER *}
  {if $albums[album_loop].album_cover_id == 0}
    {assign var='album_cover_src' value='./images/icons/folder_big.gif'}
  {else}
    {* IF IMAGE, GET THUMBNAIL *}
    {if $albums[album_loop].album_cover_ext == "jpeg" OR $albums[album_loop].album_cover_ext == "jpg" OR $albums[album_loop].album_cover_ext == "gif" OR $albums[album_loop].album_cover_ext == "png" OR $albums[album_loop].album_cover_ext == "bmp"}
      {assign var='album_cover_dir' value=$url->url_userdir($user->user_info.user_id)}
      {assign var='album_cover_src' value="`$album_cover_dir``$albums[album_loop].album_cover_id`_thumb.jpg"}
    {* SET THUMB PATH FOR AUDIO *}
    {elseif $albums[album_loop].album_cover_ext == "mp3" OR $albums[album_loop].album_cover_ext == "mp4" OR $albums[album_loop].album_cover_ext == "wav"}
      {assign var='album_cover_src' value='./images/icons/audio_big.gif'}
    {* SET THUMB PATH FOR VIDEO *}
    {elseif $albums[album_loop].album_cover_ext == "mpeg" OR $albums[album_loop].album_cover_ext == "mpg" OR $albums[album_loop].album_cover_ext == "mpa" OR $albums[album_loop].album_cover_ext == "avi" OR $albums[album_loop].album_cover_ext == "swf" OR $albums[album_loop].album_cover_ext == "mov" OR $albums[album_loop].album_cover_ext == "ram" OR $albums[album_loop].album_cover_ext == "rm"}
      {assign var='album_cover_src' value='./images/icons/video_big.gif'}
    {* SET THUMB PATH FOR UNKNOWN *}
    {else}
      {assign var='album_cover_src' value='./images/icons/file_big.gif'}
    {/if}
  {/if}

  {* SET ALBUM TITLE *}
  {if $albums[album_loop].album_title != ""}
    {assign var="album_title" value=$albums[album_loop].album_title}
  {else}
    {assign var="album_title" value=$albums4}
  {/if}

  {if $smarty.section.album_loop.index != 0}<div class='album_bar'></div>{/if}
  <div class="result clearFix">

 <table cellpadding=0 cellspacing=0 border=0>
  <tr>
   <td width="145px" style='vertical-align: top;cursor:default' nosorthandle="1">
    <div class="aimage">
     <a href='photos.php?act=wall_album&album_id={$albums[album_loop].album_id}&{if $gid == 0}id={$owner->user_info.user_id}{else}gid={$gid}{/if}'><img src='{$album_cover_src}' border='0' width='120'></a>
    </div>
   </td>
   <td width="400px" style="vertical-align:top;">
    <div style="padding-top:5px">
     <div class="aname"><a href='photos.php?act=wall_album&album_id={$albums[album_loop].album_id}&{if $gid == 0}id={$owner->user_info.user_id}{else}gid={$gid}{/if}'>{$album_title}</a></div>
     <div class="ainfo">{if $albums[album_loop].album_dateupdated != 0}<br>{$albums5} {$datetime->time_since($albums[album_loop].album_dateupdated)}{/if}
   </div>
     <div class="adesc">{$albums[album_loop].album_desc}</div>
    </div>
   </td>
  </tr>
 </table>

  </div>
{/section}
</div></div></div></div></div></div>
{include file='footer.tpl'}