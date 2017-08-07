{include file='admin_header.tpl'}

<script>
  var lang_dlg_title1 = "{$admin_campaigns_editad40}";
  var lang_dlg_text1 = "{$admin_campaigns_editad41}";

  var lang_dlg_title2 = "{$admin_campaigns_editad42}";
  var lang_dlg_text2 = "{$admin_campaigns_editad43}";
  
  var ad_id = {$userad->userad_info.ad_id};
</script>

{literal}
<link rel="stylesheet" href="../templates/styles_campaigns.css" title="stylesheet" type="text/css">  

<script type="text/javascript" src="../include/js/semods.js"></script>
<script type="text/javascript" src="../include/js/semods.controls.multiselect.js"></script>
<script type="text/javascript" src="../include/js/semods.controls.dialog.js"></script>

<script>

function edit_banner() {
  SEMods.B.toggle("banner_edit", "edit_banner_text", "save_banner_text");
}

function save_banner() {
  SEMods.B.toggle("banner_edit", "edit_banner_text", "save_banner_text");
  SEMods.B.show("edit_banner_reminder");
  SEMods.B.ge("ad_html").value = SEMods.B.ge("ad_html_editor").value;
}

function cancel_save_banner() {
  SEMods.B.toggle("banner_edit", "edit_banner_text", "save_banner_text");
}

function ad_html_onChange() {
  placeholder = SEMods.B.ge("banner_preview_placeholder");
  if(placeholder) {
    placeholder.innerHTML = SEMods.B.ge("ad_html_editor").value;
  }
}


function preview_banner(){
}

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

function ad_approve() {
  new SEMods.Controls.Dialog( { title : lang_dlg_title1, text : lang_dlg_text1, width : "300px", height : "180px", onYes : ad_approve_confirmed } );
}

function ad_approve_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "approvead";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.submit();
}


function ad_reject() {
  new SEMods.Controls.Dialog( { title : lang_dlg_title2, text : lang_dlg_text2, width : "300px", height : "180px", onYes : ad_reject_confirmed } );
}

function ad_reject_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "rejectad";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.submit();
}


function ad_block() {
  ad_block_confirmed();
}

function ad_block_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "blockad";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.action = 'admin_campaigns_editad.php';
  asyncform.submit();
}


function ad_unblock() {
  ad_unblock_confirmed();
  
}

function ad_unblock_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "unblockad";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.action = 'admin_campaigns_editad.php';
  asyncform.submit();
}

function ad_pause() {
  ad_pause_confirmed();
}

function ad_pause_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "pausead";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.action = 'admin_campaigns_editad.php';
  asyncform.submit();
}

function ad_resume() {
  ad_resume_confirmed();
}

function ad_resume_confirmed() {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "resumead";
  document.getElementById('asyncform_item_id').value = ad_id;
  asyncform.action = 'admin_campaigns_editad.php';
  asyncform.submit();
}



function init_multiselects() {
  if(SEMods.B.ge("campaign_pages_div"))
    new SEMods.Controls.MultiSelect( "campaign_pages" );

  if(SEMods.B.ge("campaign_subnets_div"))
    new SEMods.Controls.MultiSelect( "campaign_subnets" );
}

SEMods.B.register_onload( init_multiselects );
</script>

{/literal}
 

<h2>{$admin_campaigns_editad1}</h2>
{$admin_campaigns_editad2}

<br><br>

{if $is_error != 0}
<div class='error'><img src='../images/error.gif' border='0' class='icon'> {$error_message}</div>
{/if}

<div style="padding: 5px; padding-right: 50px">

{if $userad->userad_info.ad_status == 0}
<div class="campaignsdivbutton" style="margin-left:10px">
    <a href="javascript:ad_reject()">
      <img border="0" src="../images/icons/campaigns_reject.png" class="icon"/> {$admin_campaigns_editad15}
    </a>
</div>

<div class="campaignsdivbutton">
    <a href="javascript:ad_approve()">
      <img border="0" src="../images/icons/campaigns_approve.png" class="icon"/> {$admin_campaigns_editad14}
    </a>
</div>

{elseif $userad->userad_info.ad_status == 2 OR $userad->userad_info.ad_status == 3 OR $userad->userad_info.ad_status == 4}

<div class="campaignsdivbutton" style="margin-left:10px">
    <a href="javascript:ad_block()">
      <img border="0" src="../images/icons/campaigns_block.png" class="icon"/> {$admin_campaigns_editad30}
    </a>
</div>

{if $userad->userad_info.ad_status == 3}
<div class="campaignsdivbutton">
    <a href="javascript:ad_pause()">
      <img border="0" src="../images/icons/campaigns_pause.png" class="icon"/> {$admin_campaigns_editad32}
    </a>
</div>
{elseif $userad->userad_info.ad_status == 4}
<div class="campaignsdivbutton">
    <a href="javascript:ad_resume()">
      <img border="0" src="../images/icons/campaigns_play.png" class="icon"/> {$admin_campaigns_editad33}
    </a>
</div>
{/if}


{elseif $userad->userad_info.ad_status == 6}

<div class="campaignsdivbutton">
    <a href="javascript:ad_unblock()">
      <img border="0" src="../images/icons/campaigns_unblock.gif" class="icon"/> {$admin_campaigns_editad31}
    </a>
</div>

{/if}

  
<form action='admin_campaigns_editad.php' method='POST'>
<input type='hidden' name='task' value='editad'>
<input type='hidden' name='ad_id' value='{$userad->userad_info.ad_id}'>
<textarea style="display:none" name='ad_html' id='ad_html'">{$ad_html}</textarea>

<table cellpadding='0' cellspacing='0'>

<tr>
<td class='form1'>{$admin_campaigns_editad3}</td>
<td class='form2'>
  <div id="ad_name_view" style="display:block"> {$userad->userad_info.ad_name} </div>
  <div id="ad_name_edit" style="display:none"><input style="width:400px" type='text' class='text' name='ad_name' value='{$userad->userad_info.ad_name}' size='40' maxlength='250'></div>
</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad10}</td>
<td class='form2'>{$userad->userad_info.ad_statustext}</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad9}</td>
<td class='form2'>
  <select class='text' name='ad_paid'>
  {foreach from=$adpaid_types item=adpaid}
  <option value='{$adpaid.adpaid_id}'{if $userad->userad_info.ad_paid == $adpaid.adpaid_id} SELECTED{/if}>{$adpaid.adpaid_name}</option>
  {/foreach}
  </select>
</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad4}</td>
<td class='form2'>{$userad->userad_info.ad_typetext}</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad29}</td>
<td class='form2'>
  {*<input style="width:400px" type='text' class='text' name='ad_url' value='{$userad->userad_info.ad_url}' size='40' maxlength='250'>*}
  {$userad->userad_info.ad_url}
</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad5}</td>
<td class='form2'>
  {if $ad_target_networks }

    <input id="campaign_subnets_input" type="text" readonly="readonly" class="multiSelect" value="{$admin_campaigns_editad46}" style="cursor: default;" />
    <input disabled type="hidden" id="campaign_subnets_all" name="campaign_subnets_all" value="{$campaign_subnets_all}">
    <iframe border=0 frameBorder=0 class="layerfix" id="campaign_subnets_iframe"></iframe>
    <div id="campaign_subnets_div" class="multiSelectOptions" style="position: absolute; z-index: 99999; display: none;">
    <input type="hidden" disabled class="selectAll" />
    {foreach from=$ad_target_subnets_array item=subnet}
    <label> {$subnet.subnet_name} </label>
    {/foreach}
    </div>

  {else}
  {$admin_campaigns_editad12}
  {/if}
</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad6}</td>
<td class='form2'>
  {if $ad_target_pages }

    <input id="campaign_pages_input" type="text" readonly="readonly" class="multiSelect" value="{$admin_campaigns_editad45}" style="cursor: default;" />
    <input disabled type="hidden" id="campaign_pages_all" name="campaign_pages_all" value="{$campaign_pages_all}">
    <iframe border=0 frameBorder=0 class="layerfix" id="campaign_pages_iframe"></iframe>
    <div id="campaign_pages_div" class="multiSelectOptions" style="position: absolute; z-index: 99999; display: none;">
    <input type="hidden" disabled class="selectAll" />
    {foreach from=$ad_target_pages_array item=xpage}
    <label> {$xpage} </label>
    {/foreach}
    </div>

  {else}
  {$admin_campaigns_editad12}
  {/if}
</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad47}</td>
<td class='form2'>
  {if $userad->userad_info.ad_public}{$admin_campaigns_editad11}{else}{$admin_campaigns_editad12}{/if}
</td>
</tr>


<tr>
<td class='form1'>{$admin_campaigns_editad7}</td>
<td class='form2'><a href="admin_campaigns_editcampaign.php?campaign_id={$userad->userad_info.ad_campaign_id}">{$userad->userad_info.campaign_name}</a></td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad8}</td>
<td class='form2'>{$ad_pricing_modeltext}</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad16}</td>
<td class='form2'>{$ad_placementtext}</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad34}</td>
<td class='form2'>
  <input type='text' class='text' name='ad_weight' value='{$userad->userad_info.ad_weight}' size='5' maxlength='5'>
  <div class='form_desc'>{$admin_campaigns_editad35}</div>
</td>
</tr>


<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'> &nbsp;</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editad17}</td>
<td class='form2'>
  <select class='text' name='ad_date_start[month]'>
  <option></option>
  {foreach from=$month_array item=month}
    <option value='{$month.month_id}'{if $month.month_id == $ad_date_start.month} SELECTED{/if}>{$month.month_name}</option>
  {/foreach}
  </select>
  <select class='text' name='ad_date_start[day]'>
  <option></option>
  {foreach from=$day_array item=day}
    <option value='{$day.day_id}'{if $day.day_id == $ad_date_start.day} SELECTED{/if}>{$day.day_name}</option>
  {/foreach}
  </select>
  <select class='text' name='ad_date_start[year]'>
  <option></option>
  {foreach from=$year_array item=year}
    <option value='{$year.year_id}'{if $year.year_id == $ad_date_start.year} SELECTED{/if}>{$year.year_name}</option>
  {/foreach}
  </select>
  &nbsp;&nbsp;<b>at</b>&nbsp;&nbsp;
  <select class='text' name='ad_date_start[hour]'>
  <option></option>
  {section name=ad_date_start_hour_loop start=1 loop=13}
    <option{if $ad_date_start.hour == $smarty.section.ad_date_start_hour_loop.index} selected='selected'{/if}>{$smarty.section.ad_date_start_hour_loop.index}</option>
  {/section}
  </select>&nbsp;<b>:</b>&nbsp;
  <select class='text' name='ad_date_start[minute]'>
  <option></option>
  {section name=ad_date_start_minute_loop start=0 loop=60}
    <option{if $ad_date_start.minute == $smarty.section.ad_date_start_minute_loop.index} selected='selected'{/if}>{$smarty.section.ad_date_start_minute_loop.index|string_format:"%02d"}</option>
  {/section}
  </select>
  <select class='text' name='ad_date_start[ampm]'>
  <option></option>
  <option{if $ad_date_start.ampm == "$admin_campaigns_editad25"} selected='selected'{/if}>{$admin_campaigns_editad25}</option>
  <option{if $ad_date_start.ampm == "$admin_campaigns_editad26"} selected='selected'{/if}>{$admin_campaigns_editad26}</option>
  </select>
</td>
</tr>
<tr>
<td class='form1'>{$admin_campaigns_editad18}</td>
<td class='form2'>

  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='radio' name='ad_date_end_options' id='timelimit0' value='0' onClick="hidediv('enddate')"{if $userad->userad_info.ad_date_end == 0} checked='checked'{/if}></td>
  <td><label for='timelimit0'>{$admin_campaigns_editad19}</label></td>
  </tr>
  <tr>
  <td><input type='radio' name='ad_date_end_options' id='timelimit1' value='1' onClick="showdiv('enddate')"{if $userad->userad_info.ad_date_end != 0} checked='checked'{/if}></td>
  <td><label for='timelimit1'>{$admin_campaigns_editad20}</label></td>
  </tr>
  </table>

  <div style='margin-top: 7px; margin-bottom: 2px;{if $userad->userad_info.ad_date_end == 0} display: none;{/if}' id='enddate'>
    <select class='text' name='ad_date_end[month]'>
    <option></option>
    {foreach from=$month_array item=month}
      <option value='{$month.month_id}'{if $month.month_id == $ad_date_end.month} SELECTED{/if}>{$month.month_name}</option>
    {/foreach}
    </select>
    <select class='text' name='ad_date_end[day]'>
    <option></option>
    {foreach from=$day_array item=day}
      <option value='{$day.day_id}'{if $day.day_id == $ad_date_end.day} SELECTED{/if}>{$day.day_name}</option>
    {/foreach}
    </select>
    <select class='text' name='ad_date_end[year]'>
    <option></option>
    {foreach from=$year_array item=year}
      <option value='{$year.year_id}'{if $year.year_id == $ad_date_end.year} SELECTED{/if}>{$year.year_name}</option>
    {/foreach}
    </select>
    &nbsp;&nbsp;<b>at</b>&nbsp;&nbsp;
    <select class='text' name='ad_date_end[hour]'>
    <option></option>
    {section name=ad_date_end_hour_loop start=1 loop=13}
      <option{if $ad_date_end.hour == $smarty.section.ad_date_end_hour_loop.index} selected='selected'{/if}>{$smarty.section.ad_date_end_hour_loop.index}</option>
    {/section}
    </select>&nbsp;<b>:</b>&nbsp;
    <select class='text' name='ad_date_end[minute]'>
    <option></option>
    {section name=ad_date_end_minute_loop start=0 loop=60}
      <option{if $ad_date_end.minute == $smarty.section.ad_date_end_minute_loop.index} selected='selected'{/if}>{$smarty.section.ad_date_end_minute_loop.index|string_format:"%02d"}</option>
    {/section}
    </select>
    <select class='text' name='ad_date_end[ampm]'>
    <option></option>
    <option{if $ad_date_end.ampm == "$admin_campaigns_editad25"} selected='selected'{/if}>{$admin_campaigns_editad25}</option>
    <option{if $ad_date_end.ampm == "$admin_campaigns_editad26"} selected='selected'{/if}>{$admin_campaigns_editad26}</option>
    </select>
  </div>
</td>
</tr>
<tr>
<td class='form1'>{$admin_campaigns_editad21}</td>
<td class='form2'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='text' id='views_field' name='ad_limit_views' class='text' size='7' maxlength='10'{if $userad->userad_info.ad_limit_views == 0} disabled='disabled' style='background: #DDDDDD;'{/if} value='{if $userad->userad_info.ad_limit_views}{$userad->userad_info.ad_limit_views}{/if}'>&nbsp;&nbsp;&nbsp;</td>
  <td><input type='checkbox' id='ad_limit_views' name='ad_limit_views_unlimited' value='1' class='checkbox'{if $userad->userad_info.ad_limit_views == 0} checked='checked'{/if} onClick="togglefield('views_field', this)"> <label for='ad_limit_views'>{$admin_campaigns_editad24}</label></td>
  </tr>
  </table>
</td>
</tr>
<tr>
<td class='form1'>{$admin_campaigns_editad22}</td>
<td class='form2'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='text' id='clicks_field' name='ad_limit_clicks' class='text' size='7' maxlength='10'{if $userad->userad_info.ad_limit_clicks == 0} disabled='disabled' style='background: #DDDDDD;'{/if} value='{if $userad->userad_info.ad_limit_clicks}{$userad->userad_info.ad_limit_clicks}{/if}'>&nbsp;&nbsp;&nbsp;</td>
  <td><input type='checkbox' id='ad_limit_clicks' name='ad_limit_clicks_unlimited' value='1' class='checkbox'{if $userad->userad_info.ad_limit_clicks == 0} checked='checked'{/if} onClick="togglefield('clicks_field', this)"> <label for='ad_limit_clicks'>{$admin_campaigns_editad24}</label></td>
  </tr>
  </table>
</td>
</tr>
{*
<tr>
<td class='form1'>{$admin_campaigns_editad23}</td>
<td class='form2'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='text' id='ctr_field' name='ad_limit_ctr' class='text' size='7' maxlength='10'{if $userad->userad_info.ad_limit_ctr == 0} disabled='disabled' style='background: #DDDDDD;'{/if} value='{if $userad->userad_info.ad_limit_ctr}{$userad->userad_info.ad_limit_ctr}{/if}'>&nbsp;&nbsp;&nbsp;</td>
  <td><input type='checkbox' id='ad_limit_ctr' name='ad_limit_ctr_unlimited' value='1' class='checkbox'{if $userad->userad_info.ad_limit_ctr == 0} checked='checked'{/if} onClick="togglefield('ctr_field', this)"> <label for='ad_limit_ctr'>{$admin_campaigns_editad24}</label></td>
  </tr>
  </table>
</td>
</tr>
*}

<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'> &nbsp;</td>
</tr>

<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'>
  
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='submit' class='button' value='{$admin_campaigns_editad27}'>&nbsp;</td>
  </form>
  <form action='admin_viewcampaigns.php' method='GET'>
  <td><input type='submit' class='button' value='{$admin_campaigns_editad28}'></td>
  </tr>
  </form>
  </table>
</td>
</tr>

</table>

<br>
<div id="edit_banner_reminder" style="background-color:#FFFFBE; border:1px solid #FFFF64; padding:2px; display:none" > {$admin_campaigns_editad36} </div>

<br>
<br>
  
&nbsp;&nbsp;{$admin_campaigns_editad13} <br><br>

<div id="edit_banner_text" style="display:block">
  <a href="javascript:edit_banner()"> {$admin_campaigns_editad37} </a>
</div>
<div id="save_banner_text" style="display:none">
  <a href="javascript:cancel_save_banner()">{$admin_campaigns_editad38}</a>
  <span style="padding: 5px"> | </span>
  <a href="javascript:save_banner()">{$admin_campaigns_editad39}</a>
</div>
<br>

<div id="banner_edit" style="display:none">
<textarea style="width: 800px; height: 200px" name=ad_html_editor id=ad_html_editor onKeyUp="ad_html_onChange()">{$ad_html}</textarea>
<br>
<br>
</div>

<div id="banner_preview" style="display:block">
  <div id="banner_preview_placeholder">
{$ad_html}
  </div>
</div>



</div>

<br>
<br>
<br>
<br>

<form method="POST" id="asyncform" name="asyncform" action="admin_viewcampaigns.php">
  <input type="hidden" id="asyncform_task" name="task">
  <input type="hidden" id="asyncform_item_id" name="ad_id">
</form>

{include file='admin_footer.tpl'}