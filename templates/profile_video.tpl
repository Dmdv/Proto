{* BEGIN ALBUMS *}
{if $owner->level_info.level_video_allow != 0 AND $total_video_albums > 0}

  <table cellpadding='0' cellspacing='0' width='100%' style='margin-bottom: 10px;'>
  <tr><td class='header'>
    {$header_video2} ({$total_video_albums})
    {* IF MORE THAN 3 ALBUMS, SHOW VIEW MORE LINKS *}
    {if $total_video_albums > 3}&nbsp;[ <a href='{$url->url_create('video_albums', $owner->user_info.user_username)}'>{$header_video3}</a> ]{/if}
  </td></tr>
  <tr>
  <td class='profile'>
    {* LOOP THROUGH FIRST 3 ALBUMS *}
    {section name=video_album_loop loop=$video_albums}

      {* SET ALBUM COVER *}
      {assign var='video_album_cover_src' value='./images/icons/folder_big.gif'}

      {* SET ALBUM TITLE *}
      {if $video_albums[video_album_loop].album_title != ""}
        {assign var="video_album_title" value=$video_albums[video_album_loop].album_title}
      {else}
        {assign var="video_album_title" value=$header_video4}
      {/if}

      <table cellpadding='0' cellspacing='0'>
      <tr>
      <td width='1' style='padding: 5px 5px 5px 0px;' valign='top'><a href='{$url->url_create('video', $owner->user_info.user_username, $video_albums[video_album_loop].album_id)}'><img src='{$video_album_cover_src}' border='0' class='photo' width='{$misc->photo_size($video_album_cover_src,'75','75','w')}'></a></td>
      <td valign='top' style='padding: 2px 0px 0px 0px;'>
        <b><a href='{$url->url_create('video', $owner->user_info.user_username, $video_albums[video_album_loop].album_id)}'>{$video_album_title|truncate:17:"...":true}</a></b>
        {if $video_albums[video_album_loop].album_dateupdated > 0}<br>{$header_video5} {$datetime->time_since($video_albums[video_album_loop].album_dateupdated)}{/if}
      </td>
      </tr>
      </table>

    {/section}
  </td>
  </tr>
  </table>

{/if}