4658<!><!>0<!>4250<!>0<!>Новое сообщение<!>
<div class="mail_box_content clear_fix">
  <div class="label fl_l ta_r">
    Кому:
  </div>
  <div class="labeled_link fl_l">
    <a class="mem_link" href="/id{$owner->user_info.user_id}">{$owner->user_displayname}</a>
  </div>

  <div class="label fl_l ta_r">
    Тема:
  </div>
  <div class="labeled fl_l">
    <input type="text" class="text" id="write_box_subj" maxlength="64"  onchange="curBox().changed=true;" />
  </div>

  <div class="label fl_l ta_r">
    Сообщение:
  </div>

  <div class="labeled fl_l">
    <textarea id="write_box_text" onkeydown="if (event.ctrlKey && event.keyCode == 13) cur.submitBoxMessage();" onchange="curBox().changed=true;"></textarea>
  </div>

  <div class="fl_r" id="mail_box_add_row"><a class="link" id="mail_box_add_link"></a></div>

  <div class="label fl_l"></div>
  <div class="labeled fl_l">
    <div id="mail_box_added_row" class="media_preview"></div>

  </div>
</div><!>{literal}cur.addMailBoxMedia = null;
cur.decodedHashes = {};
cur.dec_hash = function(hash) {
    (function(_){cur.decodedHashes[_]=(function(__){var ___=ge?'':'___';for(____=0;____<__.length;++____)___+=__.charAt(__.length-____-1);return geByClass?___:'___';})(_.substr(_.length-5)+_.substr(4,_.length-12));})(hash);
  }
cur.decodehash = function(hash) {
  cur.dec_hash(hash);
  return cur.decodedHashes[hash];
}

cur.mediaTypes = [["photo","Фотографию"],["video","Видеозапись"],["audio","Аудиозапись"],["doc","Документ"]];

cur.submitBoxMessage = function() {
  if (isVisible(ge('sending_progress'))) return;

  if (!trim(val('write_box_text')) &&
      (!(cur.addMailBoxMedia.chosenMedia || []).length &&
       !(cur.addMailBoxMedia.chosenMedias || []).length)) {
    notaBene('write_box_text');
    return;
  }
  var media = cur.addMailBoxMedia.chosenMedia,
    medias = cur.addMailBoxMedia.chosenMedias,
    mediaVal = [],
    params = {
      act: 'a_send',
      ajax: 1,
      chas: cur.decodehash('f6a202e818ca14a828793d08d'),
      to_id: 1,
      title: val('write_box_subj'),
      message: val('write_box_text'),
      from: 'box'
    };
  each(medias || [media], function (k, v) {
    if (!v) return;
    mediaVal.push(v[0] + ':' + v[1]);
  });
  params.media = mediaVal.join(',');
  ajax.post('user_messages_new.php?task=send&to={/literal}{$owner->user_info.user_username}{literal}&message=' + val('write_box_text') + '&subject=' + val('write_box_subj') + '', params, {onDone: function(text) {
    box.hideProgress();
    box.hide();
    showDoneBox(text);
  }, showProgress: box.showProgress, hideProgress: box.hideProgress});
}

box.removeButtons();
box.addButton(getLang('global_cancel'), null, 'no');
box.addButton('Отправить', cur.submitBoxMessage);
box.setControlsText('<a id="send_msg_to_history" href="/write1?hist=1" onclick="return writeFullPage(event);"></a>');

window.writeFullPage = function(e) {
  if (checkEvent(e)) return true;
  box.showProgress();
  var query = {'0': 'write1', hist: 1, message: val('write_box_text'), title: val('write_box_subj'), media: ''};
  debugLog(query, cur.addMailBoxMedia.chosenMedia, cur.addMailBoxMedia.chosenMediaData);
  if (cur.addMailBoxMedia.chosenMedia) {
    query.media = cur.addMailBoxMedia.chosenMedia.join('*') + ';' + ((isArray(cur.addMailBoxMedia.chosenMediaData) ? cur.addMailBoxMedia.chosenMediaData.join('*') : cur.addMailBoxMedia.chosenMediaData) || '');
  }
  nav.go(query, null, {noframe: 1});
  return false;
}
setTimeout(function() {
  ge('write_box_text').focus();
}, 0);

var tmp = cur.postTo;
cur.postTo = false;
box.setOptions({onHide: function() { cur.postTo = tmp; }});

stManager.add(['page.js', 'page.css'], function() {
  cur.addMailBoxMedia = initAddMedia('mail_box_add_link', 'mail_box_added_row', cur.mediaTypes, {mail: 1});
  cur.addMailBoxMedia.onChange = function() {
    box.changed = true;
  }
});{/literal}




