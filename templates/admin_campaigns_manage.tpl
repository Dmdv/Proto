{include file='admin_header.tpl'}

{literal}
<script>

function enable_campaign(item_id, enable) {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "enable";
  document.getElementById('asyncform_item_id').value = item_id;
  document.getElementById('asyncform_enable').value = enable;
  
  asyncform.submit();
}

function delete_campaign(item_id) {
  var asyncform = document.getElementById('asyncform');
  document.getElementById('asyncform_task').value = "delete";
  document.getElementById('asyncform_item_id').value = item_id;
  
  asyncform.submit();
}

</script>

<style>
.pipe {
  color: #CCC;
}

</style>
{/literal}

<h2>{$admin_campaigns_manage1}</h2>
{$admin_campaigns_manage2}

<br><br>

{if $is_error != 0}
  <div class='error'><img src='../images/error.gif' border='0' class='icon'> {$error_message}</div>
{/if}

{if $result == 2}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {$admin_campaigns_manage16}</div>
{/if}

<form action='admin_campaigns_editcampaign.php' method='GET'>
<input type='submit' class='button' value='{$admin_campaigns_manage3}'>
</form>

<br>

{if $campaigns|@count>0}

<table cellpadding='0' cellspacing='0' class='list'>
<tr>
<td class='header' width='10'><a class='header' href='admin_campaigns_manage.php?s={$i}'>{$admin_campaigns_manage4}</a></td>
<td class='header'><a class='header' href='admin_campaigns_manage.php?s={$n}'>{$admin_campaigns_manage5}</a></td>
<td class='header' align='center'><a class='header' href='admin_campaigns_manage.php?s={$u}'>{$admin_campaigns_manage6}</td>
<td class='header' align='center'>{$admin_campaigns_manage8}</td>
<td class='header' width='100'>{$admin_campaigns_manage7}</td>
</tr>


{foreach from=$campaigns item=campaign}
  <tr class='{cycle values="background2,background1"}'>
  <td class='item'>{$campaign.campaign_id}</td>
  <td class='item'>{$campaign.campaign_name}</td>
  <td class='item' align='center'><a href='admin_viewcampaigns.php?f_campaign={$campaign.campaign_id}'>{$campaign.users} {$admin_campaigns_manage17}</a></td>
  <td class='item' align='center'>{if $campaign.campaign_enabled}{$admin_campaigns_manage9}{else}{$admin_campaigns_manage10}{/if}</td>
  <td class='item'>
    <a href='admin_campaigns_editcampaign.php?campaign_id={$campaign.campaign_id}'>{$admin_campaigns_manage11}</a><span class="pipe"> | </span>
    {if $campaign.campaign_enabled}
      <a href='javascript:enable_campaign({$campaign.campaign_id}, 0)'>{$admin_campaigns_manage12}</a><span class="pipe"> | </span>
    {else}
      <a href='javascript:enable_campaign({$campaign.campaign_id}, 1)'>{$admin_campaigns_manage13}</a><span class="pipe"> | </span>
    {/if}
      <a href='javascript:delete_campaign({$campaign.campaign_id})'>{$admin_campaigns_manage14}</a>
  </td>
  </tr>
{/foreach}
</table>

{else}
<div style="padding:10px;text-align:center"> {$admin_campaigns_manage20} </div>
{/if}

<form method=POST id="asyncform" action="admin_campaigns_manage.php">
  <input type="hidden" id="asyncform_task" name="task">
  <input type="hidden" id="asyncform_item_id" name="campaign_id">
  <input type="hidden" id="asyncform_enable" name="enable">
</form>

{include file='admin_footer.tpl'}