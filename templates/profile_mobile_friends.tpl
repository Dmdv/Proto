{include file='mobile_header.tpl'}

<img src='./images/icons/search48.gif' border='0' class='icon_big'>
<div class='page_header'>
<table cellpadding='0' cellspacing='0'><tr><td>
<a href='mobile_profile.php?user={$owner->user_info.user_username}'>{$owner->user_displayname}</a>{$profile_mobile_friends1}
<br/>
{if $p_start == $p_end}
{$profile_mobile_friends6} {$p_start} {$profile_mobile_friends7} {$total_friends}
{else}
{$profile_mobile_friends6} {$p_start}-{$p_end} {$profile_mobile_friends7} {$total_friends}
{/if}
</td></tr></table>
</div>
{*<div>{$profile_mobile_friends2}<a href='mobile_profile.php?user={$owner->user_info.user_username}'>{$owner->user_info.user_username}</a>{$profile_mobile_friends3}</div>*}

{* SHOW NO FRIENDS NOTICE IF NECESSARY *}
{if $total_friends == 0}
  <br>
  <table cellpadding='0' cellspacing='0'>
  <tr><td class='result'>
    <img src='./images/icons/bulb22.gif' border='0' class='icon'> <b><a href='{$url->url_create('profile',$owner->user_info.user_username)}'>{$owner->user_info.user_username}</a></b>{$profile_mobile_friends4}
  </td></tr></table>
{/if}

{* DISPLAY PAGINATION MENU IF APPLICABLE *}
{if $maxpage > 1}
  <br>
  <div class='center'>
  <br/>
  {if $p != 1}<a href='profile_mobile_friends.php?user={$owner->user_info.user_username}&s={$s}&p={math equation='p-1' p=$p}'>&#171; {$profile_mobile_friends5}</a>{else}<font class='disabled'>&#171; {$profile_mobile_friends5}</font>{/if}
  &nbsp;|&nbsp;
  {if $p != $maxpage}<a href='profile_mobile_friends.php?user={$owner->user_info.user_username}&s={$s}&p={math equation='p+1' p=$p}'>{$profile_mobile_friends8} &#187;</a>{else}<font class='disabled'>{$profile_mobile_friends8} &#187;</font>{/if}  
  </div>
{/if}
  
<br>

{* LIST FRIENDS *}
{section name=friend_loop loop=$friends}
  <div class='browse_friends_result'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td class='browse_friends_result0'>
    <div style='width: 90px; text-align: center;'>
    <a href='mobile_profile.php?user={$friends[friend_loop]->user_info.user_username}'><img src='{$friends[friend_loop]->user_photo('./images/nophoto.gif')}' class='photo' width='{$misc->photo_size($friends[friend_loop]->user_photo('./images/nophoto.gif'),'90','90','w')}' border='0' alt="{$friends[friend_loop]->user_info.user_username}{$profile_mobile_friends9}"></a>
    </div>
  </td>
  <td class='browse_friends_result1' width='100%' valign='top'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td width='100'>{$profile_mobile_friends15}</td><td><a href='mobile_profile.php?user={$friends[friend_loop]->user_info.user_username}'><b>{$friends[friend_loop]->user_displayname}</b></a></td></tr>
    </table>
  </td>
  {* UMUT DISABLE ADDITIONAL BUTTONS
  <td class='browse_friends_result2' valign='top' nowrap='nowrap' align='right'>
    <a href='{$url->url_create('profile',$friends[friend_loop]->user_info.user_username)}'>{$profile_mobile_friends10}</a>{if $user->level_info.level_message_allow != 0}<br><a href='user_messages_new.php?to={$friends[friend_loop]->user_info.user_username}'>{$profile_mobile_friends12}</a>{/if}
  </td>
  *}
  </tr>
  </table>
  </div>
{/section}
 
{* DISPLAY PAGINATION MENU IF APPLICABLE *}
{if $maxpage > 1}
  <div class='center'>
  <br/><br/>
  {if $p != 1}<a href='profile_mobile_friends.php?user={$owner->user_info.user_username}&s={$s}&p={math equation='p-1' p=$p}'>&#171; {$profile_mobile_friends5}</a>{else}<font class='disabled'>&#171; {$profile_mobile_friends5}</font>{/if}
  &nbsp;|&nbsp;
  {if $p != $maxpage}<a href='profile_mobile_friends.php?user={$owner->user_info.user_username}&s={$s}&p={math equation='p+1' p=$p}'>{$profile_mobile_friends8} &#187;</a>{else}<font class='disabled'>{$profile_mobile_friends8} &#187;</font>{/if}  
  </div>
{/if}

{include file='mobile_footer.tpl'}