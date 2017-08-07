4658<!>ui_controls.js,ui_controls.css,friends.css<!>0<!>4250<!>0<!>Добавление в друзья<!><table class="table">
  <tr><td width="110" class="friends_add_image" valign="top">
    <a href="/id213" onclick="return nav.go(this, event)"><img src="{$owner->user_photo("./images/nophoto.gif")}" width="110" height="110"></a>
  </td><td valign="top">
    <div class="friends_add_block">Вы хотите, чтобы <a class="mem_link" href="/id{$owner->user_info.user_id}" onclick="return nav.go(this, event)">{$owner->user_info.user_fname}</a> был в списке Ваших друзей?<br /><br />Мы оповестим его об этом, и он должен будет подтвердить, что вы друзья.</div>
    <!--
    <div class="friends_add_block">Вы можете сразу уточнить группу:</div>
    <div class="friends_add_block" id="friends_add_lists">
      <div class="checkbox" id="friends_flist_29" onclick="return checkbox(this);"><div></div>Родственники</div>
      <div class="checkbox" id="friends_flist_28" onclick="return checkbox(this);"><div></div>Близкие друзья</div>
      <div class="checkbox" id="friends_flist_27" onclick="return checkbox(this);"><div></div>Коллеги</div>
      <div class="checkbox" id="friends_flist_26" onclick="return checkbox(this);"><div></div>Друзья по школе</div>
      <div class="checkbox on" id="friends_flist_25" onclick="return checkbox(this);"><div></div>Друзья по вузу</div>
    </div>
    -->
    <div class="friends_add_block" style="display: none;">
      <input id="friend_add_cats" name="friend_add_cats" type="hidden" />
    </div>
    <div id="add_msg" class="friends_add_block">
        <a onclick="show('add_msg_box');hide('add_msg');elfocus('add_msg_text');return false;">Приложить сообщение</a>
    </div>
    <div id="add_msg_box" class="friends_add_block" style="display:none;">
      <a onclick="hide('add_msg_box');show('add_msg');return false;">Скрыть сообщение</a>
      <textarea onkeypress="if (event.keyCode==10 || (event.ctrlKey && event.keyCode==13)){literal} { cur.addFriend(); } {/literal}" onchange="curBox().changed=true;" name="add_msg_text" id="add_msg_text" rows="6" style="width: 220px; margin-top: 10px;" onkeyup="checkTextLength(500, this, 'friend_add_warn')"></textarea>
      <div id="friend_add_warn"></div>
    </div>
  </td></tr>
</table><!>{literal}var catsArr = [];
if (catsArr.length) {
  cur.friendDD = new Dropdown(ge('friend_add_cats'), catsArr, {
    selectedItems: [],
    defaultItems: catsArr,
    multiselect: true,
    placeholder: 'Выберите список друзей',
    introText: 'Выберите список друзей',
    width: 228,
    dropdown: true,
    onTagAdd: function(data, value) {
      var cats_vals = value.split(','), mask = 1;
      for (var i in cats_vals) {
        mask |= 1 << cats_vals[i];
      }
      ge('friend_add_cats').value = mask;
    }
  });
}
box.setOptions({onClean: function() {
  if (cur.friendDD) {
    cur.friendDD.destroy();
  }
}, bodyStyle: 'padding: 12px 14px;'});
box.removeButtons().addButton('Отмена', box.hide, 'no');
cur.addFriend = function() {
  var cats = intval(ge('friend_add_cats').value);
  var catsUsed = (cats) ? 1 : 0;
  var checkboxes = geByClass('checkbox', ge('friends_add_lists'));
  for (var i in checkboxes) {
    if (isChecked(checkboxes[i])) {
      var data = parseInt(checkboxes[i].id.split('_')[2]);
      if (data) {
        cats += (1 << data);
      }
    }
  }
  ajax.post('user_friends_manage.php?user_id={/literal}{$owner->user_info.user_id}{literal}&task=add_do', {message: ge('add_msg_text').value}, {
    onDone: function(text) {
      box.hide();
      text = text.replace('<b>', '<div class="top_result_header">').replace('</b>', '</div>');
      showDoneBox(text, {out: 2000});
    },
    showProgress: box.showProgress,
    hideProgress: box.hideProgress
  });
};
box.addButton('Добавить в друзья', cur.addFriend);{/literal}