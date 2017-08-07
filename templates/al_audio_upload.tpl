4658<!>upload.js<!>0<!>4250<!>0<!>Выберите аудиозапись на Вашем компьютере<!><div id="audio_new_cont" class="audio_new">
<form action='al_audio_upload.php' method='post' enctype='multipart/form-data' id="upload_img">
  <div class="error" id="audio_new_error"></div>
  <div id="restrictions" class="restrictions">Ограничения</div>
  <ul class="listing">
    <li><span>Аудиофайл не должен превышать 20 Мб и должен быть в формате MP3.</span></li>
    <li><span>Аудиофайл не должен нарушать авторские права.</span></li>
  </ul>
  {include file='user_upload.tpl' action='user_music_upload.php' session_id=$session_id upload_token=$upload_token show_uploader=$show_uploader inputs=$inputs file_result=$file_result}
  <div id="audio_choose_upload" class="audio_choose_upload"></div>
  <div class="additional">Вы также можете добавить аудиозапись из числа уже загруженных файлов,<br /> воспользовавшись <a href="search?c[section]=audio" onclick="return nav.go(this, event);"><b>поиском по аудио</b></a>.</div>
</div>
</form>
<div id="choose_audio_dropbox" class="dropbox">
  <div class="dropbox_wrap">
    <div class="dropbox_area">
      <div class="dropbox_label">Перетащите файлы сюда</div>
    </div>
  </div>
</div><!>