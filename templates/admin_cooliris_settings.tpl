
{*
@author Ermek
@copyright Hire-Experts LLC
@version Cooliris 1.01
*}

{include file='admin_header.tpl'}

<link rel="stylesheet" href="../templates/he_admin_styles.css" title="stylesheet" type="text/css" />
<link rel="stylesheet" href="../templates/he_mooRainbow.css" title="stylesheet" type="text/css" />
<script src="../include/js/mooRainbow.1.2b2.js" type="text/javascript"></script>

{literal}
<script>
window.addEvent('domready', function() {
	var r = new MooRainbow('he_rainbow', {
		'startColor': [58, 142, 246],
		'onChange': function(color) {
			$('he_bg_color').value = color.hex;
		}
	});
});
</script>
{/literal}

<h2>{lang_print id=690700001}</h2>
{lang_print id=690700002}
<br />
<br />

{if $message}
	<div class='he_success'><img src='../images/success.gif' border='0' class='icon'> {$message}</div>
{/if}

<form method="post">
<table cellpadding="0" cellspacing="0" class="he_tbl" style="width: 600px">
<thead>
	<tr>
		<td class="header" colspan="2">{lang_print id=690700001}</td>
	</tr>
</thead>
<tbody>
	<tr>
		<td class="item">{lang_print id=690700003}</td>
		<td class="item">
			<input type="text" name="setting_he_cooliris_bg_color" id="he_bg_color" value="{$setting.setting_he_cooliris_bg_color}"/>
			<img src="../images/he_cooliris_rainbow.png" id="he_rainbow" style="cursor: pointer;"/>
		</td>
	</tr>
	<tr>
		<td class="item">{lang_print id=690700004}</td>
		<td class="item"><input type="text" name="setting_he_cooliris_bg_image" value="{$setting.setting_he_cooliris_bg_image}"/></td>
	</tr>
	<tr>
		<td class="item">{lang_print id=690700005}</td>
		<td class="item">
			<select name="setting_he_cooliris_num_rows">
				<option value="1" {if $setting.setting_he_cooliris_num_rows==1}selected="selected"{/if}>1</option>
				<option value="2" {if $setting.setting_he_cooliris_num_rows==2}selected="selected"{/if}>2</option>
				<option value="3" {if $setting.setting_he_cooliris_num_rows==3}selected="selected"{/if}>3</option>
				<option value="4" {if $setting.setting_he_cooliris_num_rows==4}selected="selected"{/if}>4</option>
				<option value="5" {if $setting.setting_he_cooliris_num_rows==5}selected="selected"{/if}>5</option>
				<option value="6" {if $setting.setting_he_cooliris_num_rows==6}selected="selected"{/if}>6</option>
				<option value="7" {if $setting.setting_he_cooliris_num_rows==7}selected="selected"{/if}>7</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="item">{lang_print id=690700006}</td>
		<td class="item">
			<select name="setting_he_cooliris_theme">
				<option value="black" {if $setting.setting_he_cooliris_theme=='black'}selected="selected"{/if}>black</option>
				<option value="dark" {if $setting.setting_he_cooliris_theme=='dark'}selected="selected"{/if}>dark</option>
				<option value="light" {if $setting.setting_he_cooliris_theme=='light'}selected="selected"{/if}>light</option>
				<option value="white" {if $setting.setting_he_cooliris_theme=='white'}selected="selected"{/if}>white</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="item">{lang_print id=690700007}</td>
		<td class="item"><input type="text" name="setting_he_cooliris_logo_image" value="{$setting.setting_he_cooliris_logo_image}"/></td>
	</tr>
	<tr>
		<td class="item">{lang_print id=690700008}</td>
		<td class="item"><input type="text" name="setting_he_cooliris_logo_url" value="{$setting.setting_he_cooliris_logo_url}"/></td>
	</tr>
</tbody>
</table>
<br/>
<input type="hidden" name="task" value="save_settings"/>
<input class="button" type="submit" value="{lang_print id=173}"/>
 </form>

{include file='admin_footer.tpl'}