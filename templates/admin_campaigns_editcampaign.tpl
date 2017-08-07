{include file='admin_header.tpl'}

{literal}
<script src="../include/js/semods.js"></script>
<script src="../include/js/semods.controls.multiselect.js"></script>

<script>

function campaign_pricing_model_onChanged(value) {
  SEMods.B.hide("campaign_pricing_model_0", "campaign_pricing_model_1", "campaign_pricing_model_2");
  document.getElementById("campaign_pricing_model_"+value).style.display = "inline";
}

</script>

 
<style>

.multiSelect {
  background:#FFFFFF url('../images/apps_dropdown.gif') no-repeat scroll right center;
  border:1px solid #BBBBBB;
  display:inline;
  padding:2px 20px 2px 4px;
  width:200px;
  
  Xoverflow: hidden;
}
.multiSelect.hover {
  background:transparent url('../images/apps_dropdown_hover.gif') no-repeat scroll right center;
}
.multiSelect.active, .multiSelect.focus {
  border:1px inset #000000;
}
.multiSelect.active {
  background:transparent url('../images/apps_dropdown_active.gif') no-repeat scroll right center;
}
.multiSelectOptions {
  background:#FFFFFF none repeat scroll 0%;
  border:1px solid #B2B2B2;
  margin-top:-1px;
  max-height:150px;
  overflow:auto;
  Xwidth:206px;
  width:198px;
}
.multiSelectOptions label {
  display:block;
  padding:2px 5px;
}
.multiSelectOptions label.checked {
  background:#E6E6E6 none repeat scroll 0%;
}
.multiSelectOptions label.selectAll {
  border-bottom:1px dotted #CCCCCC;
}
.multiSelectOptions label.hover {
  background:#CFCFCF none repeat scroll 0%;
}

iframe.layerfix {
  display:none;/*sorry for IE5*/
  display/**/:block;/*sorry for IE5*/
  position:absolute;/*must have*/
  top:0;/*must have*/
  left:0;/*must have*/
  z-index:1;/*must have*/
  filter:mask();/*must have*/
  Xwidth:3000px;/*must have for any big value*/
  Xheight:3000px/*must have for any big value*/;
}

table.tabs {
	margin-bottom: 12px;
}
td.tab {
	background: #FFFFFF;
	padding-left: 1px;
	border-bottom: 1px solid #CCCCCC;
}
td.tab0 {
	font-size: 1pt;
	padding-left: 7px;
	border-bottom: 1px solid #CCCCCC;
}
td.tab1 {
	border: 1px solid #CCCCCC;
	border-top: 3px solid #AAAAAA;
	border-bottom: none;
	font-weight: bold;
	padding: 6px 8px 6px 8px;
}
td.tab2 {
	background: #F8F8F8;
	border: 1px solid #CCCCCC;
	border-top: 3px solid #CCCCCC;
	font-weight: bold;
	padding: 6px 8px 6px 8px;
}
td.tab3 {
	background: #FFFFFF;
	border-bottom: 1px solid #CCCCCC;
	padding-right: 12px;
	width: 100%;
	text-align: right;
	vertical-align: middle;
}
.tabs A {
  text-decoration: none;
}

.tabs A:hover {
  text-decoration: underline;
}

</style>
{/literal}

<h2>{$admin_campaigns_editcampaign1}</h2>
{$admin_campaigns_editcampaign2}

<br><br>

{if $is_error != 0}
<div class='error'><img src='../images/error.gif' border='0' class='icon'> {$error_message}</div>
{/if}

<form action='admin_campaigns_editcampaign.php' method='POST'>
<input type='hidden' name='task' value='editcampaign'>
<input type='hidden' name='campaign_id' value='{$campaign_id}'>

<table cellpadding='0' cellspacing='0'>

<tr>
<td class='form1'>{$admin_campaigns_editcampaign3}</td>
<td class='form2'><input style="width:500px" type='text' class='text' name='campaign_name' value='{$campaign_name}' size='40' maxlength='250'></td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editcampaign5}</td>
<td class='form2'>

<select class='text' name='campaign_enabled'>
<option value='1'{if $campaign_enabled == 1} SELECTED{/if}>{$admin_campaigns_editcampaign6}</option>
<option value='0'{if $campaign_enabled == 0} SELECTED{/if}>{$admin_campaigns_editcampaign7}</option>
</select>

</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editcampaign10}</td>
<td class='form2'>

<select class='text' name='campaign_type'>
<option value='0'{if $campaign_type == 0} SELECTED{/if}>{$admin_campaigns_editcampaign30}</option>
<option value='1'{if $campaign_type == 1} SELECTED{/if}>{$admin_campaigns_editcampaign31}</option>
<option value='-1'{if $campaign_type == -1} SELECTED{/if}>{$admin_campaigns_editcampaign32}</option>
<option value='2'{if $campaign_type == 2} SELECTED{/if}>{$admin_campaigns_editcampaign33}</option>
<option value='3'{if $campaign_type == 3} SELECTED{/if}>{$admin_campaigns_editcampaign34}</option>
<option value='4'{if $campaign_type == 4} SELECTED{/if}>{$admin_campaigns_editcampaign35}</option>
<option value='5'{if $campaign_type == 5} SELECTED{/if}>{$admin_campaigns_editcampaign36}</option>
<option value='6'{if $campaign_type == 6} SELECTED{/if}>{$admin_campaigns_editcampaign37}</option>
</select>

</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editcampaign11}</td>
<td class='form2'>

<select class='text' name='campaign_placement'>
{foreach from=$campaigns_placements item=placement}
<option value='{$placement.placement_id}'{if $campaign_placement == $placement.placement_id} SELECTED{/if}>{$placement.placement_name}</option>
{/foreach}
</select>

</td>
</tr>


<tr>
<td class='form1'>{$admin_campaigns_editcampaign13}</td>
<td class='form2'>

<select class='text' name='campaign_target_networks'>
<option value='1'{if $campaign_target_networks == 1} SELECTED{/if}>{$admin_campaigns_editcampaign6}</option>
<option value='0'{if $campaign_target_networks == 0} SELECTED{/if}>{$admin_campaigns_editcampaign7}</option>
</select>

</td>
</tr>




<tr>
<td class='form1'>{$admin_campaigns_editcampaign15}</td>
<td class='form2'>

<select class='text' name='campaign_target_pages'>
<option value='1'{if $campaign_target_pages == 1} SELECTED{/if}>{$admin_campaigns_editcampaign6}</option>
<option value='0'{if $campaign_target_pages == 0} SELECTED{/if}>{$admin_campaigns_editcampaign7}</option>
</select>

</td>
</tr>

<tr>
<td class='form1'>{$admin_campaigns_editcampaign16}</td>
<td class='form2'>

<select class='text' name='campaign_target_public'>
<option value='1'{if $campaign_target_public == 1} SELECTED{/if}>{$admin_campaigns_editcampaign6}</option>
<option value='0'{if $campaign_target_public == 0} SELECTED{/if}>{$admin_campaigns_editcampaign7}</option>
</select>

  <div class='form_desc'>{$admin_campaigns_editcampaign18}</div>

</td>
</tr>


<tr>
<td class='form1'>{$admin_campaigns_editcampaign17}</td>
<td class='form2'>

<select class='text' name='campaign_pricing_model' onchange="campaign_pricing_model_onChanged(this.value)">
<option value='0'{if $campaign_pricing_model== 0} SELECTED{/if}>{$admin_campaigns_editcampaign50}</option>
<option value='1'{if $campaign_pricing_model == 1} SELECTED{/if}>{$admin_campaigns_editcampaign51}</option>
<option value='2'{if $campaign_pricing_model == 2} SELECTED{/if}>{$admin_campaigns_editcampaign52}</option>
</select>

<span id='campaign_pricing_model_0' style="padding-left: 5px; display: {if $campaign_pricing_model == 0}inline{else}none{/if}">
  <input type='text' class='text' name='campaign_clicks' value='{$campaign_clicks}' size='5'> {$admin_campaigns_editcampaign53}
</span>

<span id='campaign_pricing_model_1' style="padding-left: 5px; display: {if $campaign_pricing_model == 1}inline{else}none{/if}">
  <input type='text' class='text' name='campaign_views' value='{$campaign_views}' size='5'> {$admin_campaigns_editcampaign54}
</span>

<span id='campaign_pricing_model_2' style="padding-left: 5px; display: {if $campaign_pricing_model == 2}inline{else}none{/if}">
  <input type='text' class='text' name='campaign_period' value='{$campaign_period}' size='5'> {$admin_campaigns_editcampaign55}
</span>

</td>
</tr>


<tr>
<td class='form1'>{$admin_campaigns_editcampaign14}</td>
<td class='form2'>

<input type='text' class='text' name='campaign_price' value='{$campaign_price}' size='5'>

<select class='text' name='campaign_pricecurrency'>
<option value='1'{if $campaign_pricecurrency == 1} SELECTED{/if}>{$currency_code}</option>
{if $campaigns_has_userpoints}<option value='0'{if $campaign_pricecurrency == 0} SELECTED{/if}>{$admin_campaigns_editcampaign23}</option>{/if}
</select>

<br> {if !$campaigns_has_userpoints}{$admin_campaigns_editcampaign24}{/if}
</td>
</tr>



<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'> &nbsp;</td>
</tr>

<tr>
<td class='form1'>&nbsp;</td>
<td class='form2'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td><input type='submit' class='button' value='{$admin_campaigns_editcampaign8}'>&nbsp;</td>
  </form>
  <form action='admin_campaign_manage.php' method='GET'>
  <td><input type='submit' class='button' value='{$admin_campaigns_editcampaign9}'></td>
  </tr>
  </form>
  </table>
</td>
</tr>
</table>

<br>
<br>
<br>
<br>
<br>
<br>


{include file='admin_footer.tpl'}