4658<!><!>1<!>4250<!>0<!>Загрузка фотографии<!>
<form action='photo_new_pr.php' method='post' enctype='multipart/form-data' id="upload_img">
<div id="profile_new_photo" class="profile_box">
    <div class="error" id="profile_new_photo_error"></div>





  <div class="info_msg">Вы можете загрузить сюда только собственную фотографию. Поддерживаются форматы JPG, PNG и GIF.</div>
  <div id="audio_choose_upload" style="display: block;" >
<div id="profile_photo_upload" >
<input id="avataol" type="file" name="photo" onchange="document.forms['upload_img'].submit();ge('uload_loading_audio').style.display = 'block';ge('audio_choose_upload').style.display = 'none';" ></ br>


</div></div>

  <div id="uload_loading_audio" style="display: none;" ><div id="profile_photo_upload" >
<div class="profile_progress_wrap">
<div id="profile_photo_progress" class="profile_progress" style="width: 100%;"></div>
</div>
</div></div>

  <div class="additional">Файл не должен превышать 5 Mб. Если у Вас возникают проблемы с загрузкой, попробуйте использовать фотографию меньшего размера.</div>
</div>

  

<input type='hidden' name='task' value='upload' />
      <input type='hidden' name='MAX_FILE_SIZE' value='5000000' />
</form>
 


</div>
<div class="profile_about_webcam"></div>
</div>
<div id="profile_dropbox" class="dropbox">
  <div class="dropbox_wrap">
    <div class="dropbox_area">
      <div class="dropbox_label">Перетягніть файли сюди</div>
    </div>
  </div>
</div><!>