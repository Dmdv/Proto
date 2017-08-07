{include file='admin_header.tpl'}
{literal}
<script>
var item_id = 0;
function createItem() {
  $('menu_id').value = 0;
  $('menu_id').defaultValue = 0;
  $('menu_title').value = '';
  $('menu_title').defaultValue = '';
  $('menu_active').checked = false;
  $('menu_active').defaultChecked = false;
  $('task').value = 'create';
  $('task').defaultValue = 'create';
  $('menu_file').value = '';
  $('menu_file').defaultValue = '';
  $('createbutton').value = '{/literal}{lang_print id=50018}{literal}';
  $('createbutton').defaultValue = '{/literal}{lang_print id=50018}{literal}'
	  
  TB_show('{/literal}{lang_print id=50018}{literal}', '#TB_inline?height=190&width=300&inlineId=editmenu', '', '../images/trans.gif');
}
function editItem(iMenu,sTitle,sActive,sLink,iOrder) { 
  $('menu_id').value = iMenu;
  $('menu_id').defaultValue = iMenu;
  $('menu_title').value = sTitle;
  $('menu_title').defaultValue = sTitle;
  $('menu_active').checked = sActive;
  $('menu_active').defaultChecked = sActive;
  $('task').value = 'edit';
  $('task').defaultValue = 'edit';
  $('menu_file').value = sLink;
  $('menu_file').defaultValue = sLink;
  $('menu_order').value = iOrder;
  $('menu_order').defaultValue = iOrder;
  $('createbutton').value = '{/literal}{lang_print id=50038}{literal}';
  $('createbutton').defaultValue = '{/literal}{lang_print id=50038}{literal}';
		    	  
  TB_show('{/literal}{lang_print id=50038}{literal}', '#TB_inline?height=190&width=300&inlineId=editmenu', '', '../images/trans.gif');
}
function confirmDelete(id) {
  item_id = id;
  TB_show('{/literal}{lang_print id=50024}{literal}', '#TB_inline?height=100&width=300&inlineId=confirmdelete', '', '../images/trans.gif');
}
function setActive_submit(id)
{
    $('ajaxframe').src = '../ats_fbmenu_js.php?task=change_status&id='+id;
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
      parent.window.location = 'admin_ats_fbmenu.php';
    }
}
function deleteItem(){
	if(item_id){ 
    	location.href = 'admin_ats_fbmenu.php?task=delete&item_id='+item_id;
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

function createSortable(divId) {
	new Sortables($(divId), {onComplete: function() { 
    	
    	var serial = [];
    	nom = 1;
    	this.list.getChildren().each(function(el, i){
			serial[i] = el.getProperty('id');
			el.setProperty('class','background'+nom);
			nom =(nom == 1)?2:1;
			child  = el.getChildren();
			child[1].set('text',i+1);
		}, this);
		
    	new Request({
    		'method': 'post',
    		'url'	: '../ats_fbmenu_js.php',
    		'data'	: {
    			'order':serial,
    			'task' :'change_order'
    		}
    	}).send();
	}});
}
window.addEvent('domready', function(){	createSortable('list'); });
</script>
{/literal}

<table class='tabs' cellpadding='0' cellspacing='0'>
<tr>
<td class='tab'>&nbsp;</td>
<td class='tab1' NOWRAP><a href='admin_ats_fbmenu.php'>{lang_print id='50001'}</a></td>
<td class='tab0'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_ads.php'>{lang_print id='50027'}</a></td>
<td class='tab'>&nbsp;</td>
<td class='tab2' NOWRAP><a href='admin_ats_fbmenu_settings.php'>{lang_print id='655'}</a></td>
<td class='tab3'>&nbsp;</td>
</tr>
</table>


<div style='display: none;' id='editmenu'>
  <form action='admin_ats_fbmenu.php' method='post' target='ajaxframe'>
  <div id='error' class='error' style='width: 100%;'></div> 
  <table cellpadding='3' cellspacing='0'>
  <tr>
  	<td align='right'>{lang_print id=50016}:&nbsp;{* Menu tite *}</td>
  	<td><input type='text' class='text' name='menu_title' id='menu_title' maxlength='50' value="" /></td>
  </tr>
  <tr>
  	<td align='right'>{lang_print id=50017}:&nbsp;{* Menu link *}</td>
  	<td><input type='text' class='text' name='menu_file' id='menu_file' maxlength='150' value="" /></td>
  </tr>
  <tr>
  	<td align='right'>{lang_print id=50021}:&nbsp;{* Menu active *}</td>
  	<td><input type='checkbox' class='text' name='menu_active' id='menu_active' /></td>
  </tr>
  <tr>
  	<td colspan="2" align="center">
  		<input type='submit' class='button' id='createbutton' value='{lang_print id=50018}' /> <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();' />
  		<input type='hidden' name='task' value='create' id='task'>
  		<input type='hidden' name='menu_id' id='menu_id' value='0'>
  		<input type='hidden' name='menu_order' id='menu_order' value='0'>
  	</td>
  </tr>
  </table>
  </form>
</div>

<h2>{lang_print id=50001}{* Bottom menu *}</h2>

 {* HIDDEN DIV TO DISPLAY CONFIRMATION MESSAGE *}
  <div style='display: none;' id='confirmdelete'>
    <div style='margin-top: 10px;text-align:center;'>
      {lang_print id=50025}
      <br /><br />
      <input type='button' class='button' value='{lang_print id=175}' onClick='parent.TB_remove();parent.deleteItem();'> <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();'>
    </div>
  </div>
<br />
{if !$aAtsMenus|@count}
  <table cellpadding='0' cellspacing='0' width='400' align='center'><tr><td align='center'>
  	<div class='box'><b>{lang_print id=50022}</b></div>
  </td></tr></table>
{else}
  {* LIST OF MENU *}
  <form method='post' name='items'>
  <table cellpadding='0' cellspacing='0' class="list" style='width:100%;'>
  <tr>
      <td class='header' width='30' ><input type='checkbox' name='select_all' onClick='javascript:doCheckAll()'></td>
      <td class='header' width='20' align='center'>{lang_print id=50014}{* N *}</td>
      <td class='header' >{lang_print id=50016}{* Menu title *}</td>
      <td class='header' >{lang_print id=50017}{* Menu link *}</td>
      <td class='header' align='center' width="150">{lang_print id=153} {* Options *}</td>
  </tr>
  <tbody id="list">
  {section name=user_loop loop=$aAtsMenus}
    <tr class='{cycle values="background1,background2"}' id="{$aAtsMenus[user_loop].menuitem_id}" style="cursor:move;">
        <td class='item' ><input type='checkbox' name='delete[]' value='{$aAtsMenus[user_loop].menuitem_id}'></td>
        <td class='item' align='center' >{$smarty.section.user_loop.iteration}</td>
        <td class='item' >{$aAtsMenus[user_loop].menuitem_title}</td>
        <td class='item'>{$aAtsMenus[user_loop].menuitem_url}</td>
        <td class='item' align='center'><a href="javascript:editItem('{$aAtsMenus[user_loop].menuitem_id}', '{$aAtsMenus[user_loop].menuitem_title}', '{if $aAtsMenus[user_loop].menuitem_enabled}checked{/if}','{$aAtsMenus[user_loop].menuitem_url}',{$aAtsMenus[user_loop].menuitem_order});">{lang_print id=187}</a> | <a href="javascript:void(0);" onclick="setActive_submit({$aAtsMenus[user_loop].menuitem_id});" id="active_{$aAtsMenus[user_loop].menuitem_id}">{if $aAtsMenus[user_loop].menuitem_enabled}set unactive{else}set active{/if}</a> | <a href="javascript:confirmDelete('{$aAtsMenus[user_loop].menuitem_id}');">{lang_print id=155}</a></td>
    </tr>
  {/section}
  </tbody>
  </table>

{/if}
{* BUTTONS *}
  <table cellpadding='0' cellspacing='0' width='100%'><tr><td>
    <br>
    <input type='button' class='button' value='{lang_print id=50018}' onclick='createItem();'>
    {if $aAtsMenus|@count}
    	<input type='hidden' name='task' value='delete_all' />
        <input type='button' onclick='confirmDelete(0);' class='button' value='{lang_print id=788}'>
    {/if}
    </form>
  </td></tr></table>
{include file='admin_footer.tpl'}