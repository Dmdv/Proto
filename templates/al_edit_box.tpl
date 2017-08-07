4658<!><!>0<!>4250<!>0<!>Редактирование видеозаписи<!><div class="mv_edit_header">Название</div>
<input id="mv_title_text" type="text" class="text" value="{$video_info.video_title}" />
<br /><br />
<div class="mv_edit_header">Описание <span>(не обязательно)</span></div>
<textarea id="mv_desc_text" onchange="curBox().changed=true;">{$video_info.video_desc}</textarea>
<div id="pv_desc_warn"></div><br />
<div class="video_privacy_edit">Кто может смотреть это видео?  <a id="privacy_edit_video{$vid}" onclick="return Privacy.show(this, event, 'video{$vid}')">Все пользователи</a><span></span></div>
<div class="video_privacy_edit">Кто может комментировать это видео?  <a id="privacy_edit_videocomm{$vid}" onclick="return Privacy.show(this, event, 'videocomm{$vid}')">Все пользователи</a><span></span></div><!>{literal}var doSave = function() {
  var params = {
    act: 'do_edit_box',
    title: ge('mv_title_text').value,
    desc: ge('mv_desc_text').value,
    {/literal}vid: {$vid},
    oid: {$oid},
    hash: 'c3810156b960bc0a1c'{literal}
  };
  if (params.oid > 0) {
    params['privacy_video'] = Privacy.getValue('video161952592');
    params['privacy_videocomm'] = Privacy.getValue('videocomm161952592');
  } else {
    params['privacy_video'] = isChecked('video_edit_privacy');
  }
  ajax.post('al_video.php', params, {
    onDone: function(title, desc, sDesc) {
      var videoRow = ge('video_row40297585_161952592');
      if (videoRow) {
        geByClass('video_name', videoRow)[0].innerHTML = title;
        var videoDesc = geByClass('video_desc', videoRow)[0];
        if (videoDesc) {
          videoDesc.innerHTML = sDesc;
        }
      }
      box.hide();
      if (window.mvcur && mvcur.mvShown && videoview) {
        if (window.Video && Video.removeFromLists) {
          Video.removeFromLists(mvcur.mvData.videoRaw);
        }
        videoview.recache();
        var descCont = ge('mv_description');
        if (descCont) {
          descCont.innerHTML = desc;
        }
        if (mvcur.mvData) {
          mvcur.mvData.title = title;
        }
      }
    }
  })
}
cur.privacy = {"video161952592":[0,1,[0],[]],"videocomm161952592":[0,1,[0],[]],"_lists":{"1":"друзья"},"_types":["Все пользователи","Только друзья","Друзья и друзья друзей","Только я","Все, кроме...","Некоторые друзья","Некоторые списки друзей"]};
box.setOptions({bodyStyle: 'padding: 20px;', width: 422});
box.removeButtons().addButton('Отмена', box.hide, 'no');
box.addButton('Сохранить', doSave);{/literal}