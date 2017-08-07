{* BEGIN CAMPAIGNS *}
{if $ads->ad_userhomenarrow != ""}

  <table cellpadding='0' cellspacing='0' width='100%' style='margin-bottom: 10px;'>
  <tr><td class='home_header'> {$header_campaigns2} </td></tr>
  <tr>
  <td class='home_box'>
    {* DISPLAY AD *}
    {$ads->ad_userhomenarrow}
  </td>
  </tr>
  </table>

{/if}