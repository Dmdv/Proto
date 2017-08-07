{include file='admin_header.tpl'}

{literal}
<script src="../include/js/semods.js"></script>

{/literal}

<h2>{$admin_payment_clients1}</h2>
{$admin_payment_clients2}

<br><br>

<table cellpadding='0' cellspacing='0' align='center'>
<tr>
<td align='center'>
<div class='box'>
<table cellpadding='0' cellspacing='0' xalign='center'>
<tr><form action='admin_payment_clients.php' method='GET'>
<td>{$admin_payment_clients3}<br><input type='text' class='text' name='f_user' value='{$f_user}' size='15' maxlength='50'>&nbsp;</td>
<td>{$admin_payment_clients4}<br><input type='text' class='text' name='f_email' value='{$f_email}' size='15' maxlength='100'>&nbsp;</td>
<td>{$admin_payment_clients13}<br><input type='text' class='text' name='f_name' value='{$f_name}' size='50' maxlength='100'>&nbsp;</td>
<td valign='bottom'><input type='submit' class='button' value='{$admin_payment_clients14}'></td>
<input type='hidden' name='s' value='{$s}'>
</form>
</tr>
</table>
</div>
</td></tr></table>
  
<br>

{if $total_items == 0}

  <table cellpadding='0' cellspacing='0' width='400' align='center'>
  <tr>
  <td align='center'>
  <div class='box'><b>{$admin_payment_clients21}</b></div>
  </td></tr></table>
  <br>

{else}

  <div class='pages'>{$total_items} {$admin_payment_clients16} &nbsp;|&nbsp; {$admin_payment_clients17} {section name=page_loop loop=$pages}{if $pages[page_loop].link == '1'}{$pages[page_loop].page}{else}<a href='admin_payment_clients.php?s={$s}&p={$pages[page_loop].page}&f_user={$f_user}&f_text={$f_text}&f_type={$f_type}&f_plan={$f_plan}&f_enabled={$f_enabled}'>{$pages[page_loop].page}</a>{/if} {/section}</div>

  {* SHORT TABLE *}
  
  <table cellpadding='0' cellspacing='0' class='list' Xstyle="width:auto;" xwidth='100%' id="usertable">
  <tr>
  <td class='header'>{$admin_payment_clients3}</td>
  <td class='header'>{$admin_payment_clients4}</td>
  <td class='header'>{$admin_payment_clients5}</td>
  <td class='header'>{$admin_payment_clients6}</td>
  <td class='header'>{$admin_payment_clients7}</td>
  <td class='header'>{$admin_payment_clients8}</td>
  <td class='header'>{$admin_payment_clients9}</td>
  <td class='header'>{$admin_payment_clients10}</td>
  <td class='header'>{$admin_payment_clients11}</td>
  <td class='header'>{$admin_payment_clients12}</td>

  </tr>
  
  {* LOOP THROUGH ITEMS *}
  {foreach from=$clients item=client}
    <tr class='{cycle values="background1,background2"}'>
    <td class='item' Xstyle='padding-left: 0px;'>{$client.user_username}</td>
    <td class='item'>{$client.client_email}</td>
    <td class='item'>{$client.client_firstname}</td>
    <td class='item'>{$client.client_lastname}</td>
    <td class='item'>{$client.client_street}</td>
    <td class='item'>{$client.client_city}</td>
    <td class='item'>{$client.client_state}</td>
    <td class='item'>{$client.client_zipcode}</td>
    <td class='item'>{$client.client_country}</td>
    <td class='item'><a href="admin_payment_reports_income.php?f_email={$client.client_email}">{$admin_payment_clients18}</a></td>
    </tr>
  {/foreach}
  
  </table>

  <table cellpadding='0' cellspacing='0' width='100%'>
  <tr>
  <td>
  </td>
  <td align='left' valign='top'>
    <div class='pages2'>{$total_items} {$admin_payment_clients16} &nbsp;|&nbsp; {$admin_payment_clients17} {section name=page_loop loop=$pages}{if $pages[page_loop].link == '1'}{$pages[page_loop].page}{else}<a href='admin_payment_clients.php?s={$s}&p={$pages[page_loop].page}&f_user={$f_user}&f_text={$f_text}&f_type={$f_type}&f_plan={$f_plan}&f_enabled={$f_enabled}'>{$pages[page_loop].page}</a>{/if} {/section}</div>
  </td>
  </tr>
  </table>

  <br><br>
  
{/if}

{include file='admin_footer.tpl'}