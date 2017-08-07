{include file='admin_header.tpl'}

{literal}
<script src="../include/js/semods.js"></script>
  
<style>

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


.campaigns_db_header {
  background-color: #F6F6F6;
  border-top: 1px solid #EEEEEE;
  padding: 5px;
  color: #777;
  font-weight: bold;
}

.campaigns_db_header A {
  text-decoration: none;
  font-weight: normal;
}

.campaigns_db_header A:hover {
  text-decoration: underline;
}

.campaigns_db_content {
  padding: 5px;
}

.campaigns_db_content A {
  text-decoration: none;
}

.campaigns_db_content A:hover {
  text-decoration: underline;
}

</style>
{/literal}



<h2>{$admin_campaigns_dashboard1}</h2>
{$admin_campaigns_dashboard2}

<br>
<br>

<table cellpadding='0' cellspacing='0' width="100%">
<tr>
<td width="50%" valign="top" style="padding: 10px">

  <table cellpadding='0' cellspacing='0' width="100%">
  <tr>
    <td class='campaigns_db_header'> {$admin_campaigns_dashboard3} <span style="font-weight: normal"> (<a href="admin_payment_reports_income.php">{$admin_campaigns_dashboard15}</a>) </span> </td>
  </tr>
  <tr>
  <td class='campaigns_db_content'>
    
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td>{$admin_campaigns_dashboard4}:</td>
    <td style="padding-left: 3px">{$total_income}</td>
    </tr>
    <tr>
    <td>&nbsp;</td>
    <td style="padding-left: 3px">&nbsp;</td>
    </tr>
    <tr>
    <td>{$admin_campaigns_dashboard5}</td>
    <td style="padding-left: 3px">{$total_income_lastweek}</td>
    </tr>
    <tr>
    <td>{$admin_campaigns_dashboard6}</td>
    <td style="padding-left: 3px">{$total_income_lastmonth}</td>
    </tr>
    </table>
    
  </td>
  </tr>
  </table>

</td>
<td width="50%" valign="top" style="padding: 10px">
 
  <table cellpadding='0' cellspacing='0' width="100%">
  <tr>
    <td class='campaigns_db_header'> {$admin_campaigns_dashboard7} <span style="font-weight: normal"> (<a href="admin_viewcampaigns.php">{$admin_campaigns_dashboard16}</a>) </span> </td>
  </tr>
  <tr>
  <td class='campaigns_db_content'>
    
    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td><a href="admin_viewcampaigns.php?f_status=3">{$admin_campaigns_dashboard8}</a></td>
    <td style="padding-left: 3px">{$active_campaigns}</td>
    </tr>
    <tr>
    <td><a href="admin_viewcampaigns.php?f_status=5">{$admin_campaigns_dashboard9}</a></td>
    <td style="padding-left: 3px">{$completed_campaigns}</td>
    </tr>
    <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td><a href="admin_viewcampaigns.php?f_status=0">{$admin_campaigns_dashboard10}</a></td>
    <td style="padding-left: 3px">{$pending_campaigns}</td>
    </tr>
    </table>
    
  </td>
  </tr>
  </table>

</td>

</tr>

</table>

<br>

{include file='admin_footer.tpl'}