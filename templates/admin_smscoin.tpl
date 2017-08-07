{include file='admin_header.tpl'}
{if $uninstall == 1}
<h2>{lang_print id=81000002}</h2>
<br />
{$info}
<br /><br />
<form action = '' method = 'post'>
	<input type = 'submit' name = 'yes' value = 'yes'/>
	<input type = 'submit' name = 'no' value = 'no'/>
</form>
{elseif $uninstall == 2}
{$info}
{else}
<h2>{lang_print id=81000002}</h2>
{$info}
<br />
<form action = '' method = 'post'>
	<table>
		<tr>
			<td>
				{lang_print id=81000004}:
			</td>
			<td>
				<input type = 'text' name = 'bank_id' value = '{lang_print id=81000005}'/>
			</td>
		<tr>
		<tr>
			<td>
				{lang_print id=81000006}:
			</td>
			<td>
				<input type = 'text' name = 'desc' value = '{lang_print id=81000007}'/>
			</td>
		<tr>
		<tr>
			<td>
				{lang_print id=81000008}:
			</td>
			<td>
				<input type = 'text' name = 'code' value = '{lang_print id=81000009}'/>
			</td>
		<tr>
		<tr>
			<td>
				{lang_print id=81000010}:
			</td>
			<td>
				<input type = 'text' name = 'points' value = '{lang_print id=81000011}'/>
			</td>
		<tr>
		<tr>
			<td colspan = '2'>
				<input type = 'submit' name = 'submit' value = 'Save'/>
				<input type = 'submit' name = 'upload' value = 'Upload Tarifs'/>
				<input type = 'submit' name = 'uninstall' value = 'Uninstall'/>
			</td>
		</tr>
	</table>
</form>
{/if}
{include file='admin_footer.tpl'}
