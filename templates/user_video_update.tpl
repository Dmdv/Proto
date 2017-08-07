{include file='header.tpl'}

<table class='tabs' cellpadding='0' cellspacing='0'>
<tr>
<td class='tab0'>&nbsp;</td>
<td class='tab1' NOWRAP><a href='user_video.php'>{$user_video_update2}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='user_video_settings.php'>{$user_video_update3}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='user_video_friends.php'>{$user_video_update4}</a></td>
<td class='tab3'>&nbsp;</td>
</tr>
</table>

<table cellpadding='0' cellspacing='0' width='100%'><tr><td class='page'>

<img src='./images/icons/image48.gif' border='0' class='icon_big'>
<div class='page_header'>{$user_video_update5} <a href='{$url->url_create('video', $user->user_info.user_username, $album_id)}'>{$album_title}</a></div>
<div>
  {$user_video_update6} <b>{$files_total} {$user_video_update7}</b>
  {$user_video_update8} <b>{$album_views} {$user_video_update9}</b>
</div>

<br>

<table cellpadding='0' cellspacing='0'>
<tr>
<td>
  <table cellpadding='0' cellspacing='0' width='140'>
  <tr><td class='button'><img src='./images/icons/video_back16.gif' border='0' class='icon'><a href='user_video.php'>{$user_video_update10}</a></td></tr>
  </table>
</td>
<td style='padding-left: 10px;'>
  <table cellpadding='0' cellspacing='0' width='140'>
  <tr><td class='button'><img src='./images/icons/addvideo16.gif' border='0' class='icon'><a href='user_video_upload.php?album_id={$album_id}'>{$user_video_update11}</a></td></tr>
  </table>
</td>
<td style='padding-left: 10px;'>
  <table cellpadding='0' cellspacing='0' width='140'>
  <tr><td class='button'><img src='./images/icons/video_edit16.gif' border='0' class='icon'><a href='user_video_edit.php?album_id={$album_id}'>{$user_video_update12}</a></td></tr>
  </table>
</td>
</tr>
</table>

<br>

{* SHOW NO FILES MESSAGE IF NECESSARY, OTHERWISE SHOW ALBUM STATS *}
{if $files_total == 0}
    <table cellpadding='0' cellspacing='0'>
    <tr><td class='result'>
      <img src='./images/icons/bulb16.gif' border='0' class='icon'>{$user_video_update13} <a href='user_video_upload.php?album_id={$album_id}'>{$user_video_update14}</a>
    </td></tr></table>
{/if}

{* SHOW RESULT MESSAGE *}
{if $result != 0 AND $files_total > 0}
  <div class='success'><img src='./images/success.gif' border='0' class='icon'> {$user_video_update1}</div>
{/if}

{* SHOW FILES IF THERE ARE ANY *}
{if $files_total > 0}
  <form action='user_video_update.php' method='POST'>
  {section name=files_loop loop=$files}

    {* GET THUMBNAIL *}
    {assign var='file_src' value='./images/icons/file_big.gif'}

    <div class='album_row'>
    <a name='{$files[files_loop].media_id}'></a>
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td>
      <table cellpadding='0' cellspacing='0' width='220'>
      <tr>
      <td class='album_photo'><a href='{$url->url_create('video_file', $user->user_info.user_username, $album_id, $files[files_loop].media_id)}'><img src='{$file_src}' border='0'></a></td>
      </tr>
      </table>
    </td>
    <td class='album_row1' width='100%'>
      <table cellpadding='0' cellspacing='0'>
      <tr>
      <td>
        {$user_video_update15}<br><input type='text' name='media_title_{$files[files_loop].media_id}' class='text' size='30' maxlength='50' value='{$files[files_loop].media_title}'>
        {if $files[files_loop].media_comments_total > 0}&nbsp;&nbsp;&nbsp; <b>[ <a href='user_video_comments.php?album_id={$album_id}&media_id={$files[files_loop].media_id}'>{$files[files_loop].media_comments_total} {$user_video_update16}</a> ]</b>{/if}
        </td>
      </tr>
      <tr><td><br>{$user_video_update17}<br><textarea name='media_desc_{$files[files_loop].media_id}' rows='3' cols='52'>{$files[files_loop].media_desc}</textarea></td></tr>
      <tr><td><br>{$user_video_update21}<br><textarea name='media_code_{$files[files_loop].media_id}' rows='3' cols='52'>{$files[files_loop].media_code|stripslashes}</textarea></td></tr>
      </table>
      <table cellpadding='0' cellspacing='0' class='album_photooptions'>
      <tr>
      <td><input type='checkbox' name='delete_media_{$files[files_loop].media_id}' id='delete_media_{$files[files_loop].media_id}' value='1'></td><td><label for='delete_media_{$files[files_loop].media_id}'>{$user_video_update18}</label> &nbsp;</td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
    </div>
  {/section}
  <br>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td>
    <input type='submit' class='button' value='{$user_video_update20}'>&nbsp;
    <input type='hidden' name='task' value='doupdate'>
    <input type='hidden' name='album_id' value='{$album_id}'>
    </form>
  </td>
  </tr>
  </table>
{/if}

</td></tr></table>

{include file='footer.tpl'}