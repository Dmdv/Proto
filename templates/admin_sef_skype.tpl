{include file='admin_header.tpl'}

<h2>{lang_print id=78958827}</h2>
{lang_print id=78958828}

<br><br>

{if $skypemsg == 1}
  <div class='error'><img src='../images/error.gif' class='icon' border='0'> {lang_print id=78958853}</div><br>
{/if}

{if $result != 0}

  {if empty($error)}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {lang_print id=78958830}</div>
  {else}
  <div class='error'><img src='../images/error.gif' class='icon' border='0'> {$error}</div>
  {/if}

{/if}

<br>

<form action='admin_sef_skype.php' method='POST'>
<input type='hidden' name='task' value='save_sef_skype'>

<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{lang_print id=78958831}</td></tr>
  <tr><td class='setting1'>{lang_print id=78958832}</td></tr>
  <tr><td class='setting2'><select name='setting_sef_skype_enabled'>
      <option value='0'{if $setting.setting_sef_skype_enabled == "0"} SELECTED{/if}>Disable Skype</option>
      <option value='1'{if $setting.setting_sef_skype_enabled == "1"} SELECTED{/if}>Enable Skype</option>
	  </select></td>
  </tr>
</table>
<br>
<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{lang_print id=78958833}</td></tr>
  <tr><td class='setting1'>{lang_print id=78958834}</td></tr>
  <tr><td class='setting2'><select name='setting_sef_skype_call'>
      <option value='0'{if $setting.setting_sef_skype_call == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_call == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958837}</b></td>
  </tr>
  <tr><td class='setting2'><select name='setting_sef_skype_vmail'>
      <option value='0'{if $setting.setting_sef_skype_vmail == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_vmail == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958838}</b></td>
  </tr>
  <tr><td class='setting2'><select name='setting_sef_skype_profile'>
      <option value='0'{if $setting.setting_sef_skype_profile == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_profile == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958839}</b></td>
  </tr>
  <tr><td class='setting2'><select name='setting_sef_skype_clist'>
      <option value='0'{if $setting.setting_sef_skype_clist == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_clist == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958840}</b></td>
  </tr>
  <tr><td class='setting2'><select name='setting_sef_skype_chat'>
      <option value='0'{if $setting.setting_sef_skype_chat == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_chat == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958841}</b></td>
  </tr>
  <tr><td class='setting2'><select name='setting_sef_skype_file'>
      <option value='0'{if $setting.setting_sef_skype_file == "0"} SELECTED{/if}>Disable</option>
      <option value='1'{if $setting.setting_sef_skype_file == "1"} SELECTED{/if}>Enable</option>
	  </select> <b>{lang_print id=78958842}</b></td>
  </tr>
</table>
<br>
<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{lang_print id=78958835}</td></tr>
  <tr><td class='setting1'>{lang_print id=78958836}</td></tr>
  <tr><td class='setting2'><input type='text' name='setting_sef_skype_field' value='{$setting.setting_sef_skype_field}' size='6' maxlength="3" /></td>
  </tr>
</table>
<br>
<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{lang_print id=78958842}</td></tr>
  <tr><td class='setting1'>{lang_print id=78958843}</td></tr>
  <tr><td class='setting2'><textarea rows='3' style='width:99%;' name='setting_sef_skype_owner_text'>{$setting.setting_sef_skype_owner_text}</textarea></td>
  </tr>
</table>
<br>
<table cellpadding='0' cellspacing='0' width='600'>
  <tr><td class='header'>{lang_print id=78958844}</td></tr>
  <tr><td class='setting1'>{lang_print id=78958845}</td></tr>
  <tr><td class='setting2'><textarea rows='3' style='width:99%;' name='setting_sef_skype_install_text'>{$setting.setting_sef_skype_install_text}</textarea></td>
  </tr>
  <tr><td class='setting1'><input type='submit' class='button' value='{lang_print id=78958854}'{if $skypemsg == 1} DISABLED{/if}></td></tr>
</table>

</form>

{include file='admin_footer.tpl'}