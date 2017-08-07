{include file='admin_header.tpl'}

<script>
  var lang_dlg_title1 = "{$admin_viewcampaigns50}";
  var lang_dlg_text1 = "{$admin_viewcampaigns51}";
  var ad_id = 0;
</script>

{literal}
<link rel="stylesheet" href="../templates/styles_campaigns.css" title="stylesheet" type="text/css">  

<script type="text/javascript" src="../include/js/semods.js"></script>
<script type="text/javascript" src="../include/js/semods.controls.dialog.js"></script>

<script>

function togglefield(id1,id2) {
  if(id2.checked==true) {
    document.getElementById(id1).value='';
    document.getElementById(id1).disabled=true;
    document.getElementById(id1).style.backgroundColor='#DDDDDD';
  } else {
    document.getElementById(id1).disabled=false;
    document.getElementById(id1).style.backgroundColor='#FFFFFF';
  }
}

function ad_delete(delete_ad_id) {
  ad_id = delete_ad_id;
  new SEMods.Controls.Dialog( { title : lang_dlg_title1, text : lang_dlg_text1, width : "300px", height : "120px", onYes : ad_delete_confirmed } );
}

function ad_delete_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "deletead";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.submit();
}
</script>
{/literal}

<h2>{$admin_viewcampaigns1}</h2>
{$admin_viewcampaigns2}

<br><br>

<table cellpadding='0' cellspacing='0' align='center'>
<tr>
<td align='center'>
<div class='box'>
<table cellpadding='0' cellspacing='0' xalign='center'>
<tr><form action='admin_viewcampaigns.php' method='GET'>
<td>{$admin_viewcampaigns40}<br><input type='text' class='text' name='f_user' value='{$f_user}' size='15' maxlength='50'>&nbsp;</td>
<td>{$admin_viewcampaigns41}<br><input type='text' class='text' name='f_title' value='{$f_title}' size='50' maxlength='100'>&nbsp;</td>
<td>{$admin_viewcampaigns42}<br><select class='text' name='f_status'><option value=-1>{$admin_viewcampaigns44}</option>{foreach from=$adstatus_types item=adstatus}<option value='{$adstatus.adstatus_id}'{if $f_status == $adstatus.adstatus_id} SELECTED{/if}>{$adstatus.adstatus_name}</option>{/foreach}</select>&nbsp;</td>
<td>{$admin_viewcampaigns43}<br><select class='text' name='f_paid'><option value=-1>{$admin_viewcampaigns44}</option>{foreach from=$adpaid_types item=adpaid}<option value='{$adpaid.adpaid_id}'{if $f_paid == $adpaid.adpaid_id} SELECTED{/if}>{$adpaid.adpaid_name}</option>{/foreach}</select>&nbsp;</td>
<td valign='bottom'><input type='submit' class='button' value='{$admin_viewcampaigns45}'></td>
<input type='hidden' name='s' value='{$s}'>
</tr>
</table>
</form>
</div>
</td></tr></table>

<br>

{if $ads_total == 0}

<table width="400" cellspacing="0" cellpadding="0" align="center">
<tr>
  <td align="center">
  <div class="box"><b>{$admin_viewcampaigns17}</b></div>
</td></tr>
</table>

{else}

  <div class='pages'>{$total_items} {$admin_viewcampaigns30} &nbsp;|&nbsp; {$admin_viewcampaigns31} {section name=page_loop loop=$pages}{if $pages[page_loop].link == '1'}{$pages[page_loop].page}{else}<a href='admin_viewcampaigns.php?s={$s}&p={$pages[page_loop].page}&f_user={$f_user}&f_title={$f_title}&f_status={$f_status}&f_paid={$f_paid}'>{$pages[page_loop].page}</a>{/if} {/section}</div>

<table cellpadding='0' cellspacing='0' class='list' width='100%'>
<tr>
<td class='header' width='10'><a class='header' href='admin_viewcampaigns.php?s={$i}'>{$admin_viewcampaigns5}</a>&nbsp;</td>
<td class='header' align='center' nowrap='nowrap'>{$admin_viewcampaigns40}&nbsp;</td>
<td class='header' width='100%'><a class='header' href='admin_viewcampaigns.php?s={$n}'>{$admin_viewcampaigns6}</a>&nbsp;</td>
<td class='header' align='center'>{$admin_viewcampaigns7}&nbsp;</td>
<td class='header' align='center'>{$admin_viewcampaigns38}&nbsp;</td>
<td class='header' align='center' align='center'><a class='header' href='admin_viewcampaigns.php?s={$v}'>{$admin_viewcampaigns8}</a>&nbsp;</td>
<td class='header' align='center' align='center'><a class='header' href='admin_viewcampaigns.php?s={$c}'>{$admin_viewcampaigns9}</a>&nbsp;</td>
<td class='header' align='center' align='center'>{$admin_viewcampaigns10}&nbsp;</td>
<td class='header' nowrap='nowrap' width='10'>{$admin_viewcampaigns11}</td>
</tr>

  {section name='ad_loop' loop=$ads}

    {if $ads[ad_loop].ad_total_views == "" OR $ads[ad_loop].ad_total_views == 0}
      {assign var=ad_views value="<font style='color: #AAAAAA;'>---</font>"}
    {else}
      {assign var=ad_views value=$ads[ad_loop].ad_total_views}
    {/if}
    {if $ads[ad_loop].ad_total_clicks == "" OR $ads[ad_loop].ad_total_clicks == 0}
      {assign var=ad_clicks value="<font style='color: #AAAAAA;'>---</font>"}
    {else}
      {assign var=ad_clicks value=$ads[ad_loop].ad_total_clicks}
    {/if}
    {if $ads[ad_loop].ad_name == ""}
      {assign var='ad_name' value="<i>$admin_viewcampaigns12</i>"}
    {else}
      {assign var='ad_name' value=$ads[ad_loop].ad_name}
    {/if}
    
    <tr class='{cycle values="background1,background2"}'>
    <td class='item'>{$ads[ad_loop].ad_id}&nbsp;</td>
    <td class='item' nowrap='nowrap'><a href='{$url->url_create('profile', $ads[ad_loop].user_username)}'> {$ads[ad_loop].user_username|truncate:25:"...":true}</a></td>
    <td class='item'>{$ad_name}&nbsp;</td>
    <td class='item' nowrap='nowrap' align='center'>{$ads[ad_loop].ad_statustext}&nbsp;</td>
    <td class='item' nowrap='nowrap' align='center'>{$ads[ad_loop].ad_paidtext}&nbsp;</td>
    <td class='item' align='center'>{$ad_views}&nbsp;</td>
    <td class='item' align='center'>{$ad_clicks}&nbsp;</td>
    <td class='item' align='center'>{$ads[ad_loop].ad_ctr}&nbsp;</td>
    <td class='item' nowrap='nowrap'>
      <a href='admin_campaigns_editad.php?ad_id={$ads[ad_loop].ad_id}'>{$admin_viewcampaigns13}</a>
      <span> | </span>
      <a href='javascript:ad_delete({$ads[ad_loop].ad_id})'>{$admin_viewcampaigns16}</a>
      {if $ads[ad_loop].ad_status == 3}
        <span> | </span>
        <a href='admin_viewcampaigns.php?task=pause&ad_id={$ads[ad_loop].ad_id}'>{$admin_viewcampaigns14}</a>
      {elseif $ads[ad_loop].ad_status == 4}
        <span> | </span>
        <a href='admin_viewcampaigns.php?task=unpause&ad_id={$ads[ad_loop].ad_id}'>{$admin_viewcampaigns15}</a>
      {/if}
    </td>
  {/section}

</table>

</td>
</tr>
</table>
{/if}

<form method="POST" id="asyncform" name="asyncform" action="admin_viewcampaigns.php">
  <input type="hidden" id="asyncform_task" name="task">
  <input type="hidden" id="asyncform_item_id" name="ad_id">

  <input type="hidden" name="f_user" value="{$f_user}">
  <input type="hidden" name="f_title" value="{$f_title}">
  <input type="hidden" name="f_status" value="{$f_status}">
  <input type="hidden" name="f_paid" value="{$f_paid}">
  <input type="hidden" name="p" value="{$p}">
  <input type="hidden" name="s" value="{$s}">

</form>

{include file='admin_footer.tpl'}