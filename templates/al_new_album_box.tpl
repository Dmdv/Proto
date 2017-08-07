4658<!><!>0<!>4250<!>0<!>Создать альбом<!>

<form action='user_album_add.php' method='POST' id='album_form'> 
<div style="display: block; padding: 1px 0px;">
<div class="photos_edit_data">
<div class="photos_edit_header">Название</div>
<input id="new_album_title" class="text photos_edit_title" type="text" name='album_title' value='{$video->video_info.video_title}' maxlength="64">
<div class="photos_edit_header">Описание</div>
<textarea id="new_album_description" class="photos_edit_description" name='audio_desc' style="overflow: hidden; resize: none;"></textarea>
</div>
</div>
<input type='hidden' name='task' value='doadd'>
</form>

<!>

{literal}

var img = ge('graffiti');
box.removeButtons();
box.addButton("Отмена", box.hide, 'no');
box.addButton("Создать альбом", function(){document.forms["album_form"].submit();}, 'yes');
box.setOptions({bodyStyle: 'padding: 2px 14px 16px'});

{/literal}
