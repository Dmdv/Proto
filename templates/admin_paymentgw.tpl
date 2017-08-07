{include file='admin_header.tpl'}


<script type="text/javascript" src="../include/js/semods.js"></script>
<script type="text/javascript" src="../include/js/semods.controls.dialog.js"></script>

<script>
  var lang_dlg_title = "Results"{$user_plan25};
  var lang_dlg_text = ""{$user_plan26};
</script>

{literal}
<script>
function test_paypal_api() {
  SEMods.B.hide("test_paypal_api");
  SEMods.B.show("test_paypal_api_progress");
  new SEMods.Ajax( on_paypal_test_success, on_paypal_test_fail ).post( "admin_paymentgw.php?task=testpaypal", '' );  
}

function on_paypal_test_success(a, resp) {
  SEMods.B.show("test_paypal_api");
  SEMods.B.hide("test_paypal_api_progress");
  alert( resp );
}

function on_paypal_test_fail(a) {
  SEMods.B.show("test_paypal_api");
  SEMods.B.hide("test_paypal_api_progress");
  alert("Error");
}

function result_dialog( dlg_text ) {
  new SEMods.Controls.Dialog( { title : lang_dlg_title, text : dlg_text, width : "300px", height : "130px" } );
}

</script>

<style>

.semods_dialog {
  position: absolute;
  z-index: 100;
  background:#FFFFFF none repeat scroll 0%;
  border:4px solid #525252;
  color: #000;
  text-align: left;
  
  padding: 20px;
}

.semods_dialog #semods_dlgtitle {
  border-bottom:2px solid #CDCDCD;
  font-size: 20px;
  color: #777
}

.semods_dialog #semods_dlgtext {
  padding-top: 10px;
  padding-bottom: 30px;
  border-bottom:2px solid #CDCDCD;
}

.semods_dialog #semods_dlgbuttons {
  text-align: right;
  padding-top: 10px;
  padding-bottom: 10px;
  padding-right: 5px;
}

.semods_dialog #semods_dlgbtnyes {
  margin-right: 10px;
}

.semods_dialog #semods_dlgbtnno {
  margin-right: 10px;
}

</style>
{/literal}

<h2>{$admin_paymentgw1}</h2>
{$admin_paymentgw2}

<br><br>

{if $result != 0}

  {if empty($error)}
  <div class='success'><img src='../images/success.gif' class='icon' border='0'> {$admin_paymentgw3}</div>
  {else}
    <div class='error'><img src='../images/error.gif' class='icon' border='0'> {$error} </div>
  {/if}

{/if}


<form action='admin_paymentgw.php' method='POST'>


  <table cellpadding='0' cellspacing='0' width='600px'>
  <tr><td class='header'>{$admin_paymentgw70}</td></tr>
  <tr><td class='setting1'>
  {$admin_paymentgw71}
  </td></tr><tr><td class='setting2'>

    <select name="setting_payment_currency" id="setting_payment_currency">
    <option value="USD" {if $setting_payment_currency == "USD"} selected="selected" {/if}>U.S. Dollar (USD)</option>
    <option value="EUR" {if $setting_payment_currency == "EUR"} selected="selected" {/if}>Euro (EUR)</option>
    <option value="CAD" {if $setting_payment_currency == "CAD"} selected="selected" {/if}>Canadian Dollar (CAD)</option>
    <option value="JPY" {if $setting_payment_currency == "JPY"} selected="selected" {/if}>Japanese Yen (JPY)</option>
    <option value="GBP" {if $setting_payment_currency == "GBP"} selected="selected" {/if}>Pound Sterling (GBP)</option>
    <option value="AUD" {if $setting_payment_currency == "AUD"} selected="selected" {/if}>Australian Dollar (AUD)</option>
    <option value="NZD" {if $setting_payment_currency == "NZD"} selected="selected" {/if}>New Zealand Dollar (NZD)</option>
    <option value="HKD" {if $setting_payment_currency == "HKD"} selected="selected" {/if}>Hong Kong Dollar (HKD)</option>
    <option value="SGD" {if $setting_payment_currency == "SGD"} selected="selected" {/if}>Singapore Dollar (SGD)</option>
    <option value="CHF" {if $setting_payment_currency == "CHF"} selected="selected" {/if}>Swiss Franc (CHF)</option>
    <option value="SEK" {if $setting_payment_currency == "SEK"} selected="selected" {/if}>Swedish Krona (SEK)</option>
    <option value="NOK" {if $setting_payment_currency == "NOK"} selected="selected" {/if}>Norwegian Krone (NOK)</option>
    <option value="DKK" {if $setting_payment_currency == "DKK"} selected="selected" {/if}>Danish Krone (DKK)</option>
    <option value="PLN" {if $setting_payment_currency == "PLN"} selected="selected" {/if}>Polish Zloty (PLN)</option>
    <option value="HUF" {if $setting_payment_currency == "HUF"} selected="selected" {/if}>Hungarian Forint (HUF)</option>
    <option value="CZK" {if $setting_payment_currency == "CZK"} selected="selected" {/if}>Czech Koruna (CZK)</option>
    <option value="ILS" {if $setting_payment_currency == "ILS"} selected="selected" {/if}>Israeli New Shekel (ILS)</option>
    <option value="MXN" {if $setting_payment_currency == "MXN"} selected="selected" {/if}>Mexican Peso (MXN)</option>
    </select>

  </td></tr>

{* TAX
  <tr><td class='setting1'>
  {$admin_paymentgw72}
  </td></tr><tr><td class='setting2'>

  <input type='text' class='text' size='50' name='setting_payment_tax' value='{$setting_payment_tax}'>
  
  </td></tr>
  *}
  
  </table>




<br>

<table cellpadding='0' cellspacing='0' width='600'>
<tr><td class='header'>{$admin_paymentgw20}</td></tr>

<tr><td class='setting1'>
{$admin_paymentgw14}
</td></tr><tr><td class='setting2'>
  <table cellpadding='0' cellspacing='0'>
  <tr><td><input type='radio' name='paypal_enabled' id='paypal_enabled_1' value='1'{if $paypal_enabled == 1} CHECKED{/if}>&nbsp;</td><td><label for='paypal_enabled_1'>{$admin_paymentgw15}</label></td></tr>
  <tr><td><input type='radio' name='paypal_enabled' id='paypal_enabled_0' value='0'{if $paypal_enabled == 0} CHECKED{/if}>&nbsp;</td><td><label for='paypal_enabled_0'>{$admin_paymentgw16}</label></td></tr>
  </table>
</td></tr>


<tr><td class='setting1'>  {$admin_paymentgw21} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td width='150'>{$admin_paymentgw22}</td>
  <td><input type='text' class='text' size='50' name='paypal_business' value='{$paypal_business}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw30}</td>
  <td><input type='text' class='text' size='50' name='paypal_api_username' value='{$paypal_api_username}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw31}</td>
  <td><input type='text' class='text' size='50' name='paypal_api_password' value='{$paypal_api_password}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw32}</td>
  <td><input type='text' class='text' size='50' name='paypal_api_signature' value='{$paypal_api_signature}'></td>
  </tr>
  {*
  <tr>
  <td width='150'>{$admin_paymentgw23}</td>
  <td><input type='text' class='text' size='50' name='paypal_cert_id' value='{$paypal_cert_id}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw24}</td>
  <td><input type='text' class='text' size='50' name='paypal_identity_token' value='{$paypal_identity_token}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw25}</td>
  <td><input type='text' class='text' size='50' name='paypal_myprivkey' value='{$paypal_myprivkey}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw26}</td>
  <td><input type='text' class='text' size='50' name='paypal_mypubcert' value='{$paypal_mypubcert}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw27}</td>
  <td><input type='text' class='text' size='50' name='paypal_paypalcert' value='{$paypal_paypalcert}'></td>
  </tr>
  *}
  </table>

</td>
</tr>

<tr><td class='setting1'>  {$admin_paymentgw33} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td width='150' valign=top> {$admin_paymentgw34} </td>
  <td> <input onclick="javascript:this.focus();this.select();" style="width:420px; background-color: #F6F6F6; border: 1px solid #C6C6C6; padding: 2px" type="text" readonly value="{$paypal_ipn_url}">
<!--  <a href="javascript:copy_ipn_url()"> {$admin_paymentgw11} </a> --> </td> 
  </tr>
  </table>

</td>
</tr>

<tr><td class='setting1'>
{$admin_paymentgw38} <br>

<div id="test_paypal_api" style="text-align: center; display:block">
<input type='button' class='button' onclick="javascript:test_paypal_api()" value='{$admin_paymentgw10}'>
</div>

<div id="test_paypal_api_progress" style="text-align: center; display:none">
<img src="../images/icons/semods_ajaxprogress1.gif">
</div>



</td></tr>

{*
<tr><td class='setting1'>  {$admin_paymentgw28} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td><input type='checkbox' class='checkbox' name='paypal_enable_enc' value='{$paypal_enable_enc}' checked></td>
  <td>{$admin_paymentgw29}</td>
  </tr>
  </table>

</td>
</tr>
*}

</table>

<br>
  
<table cellpadding='0' cellspacing='0' width='600'>
<tr><td class='header'>{$admin_paymentgw40}</td></tr>

<tr><td class='setting1'>
{$admin_paymentgw14}
</td></tr><tr><td class='setting2'>
  <table cellpadding='0' cellspacing='0'>
  <tr><td><input type='radio' name='googlech_enabled' id='googlech_enabled_1' value='1'{if $googlech_enabled == 1} CHECKED{/if}>&nbsp;</td><td><label for='googlech_enabled_1'>{$admin_paymentgw15}</label></td></tr>
  <tr><td><input type='radio' name='googlech_enabled' id='googlech_enabled_0' value='0'{if $googlech_enabled == 0} CHECKED{/if}>&nbsp;</td><td><label for='googlech_enabled_0'>{$admin_paymentgw16}</label></td></tr>
  </table>
</td></tr>


<tr><td class='setting1'>  {$admin_paymentgw41} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td width='150'>{$admin_paymentgw42}</td>
  <td><input type='text' class='text' size='50' name='googlech_merchant_id' value='{$googlech_merchant_id}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw43}</td>
  <td><input type='text' class='text' size='50' name='googlech_merchant_key' value='{$googlech_merchant_key}'></td>
  </tr>
  </table>

</td>
</tr>
</table>

<br>

{*  
<table cellpadding='0' cellspacing='0' width='600'>
<tr><td class='header'>{$admin_paymentgw50}</td></tr>

<tr><td class='setting1'>  {$admin_paymentgw51} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td width='150'>{$admin_paymentgw52}</td>
  <td><input type='text' class='text' size='50' name='authorizenet_login_id' value='{$authorizenet_login_id}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw43}</td>
  <td><input type='text' class='text' size='50' name='authorizenet_transaction_key' value='{$authorizenet_transaction_key}'></td>
  </tr>
  </table>

</td>
</tr>
</table>


<br>
  
<table cellpadding='0' cellspacing='0' width='600'>
<tr><td class='header'>{$admin_paymentgw60}</td></tr>

<tr><td class='setting1'>  {$admin_paymentgw61} </td></tr>
<tr><td class='setting2'>

  <table cellpadding='2' cellspacing='0'>
  <tr>
  <td width='150'>{$admin_paymentgw62}</td>
  <td><input type='text' class='text' size='50' name='2co_vendor_id' value='{$2co_login_id}'></td>
  </tr>
  <tr>
  <td width='150'>{$admin_paymentgw63}</td>
  <td><input type='text' class='text' size='50' name='2co_vendor_secretword' value='{$2co_vendor_secretword}'></td>
  </tr>
  </table>

</td>
</tr>
</table>
*}

<br>

<input type='submit' class='button' value='{$admin_paymentgw13}'>
<input type='hidden' name='task' value='dosave'>
</form>


{include file='admin_footer.tpl'}