{include file='admin_header.tpl'}

<link rel="stylesheet" href="../templates/he_admin_styles.css" title="stylesheet" type="text/css" />
<link rel="stylesheet" href="../templates/he_avatar_styles.css" title="stylesheet" type="text/css" />

<h2>{lang_print id=690701009}</h2>
{lang_print id=690701010}
<br />
<br />

{if $message}
	{if $message.type=='success'}
		<div class='he_success'><img src='../images/success.gif' border='0' class='icon'> {$message.text}</div>
	{/if}
	{if $message.type=='error'}
		<div class='he_error'><img src='../images/error.gif' border='0' class='icon'> {$message.text}</div>
	{/if}
{/if}

<form method="post">
<h2>{lang_print id=690701011}</h2>
<div class="he_body">
{foreach from=$avatars item=avatar}
	<div class="he_avatar_item">
		<img src="../uploads_admin/avatar/{$avatar.filename}" width="100" height="100"/><br/>
		<input type="checkbox" value="{$avatar.id}" name="avatar_ids[]" onchange="$(this).getParent().toggleClass('he_avatar_del_item')"/>
	</div>
{/foreach}
	<div class="clr"></div>
	<br/>
	<input type="hidden" name="task" value="delete_avatars"/>
	<input class="button" type="submit" value="{lang_print id=690701012}"/>
</div>
 </form>

<br/>
<br/>

<h2>{lang_print id=690701013}</h2>
{lang_print id=690701014} 
<form method="post" enctype="multipart/form-data">
<div class="he_body">
	<input type="file" name="avatar_file" onchange="this.form.submit();"/>
	<input type="hidden" name="task" value="new_avatar"/>
</div>
</form>

{include file='admin_footer.tpl'}