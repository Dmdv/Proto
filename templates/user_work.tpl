{include file='header.tpl'}


<img src='./images/icons/work48.gif' border='0' class='icon_big'>
<div class='page_header'>Карьера</div>
<div>Вы можете управлять историей своей карьеры, используя форму ниже.</div>

<br><br>

{* SHOW RESULT MESSAGE *}
{if $result != ""}
<table cellpadding='0' cellspacing='0'><tr><td class='result'>
<div class='success'><img src='./images/success.gif' border='0' class='icon'>{lang_print id=$result}</div>
</td></tr></table>
<br>
{/if}

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
<table cellpadding='0' cellspacing='0'><tr><td class='result'>
<div class='error'><img src='./images/error.gif' border='0' class='icon'> {$error_message}</div>
</td></tr></table>
<br>
{/if}

{literal}
<script type="text/javascript">
function removeschool(eid) {
  if (confirm("{/literal}Вы уверены?{literal}")) {
  	var myTextField = document.getElementById('edu'+eid);
  	myTextField.value = "";
  	document.getElementById('school'+eid).style.display = 'none';
  }
  return false;
}
function addschool() {
  	document.getElementById('schoolnew').style.display = '';
  	document.getElementById('universitynew').style.display = 'none';
      return false;
}
function addunivercity() {
  	document.getElementById('universitynew').style.display = '';
  	document.getElementById('schoolnew').style.display = 'none';
 	return false;
}
</script>
{/literal}
<a href="#" onclick="addschool(); return false;">{lang_print id=990000052}</a> | <a href="#" onclick="addunivercity(); return false;">{lang_print id=990000053}</a>

<form action='user_work.php' method='POST' name='profile'>

{foreach from=$works item=work key=eid}
{if $eid != 'new'}
{if $work.work_for == 'school'}
<table cellpadding='0' cellspacing='0' class='form' id="school{$eid}">
{if $eid == 'new'}
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>{lang_print id=990000010}</td>
  </tr> 
{/if}
  <tr>
    <td class='form1'>{lang_print id=990000012}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="works[{$eid}][work_name]" value="{$work.work_name}" size="30" />
      {if $eid != 'new'}<a href="#"  onclick="removeschool({$eid}); return false;">Удалить эту работу</a>{/if}
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000017}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr>
    <td class='form1'>{lang_print id=990000018}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_degree]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_degree}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
  </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_concentration1]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_concentration1}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
     </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000020}</td>
    <td class='form2'><input type="text" class="text" name="works[{$eid}][work_concentration2]" value="{$work.work_concentration2}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000021}</td>
    <td class='form2'><input type="text" class="text" name="works[{$eid}][work_concentration3]" value="{$work.work_concentration3}" size="30" /></td>
  </tr> 
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table> 
<input type="hidden" name="works[{$eid}][work_for]" value="school"> 
{else}
<table cellpadding='0' cellspacing='0' class='form' id="school{$eid}">
{if $eid == 'new'}
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>{lang_print id=990000011}</td>
  </tr> 
{/if}
  <tr>
    <td class='form1'>{lang_print id=990000022}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="works2[{$eid}][work_name]" value="{$work.work_name}" size="30" />
      {if $eid != 'new'}<a href="#"  onclick="removeschool({$eid}); return false;">Удалить эту работу</a>{/if}
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000025}</td>
    <td class='form2'><input type="text" class="text" name="works2[{$eid}][work_degree]" value="{$work.work_degree}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000026}</td>
    <td class='form2'><input type="text" class="text" name="works2[{$eid}][work_concentration1]" value="{$work.work_concentration1}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000027}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_concentration2]" size="1">
        <option value=""></option>
        <option value="1" {if $work.work_concentration2 == '1'}selected="selected"{/if}>{lang_print id=990000029}</option>
        <option value="2" {if $work.work_concentration2 == '2'}selected="selected"{/if}>{lang_print id=990000030}</option>
        <option value="3" {if $work.work_concentration2 == '3'}selected="selected"{/if}>{lang_print id=990000031}</option>
      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000028}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_concentration3]" size="1">
        <option value=""></option>
        <option value="1" {if $work.work_concentration3 == '1'}selected="selected"{/if}>{lang_print id=990000032}</option>
        <option value="2" {if $work.work_concentration3 == '2'}selected="selected"{/if}>{lang_print id=990000033}</option>
        <option value="3" {if $work.work_concentration3 == '3'}selected="selected"{/if}>{lang_print id=990000034}</option>
        <option value="4" {if $work.work_concentration3 == '4'}selected="selected"{/if}>{lang_print id=990000035}</option>
        <option value="5" {if $work.work_concentration3 == '5'}selected="selected"{/if}>{lang_print id=990000036}</option>
        <option value="6" {if $work.work_concentration3 == '6'}selected="selected"{/if}>{lang_print id=990000037}</option>
        <option value="7" {if $work.work_concentration3 == '7'}selected="selected"{/if}>{lang_print id=990000038}</option>
        <option value="8" {if $work.work_concentration3 == '8'}selected="selected"{/if}>{lang_print id=990000039}</option>
        <option value="9" {if $work.work_concentration3 == '9'}selected="selected"{/if}>{lang_print id=990000040}</option>
        <option value="10" {if $work.work_concentration3 == '10'}selected="selected"{/if}>{lang_print id=990000041}</option>
      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table>   
{/if}
{else}
<table cellpadding='0' cellspacing='0' class='form' id="school{$eid}" style="display:none">
{if $eid == 'new'}
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>{lang_print id=990000010}</td>
  </tr> 
{/if}
  <tr>
    <td class='form1'>{lang_print id=990000012}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="works[{$eid}][work_name]" value="{$work.work_name}" size="30" />
      {if $eid != 'new'}<a href="#"  onclick="removeschool({$eid}); return false;">Удалить эту работу</a>{/if}
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000017}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr>
    <td class='form1'>{lang_print id=990000018}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_degree]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
  </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="works[{$eid}][work_concentration1]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
     </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000020}</td>
    <td class='form2'><input type="text" class="text" name="works[{$eid}][work_concentration2]" value="{$work.work_concentration2}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000021}</td>
    <td class='form2'><input type="text" class="text" name="works[{$eid}][work_concentration3]" value="{$work.work_concentration3}" size="30" /></td>
  </tr> 
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table> 
<input type="hidden" name="works[{$eid}][work_for]" value="school">
  
<table cellpadding='0' cellspacing='0' class='form' id="university{$eid}" style="display:none">
{if $eid == 'new'}
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>{lang_print id=990000011}</td>
  </tr> 
{/if}
  <tr>
    <td class='form1'>{lang_print id=990000022}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="works2[{$eid}][work_name]" value="{$work.work_name}" size="30" />
      {if $eid != 'new'}<a href="#"  onclick="removeschool({$eid}); return false;">Удалить эту работу</a>{/if}
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000025}</td>
    <td class='form2'><input type="text" class="text" name="works2[{$eid}][work_degree]" value="{$work.work_degree}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000026}</td>
    <td class='form2'><input type="text" class="text" name="works2[{$eid}][work_concentration1]" value="{$work.work_concentration1}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000027}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_concentration2]" size="1">
        <option value=""></option>
        <option value="1">{lang_print id=990000029}</option>
        <option value="2">{lang_print id=990000030}</option>
        <option value="3">{lang_print id=990000031}</option>
      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000028}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_concentration3]" size="1">
        <option value=""></option>
        <option value="1">{lang_print id=990000032}</option>
        <option value="2">{lang_print id=990000033}</option>
        <option value="3">{lang_print id=990000034}</option>
        <option value="4">{lang_print id=990000035}</option>
        <option value="5">{lang_print id=990000036}</option>
        <option value="6">{lang_print id=990000037}</option>
        <option value="7">{lang_print id=990000038}</option>
        <option value="8">{lang_print id=990000039}</option>
        <option value="9">{lang_print id=990000040}</option>
        <option value="10">{lang_print id=990000041}</option>
      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="works2[{$eid}][work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $work.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table>   
{/if}       
{/foreach}
<table cellpadding='0' cellspacing='0' class='form'>
  <tr>
  <td class='form1'>&nbsp;</td>
  <td class='form2'><input type='submit' class='button' value='Сохранить изменения'></td>
  </tr>
</table>
<input type="hidden" name="works2[{$eid}][work_for]" value="univercity">

<input type='hidden' name='task' value='dosave'>
</form>


{include file='footer.tpl'}
