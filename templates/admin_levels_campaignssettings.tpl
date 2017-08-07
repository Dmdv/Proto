{include file='admin_header.tpl'}

<h2>{$admin_levels_campaignssettings35} {$level_name}</h2>
{$admin_levels_campaignssettings36}

<table cellspacing='0' cellpadding='0' width='100%' style='margin-top: 20px;'>
<tr>
<td class='vert_tab0'>&nbsp;</td>
<td valign='top' class='pagecell' rowspan='{math equation='x+2' x=$level_menu|@count}'>

  <h2>{$admin_levels_campaignssettings1}</h2>
  {$admin_levels_campaignssettings2}

  <br><br>

  {* SHOW SUCCESS MESSAGE *}
  {if $result != 0}
    <div class='success'><img src='../images/success.gif' class='icon' border='0'> {$admin_levels_campaignssettings15}</div>
  {/if}

  {* SHOW ERROR MESSAGE *}
  {if $is_error != 0}
    <div class='error'><img src='../images/error.gif' class='icon' border='0'> {$error_message}</div>
  {/if}

  <table cellpadding='0' cellspacing='0' width='600'>
  <form action='admin_levels_campaignssettings.php' method='POST'>
  <tr><td class='header'>{$admin_levels_campaignssettings3}</td></tr>
  <tr><td class='setting1'>
  {$admin_levels_campaignssettings4}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='level_campaigns_allow' id='level_campaigns_allow_1' value='1'{if $level_campaigns_allow == 1} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_allow_1'>{$admin_levels_campaignssettings5}</label></td></tr>
    <tr><td><input type='radio' name='level_campaigns_allow' id='level_campaigns_allow_0' value='0'{if $level_campaigns_allow == 0} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_allow_0'>{$admin_levels_campaignssettings6}</label></td></tr>
    </table>
  </td></tr></table>

  <br>


  <table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{$admin_levels_campaignssettings7}</td></tr>
  <tr><td class='setting1'>
  {$admin_levels_campaignssettings8}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='level_campaigns_autoapprove' id='level_campaigns_autoapprove_1' value='1'{if $level_campaigns_autoapprove == 1} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_autoapprove_1'>{$admin_levels_campaignssettings9}</label></td></tr>
    <tr><td><input type='radio' name='level_campaigns_autoapprove' id='level_campaigns_autoapprove_0' value='0'{if $level_campaigns_autoapprove == 0} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_autoapprove_0'>{$admin_levels_campaignssettings10}</label></td></tr>
    </table>
  </td></tr>
  </table>

  <br>

  <table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{$admin_levels_campaignssettings11}</td></tr>
  <tr><td class='setting1'>
  {$admin_levels_campaignssettings12}
  </td></tr><tr><td class='setting2'>

    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='text' name='level_campaigns_maxnum' value='{$level_campaigns_maxnum}' maxlength='3' size='5'>&nbsp;{$admin_levels_campaignssettings13}</tr>
    </table>
  </td></tr></table>


  <br>


  <table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{$admin_levels_campaignssettings16}</td></tr>
  <tr><td class='setting1'>
  {$admin_levels_campaignssettings17}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='level_campaigns_showads' id='level_campaigns_showads_1' value='1'{if $level_campaigns_showads == 1} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_showads_1'>{$admin_levels_campaignssettings18}</label></td></tr>
    <tr><td><input type='radio' name='level_campaigns_showads' id='level_campaigns_showads_0' value='0'{if $level_campaigns_showads == 0} CHECKED{/if}>&nbsp;</td><td><label for='level_campaigns_showads_0'>{$admin_levels_campaignssettings19}</label></td></tr>
    </table>
  </td></tr>
  </table>


  <br>
  <br>
  
  <input type='submit' class='button' value='{$admin_levels_campaignssettings14}'>
  <input type='hidden' name='task' value='dosave'>
  <input type='hidden' name='level_id' value='{$level_id}'>
  </form>

</td>
</tr>

{section name=menu_loop loop=$level_menu}
  <tr><td width='100' nowrap='nowrap' class='vert_tab' style='{if $smarty.section.menu_loop.first != TRUE} border-top: none;{/if}{if $level_menu[menu_loop].page == $page} border-right: none;{/if}'><a href='{$level_menu[menu_loop].link}?level_id={$level_id}'>{$level_menu[menu_loop].title}</td></tr>
{/section}

<tr>
<td class='vert_tab0'>
  <div style='height: 300px;'>&nbsp;</div>
</td>
</tr>
</table>

{include file='admin_footer.tpl'}