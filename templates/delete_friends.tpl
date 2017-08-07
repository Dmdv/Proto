
4658<!><!>0<!>4250<!>0<!>Удаление из списка друзей<!><div style="margin-bottom:10px; text-align:center"><img src="{$owner->user_photo("./images/nophoto.gif")}" width="110" height="110"/></div><div style="text-align:center">
<a href="/id213" onclick="return nav.go(this, event)">{$owner->user_info.user_fname}</a> Вам больше не друг?
</div><!>{literal}box.removeButtons().addButton('Отмена', box.hide, 'no');
box.addButton('Убрать из друзей', function() {
  ajax.post('user_friends_manage.php?user_id={/literal}{$owner->user_info.user_id}{literal}&task=remove_do', {mid: 213, act: 'remove', hash: '212c79ba0d63319f590ef83e386b02c5'}, {onDone: function(text) {
    box.hide();
    if (cur.onRemoveFriend) {
      cur.onRemoveFriend(213);
    } else {
      nav.reload();
    }
    text = text.replace('<b>', '<div class="top_result_header">').replace('</b><br>', '</div>');
    showDoneBox(text, {out: 2000});
  }});
});{/literal}