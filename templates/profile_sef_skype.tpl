{* SKYPE TAB BY SEF EXPERIMENTAL LABS *}
	
{if $owner->user_info.user_id == $user->user_info.user_id}
<div style='background: #FFF1AD; border: 1px solid #FF1919; padding:10px; margin-top:2px; margin-bottom:11px; margin-right:2px; margin-left:2px;'>{$setting.setting_sef_skype_owner_text}</div>
{else}
<div style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px; margin-top:2px; margin-bottom:11px; margin-right:2px; margin-left:2px;'>{$setting.setting_sef_skype_install_text}</div>
{/if}
<table width='100%' height='100%' border='0'>
  <tr>
    <td height='100%' style='border: 1px solid #DDDDDD; padding:20px;'><div align='center' height='100%'><br><font size='3' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'>{$owner->user_displayname}</font><br><br><br><a href='skype:{$skype_username}?call'><img src='http://mystatus.skype.com/bigclassic/{$skype_username}.png' border='0' title='{$owner->user_displayname} Status' /></a><br></div></td>
  </tr>
  {if $setting.setting_sef_skype_call == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?call'><font size='3'><b>{lang_print id=78958846}</b></font></a></div></td>
  </tr>
  {/if}
  {if $setting.setting_sef_skype_vmail == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?voicemail'><font size='3'><b>{lang_print id=78958847}</b></font></a></div></td>
  </tr>
  {/if}
  {if $setting.setting_sef_skype_profile == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?userinfo'><font size='3'><b>{lang_print id=78958848}</b></font></a></div></td>
  </tr>
  {/if}
  {if $setting.setting_sef_skype_clist == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?add'><font size='3'><b>{lang_print id=78958849}</b></font></a></div></td>
  </tr>
  {/if}
  {if $setting.setting_sef_skype_chat == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?chat'><font size='3'><b>{lang_print id=78958850}</b></font></a></div></td>
  </tr>
  {/if}
  {if $setting.setting_sef_skype_file == "1"}
  <tr>
    <td><div align='center' style='background: #F9F9F9; border: 1px solid #DDDDDD; padding:10px;'><a href='skype:{$skype_username}?sendfile'><font size='3'><b>{lang_print id=78958851}</b></font></a></div></td>
  </tr>
  {/if}
</table>

{* ALL RIGHTS ARE RESERVED *}