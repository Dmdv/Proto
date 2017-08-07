{include file='header_global.tpl'}
{if $result}
<div align='center'>
	Операция успешно завершена.
	<script type="text/javascript">
		setTimeout("window.parent.location.reload();window.parent.TB_remove();", "2000");
	</script>
</div>
{else}
<div class='page_header' align='left'>&nbsp;Тариф SMS</div>
<form  method='post'>
	<table>
		<tr>
			<td class='form1'>Слово</td>
			<td class='form2'><input type='text' name='word' value='{$sms_info.word}'/></td>
		</tr>
		<tr>
			<td class='form1'>Номер</td>
			<td class='form2'><input type='text' name='number' value='{$sms_info.number}'/></td>
		</tr>
		<tr>
			<td class='form1'>Сумма</td>
			<td class='form2'><input type='text' name='summ' value='{$sms_info.summ}'/></td>
		</tr>
		<tr>
			<td class='form1'>Страна</td>
			<td class='form2' align='left'>
				<select name='sms_country'>
					{foreach from=$sms_country item=country}
						<option value="{$country.id}" {if $sms_info.country==$country.id}selected{/if}>{$country.title}</option>
					{/foreach}
				</select>
			</td>
		</tr>
		<tr>
			<td colspan='2' align='center' style='padding-top:10px'>
				<input type='hidden' value='{$sms_info.id}' name='id'/>
				<input type='submit' class='button' value='{if $sms_info.id}Изменить{else}Сохранить{/if}'/>
			</td>
		</tr>
	</table>
</form>
{/if}
</body>
</html>