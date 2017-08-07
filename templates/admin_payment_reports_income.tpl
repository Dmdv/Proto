{include file='admin_header.tpl'}

{literal}
<script src="../include/js/semods.js"></script>

<script>
function userpoints_growtable() {
  SEMods.B.toggle("userpoints_basic_table", "userpoints_full_table");
}

function confirm_transaction(tid) {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "confirm";
  document.getElementById('asyncform_transaction_id').value = tid;
  
  asyncform.submit();
}

function cancel_transaction(tid) {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "cancel";
  document.getElementById('asyncform_transaction_id').value = tid;
  
  asyncform.submit();
}


</script>
{/literal}


<h2>{$admin_payment_reports_income1}</h2>
{$admin_payment_reports_income2}

<br><br>

<table cellpadding='0' cellspacing='0' align='center'>
<tr>
<td align='center'>
<div class='box'>
<table cellpadding='0' cellspacing='0' xalign='center'>
<tr><form action='admin_payment_reports_income.php' method='GET'>
<td>{$admin_payment_reports_income3}<br><input type='text' class='text' name='f_user' value='{$f_user}' size='15' maxlength='50'>&nbsp;</td>
<td>{$admin_payment_reports_income8}<br><input type='text' class='text' name='f_email' value='{$f_email}' size='15' maxlength='50'>&nbsp;</td>
<td>{$admin_payment_reports_income6}<br><input type='text' class='text' name='f_title' value='{$f_title}' size='50' maxlength='100'>&nbsp;</td>
<td>{$admin_payment_reports_income4}<br><select class='text' name='f_state'><option value=-1>All</option>{section name=state_loop loop=$transaction_states}<option value='{$transaction_states[state_loop].transactionstate_id}'{if $f_state == $transaction_states[state_loop].transactionstate_id} SELECTED{/if}>{$transaction_states[state_loop].transactionstate_name}</option>{/section}</select>&nbsp;</td>
<td valign='bottom'><input type='submit' class='button' value='{$admin_payment_reports_income14}'></td>
<input type='hidden' name='s' value='{$s}'>
</tr>
<tr>
<td colspan=2>{$admin_payment_reports_income31}<br>
<select class='text' name='f_start_m'><option value="">{$admin_payment_reports_income33}</option>{foreach from=$month_array item=month}<option value='{$month.value}'{if $f_start_m == $month.value} SELECTED{/if}>{$month.name}</option>{/foreach}</select>&nbsp;
<select class='text' name='f_start_d'><option value="">{$admin_payment_reports_income34}</option>{foreach from=$day_array item=day}<option value='{$day.value}'{if $f_start_d == $day.value} SELECTED{/if}>{$day.name}</option>{/foreach}</select>&nbsp;
<select class='text' name='f_start_y'><option value="">{$admin_payment_reports_income35}</option>{foreach from=$year_array item=year}<option value='{$year.value}'{if $f_start_y == $year.value} SELECTED{/if}>{$year.name}</option>{/foreach}</select>&nbsp;
</td>
<td>{$admin_payment_reports_income32}<br>
<select class='text' name='f_end_m'><option value="">{$admin_payment_reports_income33}</option>{foreach from=$month_array item=month}<option value='{$month.value}'{if $f_end_m == $month.value} SELECTED{/if}>{$month.name}</option>{/foreach}</select>&nbsp;
<select class='text' name='f_end_d'><option value="">{$admin_payment_reports_income34}</option>{foreach from=$day_array item=day}<option value='{$day.value}'{if $f_end_d == $day.value} SELECTED{/if}>{$day.name}</option>{/foreach}</select>&nbsp;
<select class='text' name='f_end_y'><option value="">{$admin_payment_reports_income35}</option>{foreach from=$year_array item=year}<option value='{$year.value}'{if $f_end_y == $year.value} SELECTED{/if}>{$year.name}</option>{/foreach}</select>&nbsp;
</td>
</tr>
</table>
</form>
</div>
</td></tr></table>
  
<br>

{if $total_items == 0}

  <table cellpadding='0' cellspacing='0' width='400' align='center'>
  <tr>
  <td align='center'>
  <div class='box'><b>{$admin_payment_reports_income5}</b></div>
  </td></tr></table>
  <br>

{else}

  <div class='pages'>{$total_items} {$admin_payment_reports_income16} &nbsp;|&nbsp; {$admin_payment_reports_income17} {section name=page_loop loop=$pages}{if $pages[page_loop].link == '1'}{$pages[page_loop].page}{else}<a href='admin_payment_reports_income.php?s={$s}&p={$pages[page_loop].page}&f_user={$f_user}&f_title={$f_title}&f_email={$f_email}&f_state={$f_state}&f_email={$f_email}'>{$pages[page_loop].page}</a>{/if} {/section}</div>



{literal}
<style>
td.up_tblheader1 {
  background:#DFECF8 none repeat scroll 0%;
  font-weight:bold;
  padding:5px;
}

td.up_tblitem1 {
  background:#FFFFFF none repeat scroll 0%;
  border-top:1px solid #DDDDDD;
  padding:5px;
  vertical-align:middle;
}

</style>
{/literal}

  <table cellpadding='0' cellspacing='0' style='border: 1px solid #CCC'>
  <tr>
  <td class='up_tblheader1'><a href='admin_payment_reports_income.php?p={$p}&s={$u}&f_user={$f_user}&f_title={$f_title}&f_state={$f_state}&f_email={$f_email}'>{$admin_payment_reports_income18}</a></td>
  <td class='up_tblheader1'><a href='admin_payment_reports_income.php?p={$p}&s={$d}&f_user={$f_user}&f_title={$f_title}&f_state={$f_state}&f_email={$f_email}'>{$admin_payment_reports_income19}</a></td>
  <td class='up_tblheader1'>{$admin_payment_reports_income20}</td>
  <td class='up_tblheader1'><a href='admin_payment_reports_income.php?p={$p}&s={$st}&f_user={$f_user}&f_title={$f_title}&f_state={$f_state}&f_email={$f_email}'>{$admin_payment_reports_income21}</a></td>
  <td class='up_tblheader1'><a href='admin_payment_reports_income.php?p={$p}&s={$a}&f_user={$f_user}&f_title={$f_title}&f_state={$f_state}&f_email={$f_email}'>{$admin_payment_reports_income22}</a></td>
  <td class='up_tblheader1'>{$admin_payment_reports_income7}</td>
  <td class='up_tblheader1'>{$admin_payment_reports_income29}</td>
  <td class='up_tblheader1'>{$admin_payment_reports_income23}</td>
  </tr>

  {* LIST ITEMS *}
  {section name=item_loop loop=$items}
    <tr>
    <td class='up_tblitem1' nowrap='nowrap'><a href='{$url->url_create('profile', $items[item_loop].transaction_username)}'> {$items[item_loop].transaction_username}</a></td>
    <td class='up_tblitem1' nowrap='nowrap'>{$datetime->cdate("`$setting.setting_dateformat` `$setting.setting_timeformat`", $datetime->timezone($items[item_loop].transaction_date, $global_timezone))}</td>
    <td class='up_tblitem1' width='100%'>{$items[item_loop].transaction_desc}</td>
    <td class='up_tblitem1' nowrap='nowrap'>{$items[item_loop].transaction_state} {if $items[item_loop].transaction_stateid == 1} ( <a href="javascript:confirm_transaction({$items[item_loop].transaction_id})">{$admin_payment_reports_income27}</a> | <a href="javascript:cancel_transaction({$items[item_loop].transaction_id})">{$admin_payment_reports_income28}</a> ) {/if} </td>
    <td class='up_tblitem1' nowrap='nowrap'>{$items[item_loop].transaction_amount}</td>
    <td class='up_tblitem1'><a href="admin_payment_clients.php?f_email={$items[item_loop].transaction_client_email|truncate:25:"...":true}">{$items[item_loop].transaction_client_email}</a></td>
    <td class='up_tblitem1'>{$items[item_loop].transaction_handler}</td>
    <td class='up_tblitem1'>{$items[item_loop].transaction_txnid}</td>
    </tr>
  {/section}
  </table>

  <br>


  





  <table cellpadding='0' cellspacing='0' width='100%'>
  <tr>
  <td>
  </td>
  <td align='left' valign='top'>
    <div class='pages2'>{$total_items} {$admin_payment_reports_income16} &nbsp;|&nbsp; {$admin_payment_reports_income17} {section name=page_loop loop=$pages}{if $pages[page_loop].link == '1'}{$pages[page_loop].page}{else}<a href='admin_payment_reports_income.php?s={$s}&p={$pages[page_loop].page}&f_user={$f_user}&f_title={$f_title}&f_state={$f_state}&f_email={$f_email}'>{$pages[page_loop].page}</a>{/if} {/section}</div>
  </td>
  </tr>
  </table>

  <br><br>
  
  <form method=POST id="asyncform" action="admin_payment_reports_income.php">
    <input type="hidden" id="asyncform_task" name="task">
    <input type="hidden" id="asyncform_transaction_id" name="transaction_id">
      
    <input type="hidden" name="f_user" value="{$f_user}">
    <input type="hidden" name="f_title" value="{$f_title}">
    <input type="hidden" name="f_state" value="{$f_state}">
    <input type="hidden" name="f_email" value="{$f_email}">
    <input type="hidden" name="s" value="{$s}">
    <input type="hidden" name="p" value="{$p}">
  </form>
  
{/if}

{include file='admin_footer.tpl'}