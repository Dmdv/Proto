{include file='admin_header.tpl'}
{literal}
<script>
	function check_balans(user_name)
	{
		var request = new Request.JSON({
		  'url' : "../money_ajax.php",
		  'method' : "post",
		  'data' :{
			'task'  : 'check_balans',
			'user_name'  : user_name
		  },
		  'onComplete' : function(response)
		  {
			if (response["is_error"]=="user_name")
			{
				alert("Такого Пользователя не существует!");
				return false;
			}
			alert("Баланс пользователя " + user_name + " равен " + response["is_error"]);
		  }
		}).send();
	}
	function add_balans(user_name,balans)
	{
		var request = new Request.JSON({
		  'url' : "../money_ajax.php",
		  'method' : "post",
		  'data' :{
			'task'  : 'add_balans',
			'user_name'  : user_name,
			'balans'  : balans
		  },
		  'onComplete' : function(response)
		  {
			if (response["is_error"]=="user_name")
			{
				alert("Такого Пользователя не существует!");
				return false;
			}
			alert("Баланс пользователя " + user_name + " на сумму " + balans + "руб");
		  }
		}).send();
	}
</script>
{/literal}
<h2>Денежные операции</h2>
Здесь можете просмотреть все денежные операции на сайте.
<br/>
<table  style="background:#ddd" cellpadding='0' cellspacing='0'>
	<tr>
		<td class='header'>
			Имя
		</td>
		<td class="header">
			Сумма пополнения	
		</td>
		<td class="header">
			Тип пополнения
		</td>
		<td class='header'>
			&nbsp;&nbsp;Дата&nbsp;&nbsp;
		</td>
	</tr>
	{foreach from=$transact_array item=transact}
	<tr>
		<td class='item' >&nbsp;<a href="{$url->url_create('profile',$transact.user_username)}">{$transact.user_username}</a></td>
		<td class="item" align='center' style='padding-bottom:5px;'>{$transact.summ} руб</td>
		<td class="item" style='padding-bottom:5px;text-align:center'>
			{if $transact.type=="wm"}
				Оплата WebMoney
			{else}
				Оплата SMS
			{/if}
		</td>
		<td class="item" style='padding-bottom:5px;text-align:center'>{$datetime->cdate("d.m.y",$transact.data)}</td>
	</tr>
	{/foreach}
<table>
<br/>
<h2>Операции с балансом</h2>
Здесь вы можете проверить и добавить баланс любому пользователю.
<br/>
<table cellpadding='2'>
	<tr>
		<td><b>Имя пользователя:</b></td>
		<td><input type='text' name='check_username' id="check_user"/></td>
		<td><input type='button' onclick="if ($('check_user').value!='') check_balans($('check_user').value);else alert('Введите имя')" class='button' value="Проверить баланс"/></td>
	</tr>
	<tr>
		<td><b>Кому(username):</b></td>
		<td><input type='text' name='get_username' id='get_user'/></td>
		<td><b>Сколько:(в руб)</b></td>
		<td><input type='text' name='check_username' id='balans'/></td>
		<td><input type='button' class='button' onclick="if ($('get_user').value!='') add_balans($('get_user').value,$('balans').value);else alert('Введите имя')" value="Добавить баланс"/></td>
	</tr>
</table>
{include file='admin_footer.tpl'}