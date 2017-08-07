{include file='admin_header.tpl'}

<h2>{lang_print id=78958804}</h2>
{lang_print id=78958806}
<br><br>

{lang_print id=78958812} {$sefcore_version}<br>
{lang_print id=78958814} {$library_version}

<br><br>

{if $sefcore_version != $library_version}
  <div class='success'><img src='../images/error.gif' class='icon' border='0'> {lang_print id=78958813}</div><br>
{/if}

{if $infomsg == 1}
  <div class='success'><img src='../images/error.gif' class='icon' border='0'> {lang_print id=78958805}</div><br>
{/if}

{if $result != 0}

  {if empty($error)}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {lang_print id=78958807}</div>
  {else}
  <div class='error'><img src='../images/error.gif' class='icon' border='0'> {$error}</div>
  {/if}

{/if}

<br>

<form action='admin_sefcore.php' method='POST'>
<input type='hidden' name='task' value='dosend'>

<table cellpadding='2' cellspacing='0'>
<tr>
<td class='form1'>{lang_print id=78958808}</td>
<td class='form2'><input style="border: 1px solid #DDD; padding: 3px" type='text' class='text' size='50' name='from_name' value='{$from_name}'></td>
</tr>
<tr>
<td class='form1'>{lang_print id=78958809}</td>
<td class='form2'><input style="border: 1px solid #DDD; padding: 3px" type='text' class='text' size='50' name='from_email' value='{$from_email}'></td>
</tr>
<tr>
<td class='form1'>{lang_print id=78958810}</td>
<td class='form2'><input style="width:500px;border: 1px solid #DDD; padding: 3px" type='text' class='text' name='subject' value='{$subject}'></td>
</tr>
<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'><textarea name="message" style="width:500px; height: 400px;border: 1px solid #DDD; padding: 3px">{$message}</textarea></td>
</tr>
<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'><input type='submit' class='button' value='{lang_print id=78958811}'></td>
</tr>

</table>

<br>

</form>

{include file='admin_footer.tpl'}