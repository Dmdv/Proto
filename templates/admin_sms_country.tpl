{include file='header_global.tpl'}
{if $result}
<div align='center'>
	Операция успешно завершена.
	<script type="text/javascript">
		setTimeout("window.parent.location.reload();window.parent.TB_remove();", "2000");
	</script>
</div>
{else}
<div class='page_header' align='left'>&nbsp;Страны</div>
<form  method='post'>
	<table>
		<tr>
			<td class='form1'>Название</td>
			<td class='form2'><input type='text' name='title' value='{$country_info.title}'/></td>
		</tr>
		<tr>
			<td colspan='2' align='right'>
				<input type='hidden' value='{$country_info.id}' name='id'/>
				<input type='submit' class='button' value='{if $country_info.id}Изменить{else}Сохранить{/if}'/>
			</td>
		</tr>
	</table>
</form>
{/if}
</body>
</html>