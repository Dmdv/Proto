{include file='admin_header_global.tpl'}

{* $Id: admin_lostpass_reset.tpl 235 2009-11-13 04:30:39Z phil $ *}


{literal}
<style type='text/css'>
/*html, body {
	height: 100% !important;
}
body {
	color: #666666;
	text-align: center;
	background-color: #EEEEEE;
	background-image: none;
}
td {
	font-family: "Trebuchet MS", tahoma, verdana, serif;
	font-size: 12px;
}
td.box {
	border: 1px dashed #AAAAAA;
	padding: 15px;
	background: #FFFFFF;
	font-family: "Trebuchet MS", tahoma, verdana, serif;
	font-size: 12px;
}
td.login {
	font-family: "Trebuchet MS", tahoma, verdana, serif;
	font-size: 12px;
}
input.text {
	font-family: arial, tahoma, verdana, serif;
	font-size: 12px;
}
div.error {
	text-align: center;
	padding-top: 3px;
	font-weight: bold;
}
input.button {
	font-family: arial, tahoma, verdana, serif;
	font-size: 12px;
	background: #DDDDDD;
	padding: 2px;
	font-weight: bold;
}
div.page_header {
	font-size: 19px;
}
td.success {
	font-weight: bold;
	padding: 7px 8px 7px 7px;
	background: #f3fff3;
}
td.error {
	font-weight: bold;
	color: #FF0000;
	padding: 7px 8px 7px 7px;
	background: #FFF3F3;
}*/
*					{ margin: 0; padding: 0; }
body				{ background: url(../images/g_login-page-bg.jpg) top center no-repeat #c4c4c4; font-family: arial, tahoma, verdana, serif; color: #666666;  }
.clear				{ clear: both; }
form				{ width: 430px; margin: 160px auto 0; }
legend				{ font-size:14pt;}
fieldset			{ border: 0; }
label				{ width: 195px; text-align: right; float: left; margin: 0 10px 0 0; padding: 9px 0 0 0; font-size: 14pt; }
p					{ font-size:9pt; margin:5px 0;}
span a				{ color: #000000; text-decoration:none;}
span a:hover		{ color: #000000; text-decoration:none;}
span a:visited		{ color: #000000;}
.success			{ background: #f3fff3; color: green; padding: 5px; margin:10px 15px 10px 0; -moz-border-radius: 7px; -webkit-border-radius: 7px; border-radius: 7px;}
.error				{ background: #FFF3F3; color: red; padding: 2px; margin:3px 15px 5px 0; text-align: center; -moz-border-radius: 7px; -webkit-border-radius: 7px; border-radius: 7px;}
input				{ width: 195px; height: 20px; display: block; padding: 4px; margin: 0 0 10px 0; font-size: 14pt; color: #666666;}
.g_button			{ background: url(../images/g_button-bg.png) repeat-x top center; border: 1px solid #999;
					  -moz-border-radius: 5px; border-radius: 5px; padding-top: 1px; padding-bottom: 3px; color: black; font-weight: bold;
					  -webkit-border-radius: 5px; font-family: arial, tahoma, verdana, serif; font-size: 14px;  width: 120px;  cursor:pointer;height: 30px;}
.g_button:hover		{ background: white; color: black; }
</style>
{/literal}

	<form action='admin_lostpass_reset.php' method='post'>
		<fieldset>
			<legend>{lang_print id=43}</legend>
  {* SHOW SUCCESS MESSAGE *}
  {if $valid == 1 AND $submitted == 1}
    <p class='success'>{lang_print id=44}</p>

  {* SHOW LOSTPASS RESET PAGE *}
  {elseif $valid == 1 AND $submitted == 0}


    {* SHOW ERROR MESSAGE *}
    {if $is_error != 0}
      <p class='error'>{lang_print id=$is_error}</p>
      {else}
          <p>{lang_print id=45}</p>
    {/if}
			<label for='password'>{lang_print id=46}: </label>
			<input type='password' name='admin_password' id='password'/>
			<div class="clear"></div>
			<label for='password2'>{lang_print id=47}: &nbsp;&nbsp;&nbsp;</label>
			<input type='password' name='admin_password2' id='password2'/>
			<div class="clear"></div>

			<span class='g_button' style='margin: 0 0 0 338px; padding: 6px 0pt;' class='g_button'><a href="admin_login.php" style="padding: 7px 12px;">{lang_print id=39}</a></span>
			<input type='submit' style='margin: -22px 0 0 200px;' class='g_button' value='{lang_print id=42}'/>
			<input type='hidden' name='task' value='reset'>
			<input type='hidden' name='r' value='{$r}'>
			<input type='hidden' name='admin_id' value='{$admin_id}'>
			{else}
			<p>{lang_print id=50}</p>
	{/if}
		</fieldset>
	</form>
</body>
</html>