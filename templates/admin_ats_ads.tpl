{include file='admin_header.tpl'}
{literal}
<script>
var item_id = 0;
function createItem() {
  $('ad_id').value = 0;
  $('ad_id').defaultValue = 0;
  $('ad_text').value = '';
  $('ad_text').defaultValue = '';
  $('ad_active').checked = false;
  $('ad_active').defaultChecked = false;
  $('task').value = 'create';
  $('task').defaultValue = 'create';
  $('createbutton').value = '{/literal}{lang_print id=50030}{literal}';
  $('createbutton').defaultValue = '{/literal}{lang_print id=50030}{literal}';
  TB_show('{/literal}{lang_print id=50030}{literal}', '#TB_inline?height=190&width=300&inlineId=editad', '', '../images/trans.gif');
}
function editItem(iId,sText,sActive) { 
  $('ad_id').value = iId;
  $('ad_id').defaultValue = iId;
  $('ad_text').value = sText;
  $('ad_text').defaultValue = sText;
  $('ad_active').checked = sActive;
  $('ad_active').defaultChecked = sActive;
  $('task').value = 'edit';
  $('task').defaultValue = 'edit';
  $('createbutton').value = '{/literal}{lang_print id=50033}{literal}';
  $('createbutton').defaultValue = '{/literal}{lang_print id=50033}{literal}';
  TB_show('{/literal}{lang_print id=50033}{literal}', '#TB_inline?height=190&width=300&inlineId=editad', '', '../images/trans.gif');
}
function confirmDelete(id) {
  item_id = id;
  TB_show('{/literal}{lang_print id=50035}{literal}', '#TB_inline?height=100&width=300&inlineId=confirmdelete', '', '../images/trans.gif');
}
function setActive_submit(id)
{
    $('ajaxframe').src = '../ats_fbmenu_js.php?task=ads_status&id='+id;
}
function setActive_return(id,status)
{
    if (status)
       $('active_'+id).innerHTML = 'set unactive';
    else
       $('active_'+id).innerHTML = 'set active';
}
function createResult(is_error , error_message) {
 	if(is_error != 0) {
      $("TB_window").getElements('div[id=error]').each(function(el) { el.innerHTML = error_message });
    } else {
      parent.window.location = 'admin_ats_ads.php';
    }
}
function deleteItem(){
	if(item_id){ 
    	location.href = 'admin_ats_ads.php?task=delete&item_id='+item_id;
    }else{
    	document.forms.items.submit();
    }
}
var checkboxcount = 1;
function doCheckAll() {
if(checkboxcount == 0) {
  with (document.items) {
  for (var i=0; i < elements.length; i++) {
  if (elements[i].type == 'checkbox') {
  elements[i].checked = false;
  }}
  checkboxcount = checkboxcount + 1;
  }
} else
  with (document.items) {
  for (var i=0; i < elements.length; i++) {
  if (elements[i].type == 'checkbox') {
  elements[i].checked = true;
  }}
  checkboxcount = checkboxcount - 1;
  }
}
</script>
{/literal}

<table class='tabs' cellpadding='0' cellspacing='0'>
<tr>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_fbmenu.php'>{lang_print id='50001'}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab1' NOWRAP><a href='admin_ats_ads.php'>{lang_print id='50027'}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_fbmenu_settings.php'>{lang_print id='655'}</a></td>
<td class='tab3'>&nbsp;</td>
</tr>
</table>


<div style='display: none;' id='editad'>
  <form action='admin_ats_ads.php' method='post' target='ajaxframe'>
  <div id='error' class='error' style='width: 100%;'></div> 
  		{lang_print id=50032}:&nbsp;<br />
  			<textarea class='text' cols='50' rows='4' name='ad_text' id='ad_text'></textarea>
  			<br />
  	    {lang_print id=403}:&nbsp;{* Menu active *}
		<input type='checkbox' class='text' name='ad_active' id='ad_active' />
  		<br />
  		<input type='submit' class='button' id='createbutton' value='{lang_print id=50030}' /> 
  		<input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();' />
  		<input type='hidden' name='task' value='create' id='task'>
  		<input type='hidden' name='ad_id' id='ad_id' value='0'>
  </form>
</div>

<h2>{lang_print id=50028}{* Bottom menu *}</h2>

 {* HIDDEN DIV TO DISPLAY CONFIRMATION MESSAGE *}
  <div style='display: none;' id='confirmdelete'>
    <div style='margin-top: 10px;text-align:center;'>
      {lang_print id=50036}
      <br /><br />
      <input type='button' class='button' value='{lang_print id=175}' onClick='parent.TB_remove();parent.deleteItem();'> <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();'>
    </div>
  </div>
<br />
{if !$aAtsAds|@count}
  <table cellpadding='0' cellspacing='0' width='400' align='center'><tr><td align='center'>
  	<div class='box'><b>{lang_print id=50031}</b></div>
  </td></tr></table>
{else}
  {* LIST OF MENU *}
  <form method='post' name='items'>
  <table cellpadding='0' cellspacing='0' class="list">
  <tr>
      <td class='header' width='20' ><input type='checkbox' name='select_all' onClick='javascript:doCheckAll()'></td>
      <td class='header' width='10' align='center'>{lang_print id=50014}{* N *}</td>
      <td class='header' >{lang_print id=50032}{* Ad text *}</td>
      <td class='header' align='center' width="150">{lang_print id=153} {* Options *}</td>
  </tr>
  <tbody id="list">
  {section name=user_loop loop=$aAtsAds}
    <tr class='{cycle values="background1,background2"}'>
        <td class='item' ><input type='checkbox' name='delete[]' value='{$aAtsAds[user_loop].ads_id}'></td>
        <td class='item' align='center' >{$smarty.section.user_loop.iteration}</td>
        <td class='item' style='text-align:justify;'>{$aAtsAds[user_loop].ads_text}</td>
        <td class='item' align='center'><a href="javascript:editItem({$aAtsAds[user_loop].ads_id}, '{$aAtsAds[user_loop].ads_text|replace:"&#039;":"\'"}', '{if $aAtsAds[user_loop].ads_status}checked{/if}');">{lang_print id=187}</a> | <a href="javascript:setActive_submit({$aAtsAds[user_loop].ads_id});" id="active_{$aAtsAds[user_loop].ads_id}">{if $aAtsAds[user_loop].ads_status}set unactive{else}set active{/if}</a> | <a href="javascript:confirmDelete('{$aAtsAds[user_loop].ads_id}');">{lang_print id=155}</a></td>
    </tr>
  {/section}
  </tbody>
  </table>

{/if}
{* BUTTONS *}
  <table cellpadding='0' cellspacing='0' width='100%'><tr><td>
    <br>
    <input type='button' class='button' value='{lang_print id=50030}' onclick='createItem();'>
    {if $aAtsAds|@count}
    	<input type='hidden' name='task' value='delete_all' />
        <input type='button' onclick='confirmDelete(0);' class='button' value='{lang_print id=788}'>
    {/if}
    </form>
  </td></tr></table>
{include file='admin_footer.tpl'}