{include file='mobile_header.tpl'}

<table cellpadding='0' cellspacing='0' width='100%'>
<tr>
<td class='home_left' width='100%'>

  {* SHOW USER PHOTO *}
  {*
  <div class='home_photo'><a href='{$url->url_create('profile', $user->user_info.user_username)}'><img src='{$user->user_photo("./images/nophoto.gif")}' class='photo' border='0'></a></div>
  *}

  

  {* SHOW ONLINE USERS IF MORE THAN ZERO *}
  {if $online_users[0]|@count > 0}
    <table cellpadding='0' cellspacing='0' class='portal_table' align='center' width='100%'>
    <tr><td class='header'>{$user_mobile_home10} ({$online_users[0]|@count})</td></tr>
    <tr>
    <td class='home_box' style="-webkit-text-size-adjust:none">
      {section name=online_users_loop loop=$online_users[0] max=20}{if $smarty.section.online_users_loop.rownum != 1}, {/if}<a style='padding:0px 0px 4px 4px;' href='mobile_profile.php?user={$online_users[0][online_users_loop]->user_info.user_username}'>{$online_users[0][online_users_loop]->user_displayname}</a>{/section}
    </td>
    </tr>
    </table>
  {/if}
  
    {* SHOW LAST SIGNUPS *}
    <table cellpadding='0' cellspacing='0' class='portal_table' align='center' width='100%'>
      <tr><td class='home_header'>Newest Members</td>
      </tr>
      <tr>
	  <td class='home_box'>
    {section name=signups_loop loop=$signups max=4}
      {* START NEW ROW *}
      {cycle name="startrow" values="<table cellpadding='0' cellspacing='0' align='center'><tr>,"}
      <td class='portal_member'><a href='mobile_profile.php?user={$signups[signups_loop]->user_info.user_username}'>{$signups[signups_loop]->user_displayname|truncate:15:"...":true}<br><img src='{$signups[signups_loop]->user_photo('./images/nophoto.gif', TRUE)}' class='photo' width='60' height='60' border='0'></a></td>
      {* END ROW AFTER 5 RESULTS *}
      {if $smarty.section.signups_loop.last == true}
        </tr></table>
      {else}
        {cycle name="endrow" values=",</tr></table>"}
      {/if}
    {sectionelse}
		No members have signed up yet.
    {/section}
		</td></tr></table>
  

  {* SHOW RECENT ACTIVITY LIST *}
  <table cellpadding='0' cellspacing='0' width='100%'>
  <tr><td class='home_header'>{$user_mobile_home1}</td></tr>
  <td class='home_box'>
    {section name=actions_loop loop=$actions}
      {* DISPLAY ACTION *}
      <div id='action_{$actions[actions_loop].action_id}'  class='home_action{if $smarty.section.actions_loop.last == true}_bottom{/if}'>
			<table cellpadding='0' cellspacing='0' style='width:100%;' border='0'>
			<tr>
				<td valign='top' style='width:20px;'><img src='./images/icons/{$actions[actions_loop].action_icon}' border='0' class='icon'></td>
				<td valign='top' style="-webkit-text-size-adjust:none">					
					{if $actions[actions_loop].action_media !== FALSE}{capture assign='action_media'}{section name=action_media_loop loop=$actions[actions_loop].action_media}<a href='{$actions[actions_loop].action_media[action_media_loop].actionmedia_link}'><img src='{$actions[actions_loop].action_media[action_media_loop].actionmedia_path}' border='0' width='{$actions[actions_loop].action_media[action_media_loop].actionmedia_width}' class='recentaction_media'></a>{/section}{/capture}{/if}
					{capture assign='action_text'}{lang_sprintf id=$actions[actions_loop].action_text 1=$actions[actions_loop].action_vars[0] 2=$actions[actions_loop].action_vars[1] 3=$actions[actions_loop].action_vars[2] 4=$actions[actions_loop].action_vars[3] 5=$actions[actions_loop].action_vars[4] 6=$actions[actions_loop].action_vars[5] 7=$actions[actions_loop].action_vars[6]}{/capture}
					{$action_text|replace:"[media]":$action_media|choptext:50:"<br>"|replace:"profile.php":"mobile_profile.php"}
		    		{assign var='action_date' value=$datetime->time_since($actions[actions_loop].action_date)}
					<div class='portal_action_date'>{lang_sprintf id=$action_date[0] 1=$action_date[1]}</div>
	    		</td>
			</tr>
			</table>
      </div>
    {sectionelse}
      {$user_mobile_home9}
    {/section}
  </td>
  </tr>
  </table>



  {* SHOW STATUS *}
  <table cellpadding='0' cellspacing='0' width='100%' style='margin-top: 10px;'>
  <tr><td class='home_header'>{$user_mobile_home11}</td></tr>
  <tr>
  <td class='home_box'>
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td valign='top'><img src='./images/icons/status16.gif' border='0' class='icon2'>&nbsp;&nbsp;</td>
    <td>
      <div id='ajax_currentstatus_none'{if $user->user_info.user_status != ""} style='display: none;'{/if}>
        <a href="javascript:void(0);" onClick="changeStatus()">{$user_mobile_home4}</a>
      </div>
      <div id='ajax_currentstatus'{if $user->user_info.user_status == ""} style='display: none;'{/if}>
        {$user_mobile_home13} <span id='ajax_currentstatus_value'>{$user->user_info.user_status|choptext:12:"<br>"}</span>
        <br>[ <a href="javascript:void(0);" onClick="changeStatus()">{$user_mobile_home12}</a> ]
      </div>
      <div id='ajax_changestatus' style='display: none;'>
	<form action='user_editprofile_status.php' method='post' id='ajax_statusform' target='ajax_statusframe' onSubmit="changeStatus_do()">
	{$user_mobile_home13}:<br>
	<input type='text' class='text_small' name='status_new' id='status_new' maxlength='100' value='{$user->user_info.user_status}' size='10' style='width: 140px; margin: 2px 0px 2px 0px;'>
	<br>
        <a href="javascript:void(0);" onClick="changeStatus_submit();">{$user_mobile_home7}</a> | 
        <a href="javascript:void(0);" onClick="changeStatus_return();">{$user_mobile_home8}</a>
	<input type='hidden' name='task' value='dosave'>
	<input type='hidden' name='is_ajax' value='1'>
	</form>
      </div>
      <iframe id='uploadframe' name='ajax_statusframe' style='display: none;' src="user_editprofile_status.php?task=blank"></iframe> 
    </td>
    </tr>
    </table>
  </td>
  </tr>
  </table>

  

</td>
</tr>
</table>

{include file='mobile_footer.tpl'}