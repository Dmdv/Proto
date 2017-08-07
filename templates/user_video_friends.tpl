{include file='header.tpl'}

<table class='tabs' cellpadding='0' cellspacing='0'>
<tr>
<td class='tab0'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='user_video.php'>{$user_video_friends1}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='user_video_settings.php'>{$user_video_friends2}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab1' NOWRAP><a href='user_video_friends.php'>{$user_video_friends3}</a></td>
<td class='tab3'>&nbsp;</td>
</tr>
</table>

<table cellpadding='0' cellspacing='0' width='100%'><tr><td class='page'>

<img src='./images/icons/image48.gif' border='0' class='icon_big'>
<div class='page_header'>{$user_video_friends4}</div>
<div>{$user_video_friends5}</div>

<br><br>

{* LOOP THROUGH ALBUMS *}
{section name=album_loop loop=$albums}

  {* SET ALBUM COVER *}
  {assign var='album_cover_src' value='./images/icons/folder_big.gif'}



<div class='album_row'>
<table cellpadding='0' cellspacing='0'>
<tr>
<td valign='top'>
  <table cellpadding='0' cellspacing='0' width='220'>
  <tr>
  <td class='album_photo'><a href='{$url->url_create('video', $albums[album_loop].album_author->user_info.user_username, $albums[album_loop].album_id)}'><img src='{$album_cover_src}' border='0'></a></td>
  </tr>
  </table>
</td>
<td class='album_row1' valign='top'>
  <div><font class='big'><a href='{$url->url_create('video', $albums[album_loop].album_author->user_info.user_username, $albums[album_loop].album_id)}'><img src='./images/icons/album16.gif' border='0' class='icon'>{$albums[album_loop].album_title|truncate:30}</a></font></div><br>
  <table cellpadding='0' cellspacing='0'>
  <tr><td width='100'>{$user_video_friends6}</td><td><a href='{$url->url_create('profile', $albums[album_loop].album_author->user_info.user_username)}'>{$albums[album_loop].album_author->user_info.user_username}</a></td></tr>
  <tr><td>{$user_video_friends7}</td><td>{$datetime->time_since($albums[album_loop].album_datecreated)}</td></tr>
  {if $albums[album_loop].album_dateupdated != 0}<tr><td>{$user_video_friends8}</td><td>{$datetime->time_since($albums[album_loop].album_dateupdated)}</td></tr>{/if}
  <tr><td>{$user_video_friends9}</td><td>{$albums[album_loop].album_files} {$user_video_friends10} ({$albums[album_loop].album_space} MB)</td></tr>
  <tr><td colspan='2'><br>{$albums[album_loop].album_desc|truncate:197}</td></tr>
  </table>
</td>
</tr>
</table>
</div>

{/section}

{* SHOW NO ALBUMS MESSAGE IF NO ALBUMS FOUND *}
{if $albums|@count == 0}
  <div class='align'>
  <br>
  <table cellpadding='0' cellspacing='0' align='center'>
  <tr><td class='result'>
    <img src='./images/icons/bulb22.gif' border='0' class='icon'> {$user_video_friends11}
  </td></tr></table>
  </div>
{/if}

</td></tr></table>

{include file='footer.tpl'}