{include file='admin_header.tpl'}

{if $bStoreExists}
	<a href="admin_viewplugins.php" style="color:red;"><b>{$header_ats_store_ex.need_disable_store_plugin}</b></a>
<br /><br />
{/if}

<table class='tabs' cellpadding='0' cellspacing='0'>
<tr>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_fbmenu.php'>{lang_print id='50001'}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_ads.php'>{lang_print id='50027'}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab1' NOWRAP><a href='admin_ats_fbmenu_settings.php'>{lang_print id='655'}</a></td>
<td class='tab3'>&nbsp;</td>
</tr>
</table>

<h2>{lang_print id='655'} {* SETTINGS *}</h2>
    
<table cellspacing="0" cellpadding="0" width="100%" style="margin-bottom: 10px;">
{foreach from=$aErrors item='sError'}
	<tr>
		<td class="error">
  			<img border="0" class="icon" src="../images/icons/error16.gif"/>
  			{$sError}
  		</td>
	</tr>
{/foreach}
</table>
<form method="post" action="{$page}.php"/>
{foreach item='aSection' from=$aSettings}
<table cellspacing="0" cellpadding="0" width="600">
<tr>
	<td class="header" colspan="2">{$aSection.0.plugin_name}</td>
</tr>
	{foreach item='aItem' from=$aSection}
	<tr>
		<td class="setting2" width="250">
			{$aItem.setting_name}
		</td>
		<td class="setting2">
			{if $aItem.setting_code == 'default_theme'}
				<select name='values[{$aItem.setting_id}]' >
					<option value="Default" {if $aItem.setting_value == "Default"} selected {/if}>Default</option>
					<option value="Blue" {if $aItem.setting_value == "Blue"} selected {/if}>Blue</option>
					<option value="Fox" {if $aItem.setting_value == "Fox"} selected {/if}>Fox</option>
					<option value="Gray" {if $aItem.setting_value == "Gray"} selected {/if}>Gray</option>
					<option value="Green" {if $aItem.setting_value == "Green"} selected {/if}>Green</option>
					<option value="Lightgray" {if $aItem.setting_value == "Lightgray"} selected {/if}>Lightgray</option>
				</select>
			{elseif $aItem.setting_type == 'check'}
				<input type="hidden" name="values[{$aItem.setting_id}]" value="0" />
				<input type="checkbox" name="values[{$aItem.setting_id}]" {if $aItem.setting_value} checked="true" {/if} value="1" />
			{elseif $aItem.setting_type == 'text_2'}
				<input type="text" size="10" maxlenght="10" value="{$aItem.setting_value.0}" name="values[{$aItem.setting_id}][0]" class="text" /> px
				<b>x</b> <input type="text" size="10" maxlength="10" value="{$aItem.setting_value.1}" name="values[{$aItem.setting_id}][1]" class="text" /> px	
			{else}
				<input type="text" size="30" maxlength="255" value="{$aItem.setting_value}" name="values[{$aItem.setting_id}]" class="text"/>	
			{/if}
		</td>
	</tr>
	{/foreach}
</table>
<br />
{/foreach}
<br>
<input type="hidden" name="task" value="edit_settings">
<input type="submit" class='button' value="{lang_print id='173'}"/>
</form>
{include file='admin_footer.tpl'}