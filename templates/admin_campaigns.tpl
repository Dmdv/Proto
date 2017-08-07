{include file='admin_header.tpl'}

<link rel="stylesheet" href="../templates/styles_campaigns.css" title="stylesheet" type="text/css">  
<script src="../include/js/semods.js"></script>
<script src="../include/js/semods.controls.multiselect.js"></script>

{literal}
<script>

  function init_multiselects() {
    new SEMods.Controls.MultiSelect( "campaigns_placements" );
    new SEMods.Controls.MultiSelect( "campaigns_pages" );
  }
  
  SEMods.B.register_onload( init_multiselects );

</script>
{/literal}


<h2>{$admin_campaigns1}</h2>
{$admin_campaigns2}

<br><br>

{if $result != 0}

  {if empty($error)}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {$admin_campaigns3}</div>
  {else}
    <div class='error'><img src='../images/error.gif' class='icon' border='0'> {$error} </div>
  {/if}

{/if}


<form action='admin_campaigns.php' method='POST'>


  <table cellpadding='0' cellspacing='0' width='600px'>
  <tr><td class='header'>{$admin_campaigns4}</td></tr>
  <tr><td class='setting1'>
  {$admin_campaigns5}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='setting_campaigns_enable' id='setting_campaigns_enable_1' value='1'{if $setting_campaigns_enable == 1} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_enable_1'>{$admin_campaigns6}</label></td></tr>
    <tr><td><input type='radio' name='setting_campaigns_enable' id='setting_campaigns_enable_0' value='0'{if $setting_campaigns_enable == 0} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_enable_0'>{$admin_campaigns7}</label></td></tr>
    </table>
  </td></tr>
  </table>

<br>

  <table cellpadding='0' cellspacing='0' width='600px'>
  <tr><td class='header'>{$admin_campaigns8}</td></tr>

  <tr><td class='setting1'>
  {$admin_campaigns9}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='setting_campaigns_can_target_subnets' id='setting_campaigns_can_target_subnets_1' value='1'{if $setting_campaigns_can_target_subnets == 1} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_can_target_subnets_1'>{$admin_campaigns10}</label></td></tr>
    <tr><td><input type='radio' name='setting_campaigns_can_target_subnets' id='setting_campaigns_can_target_subnets_0' value='0'{if $setting_campaigns_can_target_subnets == 0} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_can_target_subnets_0'>{$admin_campaigns11}</label></td></tr>
    </table>
  </td></tr>

  <tr><td class='setting1'>
  {$admin_campaigns12}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td><input type='radio' name='setting_campaigns_can_target_pages' id='setting_campaigns_can_target_pages_1' value='1'{if $setting_campaigns_can_target_pages == 1} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_can_target_pages_1'>{$admin_campaigns13}</label></td></tr>
    <tr><td><input type='radio' name='setting_campaigns_can_target_pages' id='setting_campaigns_can_target_pages_0' value='0'{if $setting_campaigns_can_target_pages == 0} CHECKED{/if}>&nbsp;</td><td><label for='setting_campaigns_can_target_pages_0'>{$admin_campaigns14}</label></td></tr>
    </table>
  </td></tr>

  <tr><td class='setting1'>
  {$admin_campaigns15}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td></td></tr>
    <tr><td>
      
      <input style="width:300px" id="campaigns_pages_input" type="text" readonly="readonly" class="multiSelect" value="{$admin_campaigns16}" style="cursor: default;" />
      <input type="hidden" id="campaigns_pages_all" name="campaigns_pages_all" value="{$campaigns_pages_all}">
      <iframe style="width:300px" border=0 frameBorder=0 class="layerfix" id="campaigns_pages_iframe"></iframe>
      <div id="campaigns_pages_div" class="multiSelectOptions" style="width:298px; position: absolute; z-index: 99999; display: none;">
      <label class="selectAll"><input type="checkbox" class="selectAll" /> {$admin_campaigns17} </label>
      {foreach from=$campaigns_pages item=xpage}
      <label><input type="checkbox" name="campaigns_pages[]" value="{$xpage.page_name}" {if $xpage.page_selected} checked="checked" {/if}/> {$xpage.page_name} </label>
      {/foreach}
      </div>
      
    </td></tr>
    </table>
  </td></tr>
  
  </table>


<br>

  <table cellpadding='0' cellspacing='0' width='600px'>
  <tr><td class='header'>{$admin_campaigns20}</td></tr>
  <tr><td class='setting1'>
  {$admin_campaigns21}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr><td></td></tr>
    <tr><td>
      
      <input id="campaigns_placements_input" type="text" readonly="readonly" class="multiSelect" value="{$admin_campaigns22}" style="cursor: default;" />
      <input type="hidden" id="campaigns_placements_all" name="campaigns_placements_all" value="{$campaigns_placements_all}">
      <iframe border=0 frameBorder=0 class="layerfix" id="campaigns_placements_iframe"></iframe>
      <div id="campaigns_placements_div" class="multiSelectOptions" style="position: absolute; z-index: 99999; display: none;">
      <label class="selectAll"><input type="checkbox" class="selectAll" /> {$admin_campaigns23} </label>
      {foreach from=$campaigns_placements item=placement}
      <label><input type="checkbox" name="campaigns_placements[]" value="{$placement.placement_id}" {if $placement.placement_selected} checked="checked" {/if}/> {$placement.placement_name} </label>
      {/foreach}
      </div>
      
    </td></tr>
    </table>
  </td></tr>
  </table>



<br>

  <table cellpadding='0' cellspacing='0' width='600px'>
  <tr><td class='header'>{$admin_campaigns30}</td></tr>
  <tr><td class='setting1'>
  {$admin_campaigns31}
  </td></tr><tr><td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr>
      <td class="form1">{$admin_campaigns32}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.0.w}" name="campaigns_ad_dimensions[0][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.0.h}" name="campaigns_ad_dimensions[0][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns33}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.1.w}" name="campaigns_ad_dimensions[1][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.1.h}" name="campaigns_ad_dimensions[1][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns34}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.2.w}" name="campaigns_ad_dimensions[2][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.2.h}" name="campaigns_ad_dimensions[2][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns35}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.3.w}" name="campaigns_ad_dimensions[3][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.3.h}" name="campaigns_ad_dimensions[3][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns36}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.4.w}" name="campaigns_ad_dimensions[4][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.4.h}" name="campaigns_ad_dimensions[4][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns37}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.5.w}" name="campaigns_ad_dimensions[5][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.5.h}" name="campaigns_ad_dimensions[5][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    <tr>
      <td class="form1">{$admin_campaigns39}</td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.6.w}" name="campaigns_ad_dimensions[6][w]" class="text"/> </td>
      <td class="form2"> X </td>
      <td class="form2"> <input type="text" size="3" maxlength="4" value="{$campaigns_ad_dimensions.6.h}" name="campaigns_ad_dimensions[6][h]" class="text"/> </td>
      <td class="form2"> {$admin_campaigns38} </td>
    </tr>
    </table>
  </td></tr>
  </table>

<br>

  <table cellpadding='0' cellspacing='0' width='600'>
  <tr>
  <td class='header'>{$admin_campaigns42}</td>
  </tr>
  <td class='setting1'>
  {$admin_campaigns43}
  </td>
  </tr>
  <tr>
  <td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td width='80'>{$admin_campaigns40}</td>
    <td><input style="width:450px" type='text' class='text' size='30' name='setting_campaigns_email_adapproved_subject' value='{$setting_campaigns_email_adapproved_subject}' maxlength='200'></td>
    </tr><tr>
    <td valign='top'>{$admin_campaigns41}</td>
    <td><textarea style="width:450px" rows='6' cols='80' class='text' name='setting_campaigns_email_adapproved_message'>{$setting_campaigns_email_adapproved_message}</textarea><br>{$admin_campaigns46}</td>
    </tr>
    </table>
  </td>
  </tr>
  </table>

<br>

  <table cellpadding='0' cellspacing='0' width='600'>
  <tr>
  <td class='header'>{$admin_campaigns44}</td>
  </tr>
  <td class='setting1'>
  {$admin_campaigns45}
  </td>
  </tr>
  <tr>
  <td class='setting2'>
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td width='80'>{$admin_campaigns40}</td>
    <td><input style="width:450px" type='text' class='text' size='30' name='setting_campaigns_email_adrejected_subject' value='{$setting_campaigns_email_adrejected_subject}' maxlength='200'></td>
    </tr><tr>
    <td valign='top'>{$admin_campaigns41}</td>
    <td><textarea style="width:450px" rows='6' cols='80' class='text' name='setting_campaigns_email_adrejected_message'>{$setting_campaigns_email_adrejected_message}</textarea><br>{$admin_campaigns46}</td>
    </tr>
    </table>
  </td>
  </tr>
  </table>

<br>

<input type='submit' class='button' value='{$admin_campaigns100}'>
<input type='hidden' name='task' value='dosave'>
</form>


{include file='admin_footer.tpl'}