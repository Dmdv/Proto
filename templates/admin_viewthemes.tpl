{include file='admin_header.tpl'}

<h2>{$admin_viewthemes1}</h2>
{$admin_viewthemes2}

<br><br>

{if $is_error != 0}
  <div class='error'><img src='../images/error.gif' border='0' class='icon'> {$error_message}</div>
{/if}

{if $result != ''}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {$result}</div>
{/if}



<br>

<table cellpadding='0' cellspacing='0' class='list'>
<tr>
<td class='header' width='10'>{$admin_viewthemes4}</td>
<td class='header'>{$admin_viewthemes5}</td>
<td class='header'>{$admin_viewthemes6}</td>
<td class='header'>{$admin_viewthemes15}</td>
<td class='header' width='100'>{$admin_viewthemes7}</td>
</tr>
{section name=theme_loop loop=$themes}
  <tr class='{cycle values="background1,background2"}'>
  <td class='item'>{$themes[theme_loop].theme_id}</td>
  <td class='item'>{$themes[theme_loop].theme_name}</td>
  <td class='item'>{$themes[theme_loop].theme_desc}</td>
  <td class='item' align='center'><a href='admin_viewthemes.php?task=setdefault&theme_id={$themes[theme_loop].theme_id}'><img src='../images/icons/{if $themes[theme_loop].theme_default == 1}admin_checkbox2.gif{else}admin_checkbox1.gif{/if}' border='0' class='icon'></a></td>  
  <td class='item'>[ <a href='admin_viewthemes_edit.php?theme_id={$themes[theme_loop].theme_id}'>{$admin_viewthemes8}</a> ] [ <a href='admin_viewthemes.php?task=delete&confirm=1&theme_id={$themes[theme_loop].theme_id}'>{$admin_viewthemes9}</a> ]</td>
  </tr>
{/section}
</table>

<br />
<form action='admin_viewthemes_add.php' method='GET'>
<input type='submit' class='button' value='{$admin_viewthemes3}'>
</form>

{include file='admin_footer.tpl'}