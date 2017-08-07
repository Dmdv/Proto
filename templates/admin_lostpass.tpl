{include file='admin_header_global.tpl'}

{* $Id: admin_lostpass.tpl 236 2011-01-19 03:53:39 Gooos SocEngine.ru *}


{literal}
<style type='text/css'>
*					{ margin: 0; padding: 0; }
body				{ background: url(../images/g_login-page-bg.jpg) top center no-repeat #c4c4c4; font-family: arial, tahoma, verdana, serif; color: #666666;  }
.clear				{ clear: both; }
form				{ width: 430px; margin: 160px auto 0; }
legend				{ font-size:14pt;}
fieldset			{ border: 0; }
label				{ width: 115px; text-align: right; float: left; margin: 0 10px 0 0; padding: 9px 0 0 0; font-size: 14pt; }
p					{ font-size:9pt; margin:10px 15px 10px 0;}
span a				{ color: #000000; text-decoration:none;}
span a:hover		{ color: #000000; text-decoration:none;}
span a:visited		{ color: #000000;}
.error				{ background: #FFF3F3; color: red; padding: 5px; margin:8px 15px 9px 0; text-align: center; -moz-border-radius: 10px; -webkit-border-radius: 10px; border-radius: 10px;}
input				{ width: 220px; height: 20px; display: block; padding: 4px; margin: 0 0 10px 0; font-size: 14pt; color: #666666;}
.g_button			{ background: url(../images/g_button-bg.png) repeat-x top center; border: 1px solid #999;
					  -moz-border-radius: 5px; border-radius: 5px; padding-top: 1px; padding-bottom: 3px; color: black; font-weight: bold;
					  -webkit-border-radius: 5px; font-family: arial, tahoma, verdana, serif; font-size: 14px;  width: 100px;  cursor:pointer;height: 30px;}
.g_button:hover		{ background: white; color: black; }

</style>
{/literal}

	<form action='admin_lostpass.php' method='post'>
		<fieldset>

			<legend>{lang_print id=33}</legend>
				{* SHOW SUCCESS MESSAGE IF NO ERROR *}
				{if $submitted == 1 AND $is_error == 0}
				<p>{lang_print id=35}</p>
				{else}
					{* SHOW ERROR MESSAGE *}
					{if $is_error == 1}
					<p class='error'><img src='../images/error.gif' border='0' class='icon2'>{lang_print id=36}</p>
					{else}
					<p>{lang_print id=34}</p>
					{/if}
			<label for='email'>{lang_print id=37}&nbsp;</label>
			<input type='text' id='email' name='admin_email'/>
			<div class="clear"></div>
			<br />
			<span style="margin: 0pt 0pt 0pt 275px; padding: 6px 0pt;" class="g_button"><a href="admin_login.php" style="padding: 7px 12px;">{lang_print id=39}</a></span>
			<input type='submit' style='margin: -22px 0 0 160px;' class='g_button' value='{lang_print id=38}'/>
			<input type='hidden' name='task' value='send_email'>
		</fieldset>
	</form>
				{/if}
</body>
</html>
