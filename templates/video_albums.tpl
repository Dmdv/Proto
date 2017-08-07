{include file='header.tpl'}

<div class='page_header'><a href='{$url->url_create('profile', $owner->user_info.user_username)}'>{$owner->user_info.user_username}</a>{$videos2}</div>

<br>

{* SHOW NO ALBUMS NOTICE *}
{if $total_albums == 0}
  <table cellpadding='0' cellspacing='0'>
  <tr><td class='result'>
    <img src='./images/icons/bulb22.gif' border='0' class='icon'>
    {$videos3}
  </td></tr>
  </table>
{/if}

{* LOOP THROUGH ALBUMS *}
{section name=album_loop loop=$albums}

  {* SET ALBUM COVER *}
  {assign var='album_cover_src' value='./images/icons/folder_big.gif'}

  {* SET ALBUM TITLE *}
  {if $albums[album_loop].album_title != ""}
    {assign var="album_title" value=$albums[album_loop].album_title}
  {else}
    {assign var="album_title" value=$videos4}
  {/if}

  {if $smarty.section.album_loop.index != 0}<div class='album_bar'></div>{/if}
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td class='album_list1' width='110'><a href='{$url->url_create('video', $owner->user_info.user_username, $albums[album_loop].album_id)}'><img src='{$album_cover_src}' border='0'></a></div></td>
  <td class='album_list2'>
    <b><a href='{$url->url_create('video', $owner->user_info.user_username, $albums[album_loop].album_id)}'>{$album_title}</a></b>
    {if $albums[album_loop].album_dateupdated != 0}<br>{$videos5} {$datetime->time_since($albums[album_loop].album_dateupdated)}{/if}
    <br><br>{$albums[album_loop].album_desc}
  </td>
  </tr>
  </table>

{/section}

{include file='footer.tpl'}