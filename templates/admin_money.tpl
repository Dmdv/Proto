{include file='admin_header.tpl'}
<h2>Системы оплаты</h2>
<form action='admin_money.php' method='post'>
	<table>
		<tr>
			<td>
				<input type='checkbox' name='se_wm' value='1' {if $system.se_wm}checked{/if}/>
			</td>
			<td>
				Система WebMoney
			</td>
		</tr>
		<tr>
			<td>
				<input type='checkbox' name='se_sms' value='1' {if $system.se_sms}checked{/if}/>
			</td>
			<td>
				Система SMS(Агрегатор)
			</td>
		</tr>
		<tr>
			<td>
				<input type='checkbox' name='se_yandex' value='1' {if $system.se_yandex}checked{/if}/>
			</td>
			<td>
				Система Yandex
			</td>
		</tr>
		<tr>
			<td colspan='2'>
				<input type='submit' value='Включить' class='button'/>
				<input type='hidden' name='task' value='system'/>
			</td>
		</tr>
	</table>
</form>
<br/>
<h2>Настройки WebMoney</h2>
Внимание!<br/>
Перед использованием кошельков нужно настроить их в системе WebMoney. <br/>
<a href="javascript:void(0)" onclick="{literal}if ($('desc').style.display == 'none'){ $('desc').style.display = 'block'; $('desc_text').innerHTML='Скрыть';}else {$('desc').style.display = 'none';$('desc_text').innerHTML='Открыть';}"><span id='desc_text'>Открыть </span></a>{/literal}
<div id="desc" style="display:none">
	1. Войдите в свой аккаунт WebMoney<br/>
	2. Перейдите по ссылке <a href='https://merchant.webmoney.ru/conf/purse.asp' target='_blank'>merchant.webmoney.ru</a><br/>
	3. Выберете нужный кошелек и нажмите настроить<br/>
	4. Заполните все поля как показано в инструкции<br/>
	<br/>
	<!--<img src="../images/desc.png">-->
</div>
<form action='admin_money.php' method='post'>
	<table>
		<tr>
			<td class='form1'>R кошелек</td>
			<td class='form2'><input type='text' name='wm_r' value='{$wm.wm_r}'/></td>
		</tr>
		<tr>
			<td class='form1'>Z кошелек</td>
			<td class='form2'><input type='text' name='wm_z' value='{$wm.wm_z}'/></td>
		</tr>
		<tr>
			<td class='form1'>U кошелек</td>
			<td class='form2'><input type='text' name='wm_u' value='{$wm.wm_u}'/></td>
		</tr>
		<tr>
			<td class='form1'>E кошелек</td>
			<td class='form2'><input type='text' name='wm_e' value='{$wm.wm_e}'/></td>
		</tr>
		<tr>
			<td class='form1'>B кошелек</td>
			<td class='form2'><input type='text' name='wm_b' value='{$wm.wm_b}'/></td>
		</tr>
		<tr>
			<td class='form1'>Секретное слово</td>
			<td class='form2'><input type='text' name='wm_secret' value='{$wm.wm_secret}'/></td>
		</tr>
		<tr>
			<td colspan='2' align='right'><input type='submit' value='Сохранить' class='button'/></td>
		</tr>
	</table>
	<input type='hidden' name='task' value='webmoney'/>
</form>
<br/>
<h2>Курс валют</h2>
Курс рассчитываем по отношению к рублю.
<form action='admin_money.php' method='post'>
	<table>
		<tr>
			<td class='form1'>
				Доллар
			</td>
			<td class='form2'>
				<input type='text' name='rate_z' value='{$rates.rate_z}'/>
			</td>
		</tr>
		<tr>
			<td class='form1'>
				Евро
			</td>
			<td class='form2'>
				<input type='text' name='rate_e' value='{$rates.rate_e}'/>
			</td>
		</tr>
		<tr>
			<td class='form1'>
				Гривны
			</td>
			<td class='form2'>
				<input type='text' name='rate_u' value='{$rates.rate_u}'/>
			</td>
		</tr>
		<tr>
			<td class='form1'>
				Белорусский рубль
			</td>
			<td class='form2'>
				<input type='text' name='rate_b' value='{$rates.rate_b}'/>
			</td>
		</tr>
		<tr>
		<td colspan='2' align='right'><input type='submit' value='Сохранить' class='button'/></td>
	</tr>
	</table>
	<input type='hidden' name='task' value='rate'/>
</form>
<br/>
<h2>Настройки стран</h2>
<a href='javascript://void(0)' onclick="TB_show('{lang_print id=1630400027}', 'admin_sms_country.php?TB_iframe=true&height=200&width=210', '', './images/trans.gif');">Добавить страну</a>
<br/>
{if $sms_country}
<table cellpadding='0' cellspacing='0'>
		<tr>
			<td class='header'>
				Id
			</td>
			<td class='header'>
				Страна
			</td>
			<td class='header'>
				Опции
			</td>
		</tr>
		{foreach from=$sms_country item=country}
		<tr>
			<td class='item'>
				{$country.id}
			</td>
			<td class='item'>
				{$country.title}
			</td>
			<td class='item'>
				<a href="javascript://void(0)" onclick="TB_show('{lang_print id=1630400027}', 'admin_sms_country.php?id={$country.id}&TB_iframe=true&height=200&width=250', '', './images/trans.gif');">
					Редактировать
				</a>&nbsp;&nbsp;&nbsp;
				<a href='admin_money.php?sms_country={$country.id}'>
					Удалить
				</a>
			</td>
		</tr>
		{/foreach}
</table>
{else}
	Вы пока не добавили ни одной страны.
{/if}
<br/><br/>
<h2>Настройки SMS</h2>
Здесь можете задать тарифы и страны для пользователей.<br/>
У вас должен быть настроен прием sms-платежей на <a href='http://www.a1agregator.ru' target='_blank'>a1agregator.ru</a><br/>
<b>ВАЖНО:</b> секретное слово для SMS и WebMoney должно быть одинаковое!<br/>
<a href='javascript://void(0)' onclick="TB_show('{lang_print id=1630400027}', 'admin_sms.php?TB_iframe=true&height=250&width=250', '', './images/trans.gif');">Добавить тариф</a>
{if $sms_price}
	<table cellpadding='0' cellspacing='0'>
		<tr>
			<td class='header'>
				Id
			</td>
			<td class='header'>
				Номер
			</td>
			<td class='header'>
				Слово
			</td>
			<td class='header'>
				Страна
			</td>
			<td class='header'>
				Сумма (в руб)
			</td>
			<td class='header'>
				Опции
			</td>
		</tr>
		{foreach from=$sms_price item=price}
		<tr>
			<td class='item'>
				{$price.id}
			</td>
			<td class='item'>
				{$price.number}
			</td>
			<td class='item'>
				{$price.word}
			</td>
			<td class='item'>
				{$price.country}
			</td>
			<td class='item'>
				{$price.summ}
			</td>
			<td class='item'>
				<a href='javascript://void(0)' onclick="TB_show('{lang_print id=1630400027}', 'admin_sms.php?id={$price.id}&TB_iframe=true&height=250&width=250', '', './images/trans.gif');">Редактировать</a>&nbsp;&nbsp;&nbsp;
				<a href='admin_money.php?price_id={$price.id}'>Удалить</a>
			</td>
		</tr>
		{/foreach}
	</table>
{/if}
{include file='admin_footer.tpl'}