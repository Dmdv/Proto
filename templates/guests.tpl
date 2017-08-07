{include file='header_top.tpl'}{include file='header_shapka.tpl'}{include file='header_menu.tpl'}

 {* SHOW RECENT GUESTS *}
  <table cellpadding='0' cellspacing='0' width='100%'>
  <tr><td class='home_header'>Мои гости{if $myguests|@count > 0} ({$myguests|@count}){/if}</td></tr>
  <tr><td class='home_box'>
  {if $myguests|@count > 0}
    {section name=guests_loop loop=$myguests max=3}
      {* START NEW ROW *}
      {cycle name="startrow6" values="<table cellpadding='0' cellspacing='0' align='center'><tr>,,,,"}
      <td class='portal_member'><a href='{$url->url_create('profile',$myguests[guests_loop].guest->user_info.user_username)}'>{$myguests[guests_loop].guest->user_info.user_username|truncate:15}<br><img src='{$myguests[guests_loop].guest->user_photo('./images/nophoto.gif')}' class='photo' width='{$misc->photo_size($myguests[guests_loop].guest->user_photo('./images/nophoto.gif'),'90','90','w')}' border='0'></a>
      <br>{$datetime->time_since($myguests[guests_loop].time)}</td>
      {* END ROW AFTER 5 RESULTS *}
      {if $smarty.section.guests_loop.last == true}
        </tr></table>
      {else}
        {cycle name="endrow6" values=",,,,</tr></table>"}
      {/if}
    {/section}
  <div align='center'>
  {if $myguests|@count > 3}[ <a href='user_guests.php'>Смотреть всех <b>{$myguests|@count}</b> гостей</a> ]&nbsp;&nbsp;{/if} [ <a href='guests.php?task=resetguests'>asdsadasd</a> ]
  {else}
    У вас пока нет гостей.
  {/if}
  </div>
  </td>
  </tr>
  </table>
{include file='footer.tpl'}