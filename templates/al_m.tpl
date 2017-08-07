4658<!>boxes.css<!>0<!>4250<!>0<!>Люди, которым это понравилось<!><div class="tabbed_box">
  <div class="summary_tabs clear_fix"></div>
  <div class="tabbed_sh tabbed_sh1"></div>
  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh3"></div>
  <div class="tabbed_sh tabbed_sh4"></div>
    <div class="tabbed_container clear_fix " style="height:310px;"><div style="padding: 7px 5px 5px;">
<div class="fl_r" style="padding:0 5px;width:200px;"></div><h4 style="border-bottom: 1px solid #DAE1E8;margin:0 5px 10px;padding:5px 0 2px;">Понравилось 1 человеку</h4>
<table cellpadding="0" cellspacing="0">
<tr> {section name=likes_loop loop=$likes}<td> <div class="liked_box_row">
<div class="liked_box_thumb">
    
    <a href="/mistik31" onclick="return nav.go(this, event)"><img src="http://cs4272.vkontakte.ru/u40297585/e_e3183ab5.jpg" /></a>
  </div>
  <div>
    <a href="/mistik31" onclick="return nav.go(this, event)">Тест{$likes[likes_loop].myuser->user_info.user_fname}</a>
  </div>
</div></td>{/section}</tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
</table>
</div></div>
  <div class="tabbed_sh tabbed_sh4"></div>
  <div class="tabbed_sh tabbed_sh3"></div>
  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh1"></div>
  <div class="tabbed_sh tabbed_sh0"></div>
</div><!>{literal}setUpTabbedBox(box, 478, [{"label":"Оценили","url":"like.php","data":{"act":"a_get_members","object":"wall40297585_2309"}},{"label":"Поделились","url":"like.php","data":{"act":"a_get_members","object":"wall40297585_2309","published":1}}], '0', ["Люди, которым это понравилось","<div style=\"padding: 7px 5px 5px;\">\n<div class=\"fl_r\" style=\"padding:0 5px;width:200px;\"><\/div><h4 style=\"border-bottom: 1px solid #DAE1E8;margin:0 5px 10px;padding:5px 0 2px;\">Понравилось 1 человеку<\/h4>\n<table cellpadding=\"0\" cellspacing=\"0\">\n<tr><td><div class=\"liked_box_row\">\n  <div class=\"liked_box_thumb\">\n    \n    <a href=\"\/mistik31\" onclick=\"return nav.go(this, event)\"><img src=\"http:\/\/cs4272.vkontakte.ru\/u40297585\/e_e3183ab5.jpg\" \/><\/a>\n  <\/div>\n  <div>\n    <a href=\"\/mistik31\" onclick=\"return nav.go(this, event)\">Ярослав<\/a>\n  <\/div>\n<\/div><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><\/tr><tr><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><\/tr><tr><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><td><\/td><\/tr>\n<\/table>\n<\/div>","box.tabContent.className = 'tabbed_container clear_fix ';\nvar st = 'height:310px;';\nvar items = st.split(';');\nfor (var i = 0; i < items.length; ++i) {\n  var name_value = items[i].split(':');\n  if (name_value.length > 1 && name_value[0].length) {\n    box.tabContent.style[trim(name_value[0])] = trim(name_value[1]);\n  }\n}cur.likesBox = box;box.setControlsText('');"], arguments[0], arguments[1]);cur.likesBox = box;box.setControlsText('');{/literal}