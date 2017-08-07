{include file='admin_header_global.tpl'}

{* $Id: admin_login.tpl 236 2011-01-19 03:53:39 Gooos SocEngine.ru *}


{literal}
<script type="text/javascript">
<!--
window.addEvent('domready', function() { document.getElementById('username').focus(); });
//-->
</script>


<style type='text/css'>
*					{ margin: 0; padding: 0; }
body				{ background: url(../images/g_login-page-bg.jpg) top center no-repeat #c4c4c4; font-family: arial, tahoma, verdana, serif; color: #666666;  }
.clear				{ clear: both; }
form				{ width: 430px; margin: 165px auto 0; }
fieldset			{ border: 0; }
legend				{ font-size:14pt;}
label				{ width: 115px; text-align: right; float: left; margin: 0 10px 0 0; padding: 9px 0 0 0; font-size: 14pt; }
input				{ width: 220px; height: 25px; display: block; padding: 4px; margin: 0 0 10px 0; font-size: 14pt; color: #666666;}
.g_button			{ background: url(../images/g_button-bg.png) repeat-x top center; border: 1px solid #999;
					  -moz-border-radius: 5px; border-radius: 5px; padding-top: 1px; padding-bottom: 3px; color: black; font-weight: bold;
					  -webkit-border-radius: 5px; font-family: arial, tahoma, verdana, serif; font-size: 14px;  width: 80px; cursor:pointer;height: 30px;}
.g_button:hover		{ background: white; color: black; }
div.error			{ background: #FFF3F3; text-align: center; padding: 5px; font-weight: bold; font-size: 9pt; margin:10px 15px 10px 0; -moz-border-radius: 10px; -webkit-border-radius: 10px; border-radius: 10px;}

</style>
{/literal}

	<form action='admin_login.php' method='POST'>
		<fieldset>
			{if $is_error != 0}<div class='error'>{lang_print id=$is_error}</div>
			<legend>{lang_print id=639}</legend>
			{else}
			<legend>&nbsp;</legend>
			<label for='username'>{lang_print id=28}: </label>
			<input type='text' name='username' id='username'/>
			<div class="clear"></div>
			<label for='password'>{lang_print id=29}: </label>
			<input type='password' name='password' id='password'/>
			<div class="clear"></div>
			<br />
			<input type='submit' style='margin: -20px 0 0 277px;' class='g_button' value='{lang_print id=30}'/>
			<input type='hidden' name='task' value='dologin'>
			<NOSCRIPT><input type='hidden' name='javascript' value='no'></NOSCRIPT>
			{/if}
		</fieldset>
	</form>
 <div align="center" style="padding-top:60px">

  </div>
</body>
</html>