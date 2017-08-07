4658<!><!>0<!>4250<!>0<!><div onmouseover="return Profile.friendTooltip()" class="friend_status_info" id="profile_am_subscribed">Вы отправили заявку</div><!><!bool><!><div class="preq_wrap">
  <div class="preq_content" onclick="if (val('preq_input')) return; setStyle('preq_input', 'height', 14); hide('preq_buttons');">
    Вы отправили {$owner->get_declination_user($owner->user_info.user_fname, 3)} заявку в друзья, а также подписались на обновления её страницы. <a onclick="Profile.toggleFriend(ge('profile_am_subscribed'), 'bac63b0431660d1191', 0, event)">Отмена</a>.
  </div>
  <div class="preq_bottom" style="">
    <textarea
      id="preq_input"
      placeholder="Прикрепить сообщение.."
      onkeyup="Profile.reqTextChanged(event)"
    ></textarea>
    <div id="preq_warn"></div>
    <div class="clear_fix" id="preq_buttons">
      <div class="button_blue fl_r">
        <button id="preq_submit" onclick="Profile.submitReqText()">
          Отправить
        </button>
      </div>
    </div>
  </div>
  <div class="preq_bottom" style="display: none">
    <div class="preq_header">Ваше сообщение</div>
    <div id="preq_text"></div>
  </div>
</div><!>{literal}var el = ge('preq_input');
cur.reqHash = 'bac63b0431660d1191';
if (isVisible(el.parentNode)) {
  autosizeSetup(el, {minHeight: 40, maxHeight: 80});
  setTimeout(function() {
    placeholderSetup(el);
    setStyle(el, 'height', 14);
  }, 0);
  if (el.autosize) {
    addEvent(el, 'focus', function() {
      el.autosize.update();
      show('preq_buttons');
    });
  }
  cur.lang = extend(cur.lang || {}, {
    friends_exceeds_symbol_limit: ["","Объем превышен на %s символ.","Объем превышен на %s символа.","Объем превышен на %s символов."],
    friends_exceeds_lines_limit: ["","Объем превышен на %s строку.","Объем превышен на %s строки.","Объем превышен на %s строк."]
  });
}{/literal}<!><!bool>