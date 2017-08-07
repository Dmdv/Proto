4658<!><!>0<!>4250<!>0<!>Создание сообщества<!>

<form action='user_group_add.php' method='POST' id='group_form'> 
<div style="display: block; padding: 1px 0px;">
<div class="photos_edit_data">
<div class="photos_edit_header">Название</div>
<input id="new_album_title" class="text photos_edit_title" type='text' class='text' name='group_title' value='{$group_info.group_title}'>
<div class="photos_edit_header">Описание</div>
<textarea name='group_desc' id="new_album_description" class="photos_edit_description" style="overflow: hidden; resize: none;">{$group_info.group_desc}</textarea>
</div>
</div>
<input type='hidden' name='task' value='doadd'>
</form>

<!>

{literal}

var img = ge('graffiti');
box.removeButtons();
box.addButton("Отмена", box.hide, 'no');
box.addButton("Создать группу", function(){document.forms["group_form"].submit();}, 'yes');
box.setOptions({bodyStyle: 'padding: 2px 14px 16px'});

{/literal}