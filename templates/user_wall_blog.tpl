<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" id="vseti">
<head>
<title>ВСети | Микроблог (Разработка)</title>
<link href="/favicon.ico" rel="shortcut icon">
<link rel="stylesheet" href="http://vceti.su/css/al/common.css" type="text/css" />
<link rel="stylesheet" href="http://vceti.su/css/al/profile.css" type="text/css" />
<link rel="stylesheet" href="http://vceti.su/css/al/page.css" type="text/css" />
<link rel="stylesheet" href="http://vceti.su/css/al/notifier.css" type="text/css" />

<script type="text/javascript" src="/al_loader.php?act=nav&v=4658"></script>
<script src="http://vceti.su/js/niftycube.js"></script>



<script type="text/javascript">
var vs = {literal}{{/literal}
  al: parseInt('3') || 4,
  id: {$owner->user_info.user_id},
  intnat: '' ? true : false,
  host: 'vceti.net',
  lang: 0,
  rtl: parseInt('') || 0,
  version: 4658,
  zero: false,
  contlen: 136663,
  loginscheme: 'https',
  ip_h: '5572072ca4639acd63',
  navPrefix: '/'
{literal}}{/literal}
{literal}
window.locDomain = vs.host.match(/[a-zA-Z]+\.[a-zA-Z]+\.?$/)[0];
var _ua = navigator.userAgent.toLowerCase();
if (/opera/i.test(_ua) || !/msie 6/i.test(_ua) || document.domain != locDomain) document.domain = locDomain;
var ___htest = (location.toString().match(/#(.*)/) || {})[1] || '';
if (vs.al != 1 && ___htest.length && ___htest.substr(0, 1) == vs.navPrefix) {
  if (vs.al != 3 || vs.navPrefix != '!') {
    location.replace(location.protocol + '//' + location.host + '/' + ___htest.replace(/^(\/|!)/, ''));
  }
}

var StaticFiles = {
  'common.js' : {v: 486}, 'common.css': {v: 178}, 'ie6.css': {v: 19}, 'ie7.css': {v: 13},'lang0_0.js':{v:4238},'profile.css':{v:70},'page.css':{v:127},'profile.js':{v:71},'page.js':{v:174},'notifier.js':{v:94},'notifier.css':{v:34}
}

var lastWindowHeight = 0;
</script>{/literal}

<script type="text/javascript" src="/js/al/common.js"></script>
<script type="text/javascript" src="http://vceti.su/js/al/profile.js"></script>
<script type="text/javascript" src="http://vceti.su/js/al/page.js"></script>
<script type="text/javascript" src="http://vceti.su/js/al/notifier.js"></script>
<script type="text/javascript" src="http://vceti.su/js/lang0_0.js"></script>



</head>


<body onresize="onBodyResize()" class="is_rtl"><div id="system_msg" class="fixed"></div><div id="utils"></div><div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div><div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div><div id="stl_left"></div><div id="stl_side"></div> 
<script type="text/javascript">domStarted();</script>


 <div class="wall_module" id="profile_wall">
 <div class="module_header wall_header">
  <a id="page_wall_header" class="header_top clear_fix" onclick="if (checkEvent(event)) return true; return wall.switchWall()">

   <span class="fl_r" id="page_wall_switch"></span>
   Стена<span id="page_wall_posts_count" onclick="if (checkEvent(event)) return true; nav.go(this.parentNode, event); return cancelEvent(event);"></span>
  </a>

 </div>
 <div id="submit_post_box" class="clear_fix" onclick="return cancelEvent(event)">
  <div class="clear_fix">
    <textarea
      id="post_field"
      class="fl_l"
      onkeyup="wall.checkPostLen(this.value)"
      onkeydown="onCtrlEnter(event, wall.sendPost)"
      onfocus="wall.showEditPost();"
      placeholder="{if $user->is_me($owner)}Что новенького, {$owner->user_info.user_name}?{else}Написать сообщение...{/if}"
    ></textarea>

  </div>
  <div id="post_warn"></div>
  <div id="post_note_name_wrap"><input id="post_note_name" type="text" class="text" value="" placeholder="Введите название заметки" /></div>
  <div id="submit_post" onclick="event.cancelBubble=true;">

   <img style="border: 0; cursor: pointer;" src="/images/smilies_pm/smile.gif" alt="smile" onclick="wall.addSmiley(':smile:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/wink.gif" alt="wink" onclick="wall.addSmiley(':wink:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/angel.gif" alt="angel" onclick="wall.addSmiley(':angel:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/blum.gif" alt="blum" onclick="wall.addSmiley(':blum:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/blush.gif" alt="blush" onclick="wall.addSmiley(':blush:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/cray.gif" alt="cray" onclick="wall.addSmiley(':cray:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/crazy.gif" alt="crazy" onclick="wall.addSmiley(':crazy:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/dance.gif" alt="dance" onclick="wall.addSmiley(':dance:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/dirol.gif" alt="dirol" onclick="wall.addSmiley(':dirol:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/good.gif" alt="good" onclick="wall.addSmiley(':good:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/music.gif" alt="music" onclick="wall.addSmiley(':music:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/nea.gif" alt="nea" onclick="wall.addSmiley(':nea:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/pardon.gif" alt="pardon" onclick="wall.addSmiley(':pardon:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/rolleyes.gif" alt="rolleyes" onclick="wall.addSmiley(':rolleyes:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/shok.gif" alt="shok" onclick="wall.addSmiley(':shok:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/wacko2.gif" alt="wacko2" onclick="wall.addSmiley(':wacko2:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/yahoo.gif" alt="yahoo" onclick="wall.addSmiley(':yahoo:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/laugh.gif" alt="laugh" onclick="wall.addSmiley(':laugh:','post_field')" /><img style="border: 0; cursor: pointer;" src="/images/smilies_pm/wall.gif" alt="wall" onclick="wall.addSmiley(':wall:','post_field')" />
   <div id="media_preview" class="clear_fix media_preview"></div>
   <div class="button_blue fl_l"><button id="send_post" onclick="wall.sendPost()">Отправить</button></div>
   <div id="page_add_media" class="fl_r"><a>Прикрепить</a></div>

   <div class="progress fl_r" id="page_post_progress"></div>
  </div>
 </div>

 <div class="clear_fix">
  <div id="page_wall_posts" class="wall_posts all">


{include file='user_al_wall_get.tpl'}</div>

</div>

  <a class="more_link clear" id="wall_more_link" onclick="wall.showMore(10);"><div class="progress" id="wall_more_progress"></div><div>к предыдущим записям</div></a>
 </div>
</div>







     </div>    </div>   </div>  </div> </div></div>
{literal}
<script type="text/javascript">
var page = 0;
var isGroup = 0;
function hasLinks(word) {return word.match(/[A-Za-z0-9]{2,2}\.(ru|ua|com|net|info|biz|org|us|by)/i);}
</script>


<script type="text/javascript">
if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
   document.getElementsByTagName('body')[0].innerHTML = '';
} else {
      domReady();
      
gSearch.init();
cur.lang = extend(cur.lang || {}, {
  show_full: 'показать подробную информацию',
  hide_full: 'скрыть подробную информацию',
  sure_delete_photo: 'Вы уверены, что хотите удалить фотографию?',
  change_current_info: 'изменить статус',
  share_current_info: 'Рассказать друзьям',
  create_poll: 'Опрос',
  dont_attach: 'Не прикреплять'
});

Profile.init({{/literal}"user_id":"{$owner->user_info.user_id}","loc":"id{$owner->user_info.user_id}","back":"{$owner->user_info.user_name} {$owner->user_info.user_lastname}","reply_names":{literal}{{/literal}{literal}}{/literal},"max_post_len":280,"post_hash":"{$hash->hash_gen($owner->user_info.user_id, 'wall_post')}","media_types":[["graffiti","Граффити"],["photo","Фотографию"],["video","Видеозапись"],["audio","Аудиозапись"]],"wall_tpl":{literal}{"own_reply_link":"<span class=\"divide\">|<\/span><a class=\"reply_link\" onclick=\"showBox('al_wall.php', {act: 'own_reply', post: '%post_id%'}, {stat: ['ui_controls.css', 'ui_controls.js', 'mentions.js']})\">Ответить<\/a>","post":"<div id=\"post%post_id%\" class=\"post\" onmouseover=\"wall.postOver('%post_id%')\" onmouseout=\"wall.postOut('%post_id%')\">\n	  <table class=\"post_table\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	    <tr>\n	     <td class=\"image\">\n	       <a class=\"post_image\" href=\"%link%\" onclick=\"return nav.go(this, event)\"><img src=\"%photo%\" \/><\/a>\n	       %online%\n	     <\/td>\n	     <td class=\"info\">\n	       %del%\n	       <div class=\"text\">%name% %text%<\/div>\n	       <div class=\"like_wrap fl_r\" onmouseover=\"wall.likeOver('%post_id%')\" onmouseout=\"wall.likeOut('%post_id%')\" onclick=\"wall.like('%post_id%', '1314053711_73d2fe21c5c59e9ac9'); event.cancelBubble = true;\">\n	  <span class=\"like_link fl_l\" id=\"like_link%post_id%\">Мне нравится<\/span>\n	  <div class=\"no_likes fl_l\" id=\"like_icon%post_id%\"><\/div>\n	  <span class=\"like_count fl_l\" id=\"like_count%post_id%\"><\/span>\n	<\/div>\n	       <div class=\"replies\" onclick=\"event.cancelBubble = true;\"><div class=\"reply_link_wrap\">\n	  <small><a href=\"\/wall%post_id%\" onclick=\"return nav.go(this, event)\">%date%<\/a><\/small>%own_reply_link%\n	<\/div>\n	<div class=\"replies_wrap\" id=\"replies_wrap%post_id%\" style=\"display: none;\">\n	  <div id=\"replies%post_id%\"><input type=\"hidden\" id=\"start_reply%post_id%\" value=\"\"\/><\/div>\n	<\/div><\/div>\n	     <\/td>\n	    <\/tr>\n	  <\/table>\n	<\/div>","reply":"<div id=\"post%reply_id%\" class=\"reply clear\" onmouseover=\"wall.actsOver('%reply_id%')\" onmouseout=\"wall.actsOut('%reply_id%')\">\n	  <table class=\"reply_table\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	    <tr>\n	      <td class=\"image\">\n	        <a class=\"reply_image\" href=\"%link%\" onclick=\"return nav.go(this, event)\">\n	          <img border=\"0\" src=\"%photo%\" \/>\n	        <\/a>\n	      <\/td>\n	      <td class=\"info\">\n	        <div class=\"reply_text\">\n	          <a class=\"author\" href=\"%link%\" onclick=\"return nav.go(this, event)\">%name%<\/a>\n	          %text%\n	          %media%\n	        <\/div>\n	        <div class=\"info_footer\">\n	          <span class=\"fl_r actions\" id=\"actions%reply_id%\">%acts%<\/span>\n	          <a class=\"wd_lnk\" href=\"\/wall%post_id%?reply=%reply_msg_id%\" onclick=\"return nav.go(this, event)\">%date%<\/a> %to_link%\n	        <\/div>\n	      <\/td>\n	    <\/tr>\n	  <\/table>\n	<\/div>","del":"<div class=\"fl_r\">\n	  <div class=\"delete_post\">\n	    <div id=\"delete_post%post_id%\" onclick=\"wall.deletePost('%post_id%', '1314053711_03c6ed08f0d333da03');\" onmouseover=\"wall.activeDeletePost('%post_id%', 'Удалить запись')\" onmouseout=\"wall.deactiveDeletePost('%post_id%')\"><\/div>\n	  <\/div>\n	<\/div>","spam":"<div class=\"fl_r\">\n	  <div class=\"delete_post\">\n	    <div id=\"delete_post%post_id%\" onclick=\"wall.markAsSpam('%post_id%', '1314053711_ba91d14deee886cf21');\" onmouseover=\"wall.activeDeletePost('%post_id%', 'Отметить как спам')\" onmouseout=\"wall.deactiveDeletePost('%post_id%')\"><\/div>\n	  <\/div>\n	<\/div>","del_reply":"<a onclick=\"wall.deletePost('%reply_id%', '1314053711_03c6ed08f0d333da03');\">Удалить<\/a>","spam_reply":"<a onclick=\"wall.markAsSpam('%reply_id%', '1314053711_ba91d14deee886cf21');\">Это спам<\/a>","answer_reply":"<a class=\"reply_to_link\" href=\"#\" onmouseup=\"return wall.replyTo('%post_id%', %reply_msg_id%, %reply_uid%, event);\" onclick=\"cancelEvent(event);return false;\">Ответить<\/a>","date_format":"сегодня в {hour}:{minute}","time_system":false,"abs_timestamp":1318825794,"lang":{"wall_M_replies_of_N":["","%s комментарий из {link}{all}{\/link}","%s последних комментария из {link}{all}{\/link}","%s последних комментариев из {link}{all}{\/link}"],"wall_hide_replies":"Скрыть комментарии","_show_n_of_m_last":["","Показать последние %s комментарий из {count}","Показать последние %s комментария из {count}","Показать последние %s комментариев из {count}"],"wall_show_all_n_replies":["","Показать ещё %s комментарий","Показать все %s комментария","Показать все %s комментариев"],"wall_N_replies":["","%s комментарий","%s комментария","%s комментариев"],"wall_three_last_replies":"три последних комментария","wall_all_replies":"все комментарии","wall_x_new_replies_more":["","Добавлен %s новый комментарий","Добавлены %s новых комментария","Добавлены %s новых комментариев"],"wall_just_now":["","Одну секунду назад","Две секунды назад","Три секунды назад","Четыре секунды назад","Пять секунд назад"],"wall_X_seconds_ago_words":["","Одну секунду назад","Две секунды назад","Три секунды назад","Четыре секунды назад","Пять секунд назад"],"wall_X_seconds_ago":["","%s секунду назад","%s секунды назад","%s секунд назад"],"wall_X_minutes_ago_words":["","Одну минуту назад","Две минуты назад","Три минуты назад","Четыре минуты назад","Пять минут назад"],"wall_X_minutes_ago":["","%s минуту назад","%s минуты назад","%s минут назад"],"wall_X_hours_ago_words":["","Один час назад","Два часа назад","Три часа назад","Четыре часа назад","Пять часов назад"],"wall_X_hours_ago":["","%s час назад","%s часа назад","%s часов назад"]}},"wall_type":"all","wall_counts":["","%s запись","%s записи","%s записей"],"all_link":"к записям Алексея","own_link":"ко всем записям","share":"","photos_count":1,"skip_one":0,"photos":{},"info":["<div class=\"profile_info\">\n <div class=\"clear_fix\">\n  <div class=\"label fl_l\">День рождения:<\/div>\n  <div class=\"labeled fl_l\">\n        <\/div>\n <\/div>\n  <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Родной город:<\/div>\n  <div class=\"labeled fl_l\"><a href=\"\/gsearch.php?from=people&c%5Bhome_town%5D=Москва\">Москва<\/a><\/div>\n <\/div>\n   <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Семейное положение:<\/div>\n  <div class=\"labeled fl_l\">\n   <a href=\"\/gsearch.php?from=people&c%5Bstatus%5D=6\">\n        \n        \n        \n        \n        В активном поиске<\/a>                      <\/div>\n <\/div>\n   <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Где я сейчас:<\/div>\n  <div class=\"labeled fl_l\">\n   <a onclick=\"Profile.showMap(1)\">на карте   <\/div>\n <\/div>\n <\/div>\n<a class=\"profile_info_link noselect\" onclick=\"Profile.showFull()\">показать подробную информацию<\/a>\n","<div class=\"profile_info\">\n <div class=\"clear_fix\">\n  <div class=\"label fl_l\">День рождения:<\/div>\n  <div class=\"labeled fl_l\">\n        <\/div>\n <\/div>\n  <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Родной город:<\/div>\n  <div class=\"labeled fl_l\"><a href=\"\/gsearch.php?from=people&c%5Bhome_town%5D=Москва\">Москва<\/a><\/div>\n <\/div>\n   <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Семейное положение:<\/div>\n  <div class=\"labeled fl_l\">\n   <a href=\"\/gsearch.php?from=people&c%5Bstatus%5D=6\">\n        \n        \n        \n        \n        В активном поиске<\/a>                      <\/div>\n <\/div>\n   <div class=\"clear_fix miniblock\">\n  <div class=\"label fl_l\">Где я сейчас:<\/div>\n  <div class=\"labeled fl_l\">\n   <a onclick=\"Profile.showMap(1)\">на карте   <\/div>\n <\/div>\n <\/div>\n<a class=\"profile_info_link noselect\" onclick=\"Profile.hideFull()\">скрыть подробную информацию<\/a>\n"],"mail_cache":["Новое сообщение","<div class=\"mail_box_content clear_fix\">\n <div class=\"label fl_l ta_r\">Кому:<\/div>\n <div class=\"labeled fl_l\"><a class=\"mem_link\" href=\"\/id1\" onclick=\"return nav.go(this, event)\">Алексей Фирсаев<\/a><\/div>\n <div class=\"label fl_l ta_r\">Тема:<\/div>\n <div class=\"labeled fl_l\"><input type=\"text\" id=\"write_box_subj\" name=\"write_box_subj\" onchange=\"curBox().changed=true;\" \/><\/div>\n <div class=\"label fl_l ta_r\">Сообщение:<\/div>\n <div class=\"labeled fl_l\"><textarea id=\"write_box_text\" name=\"write_box_text\" onkeydown=\"if (event.ctrlKey && event.keyCode == 13) cur.submitBoxMessage();\" onchange=\"curBox().changed=true;\"><\/textarea><\/div>\n <div class=\"fl_r\" id=\"mail_box_add_row\" style=\"display: none\"><a class=\"link\" id=\"mail_box_add_link\">Прикрепить<\/a><\/div>\n <div class=\"label fl_l\"><\/div>\n <div class=\"labeled fl_l\">\n <div id=\"mail_box_added_row\" class=\"media_preview\"><\/div><\/div>\n<\/div>","cur.addMailBoxMedia = null;\ncur.decodedHashes = {};\ncur.dec_hash = function(hash) { \n    (function(_){cur.decodedHashes[_]=(function(__){var ___=ge?'':'___';for(____=0;____<__.length;++____)___+=__.charAt(__.length-____-1);return geByClass?___:'___';})(_.substr(_.length-5)+_.substr(4,_.length-12));})(hash);\n  }\ncur.decodehash = function(hash) {\n  cur.dec_hash(hash);\n  return cur.decodedHashes[hash];\n}\n\ncur.mediaTypes = [[\"photo\",\"Фотографию\"],[\"video\",\"Видеозапись\"],[\"audio\",\"Аудиозапись\"],[\"doc\",\"Документ\"]];\n\ncur.submitBoxMessage = function() {\n  if (isVisible(ge('sending_progress'))) return;\n\n  if (trim(ge('write_box_text').value).length || cur.addMailBoxMedia.chosenMedia) {\n    box.showProgress();\n    var params = {act: 'a_send', ajax: 1, chas: cur.decodehash('87d4cd5caa53112824'), to_id: 1, title: ge('write_box_subj').value, message: ge('write_box_text').value, from: 'box'};\n    if (cur.addMailBoxMedia.chosenMedia) {\n      params.media = cur.addMailBoxMedia.chosenMedia[0] + ':' + cur.addMailBoxMedia.chosenMedia[1];\n    }\n    ajax.post('al_mail.php', params, {onDone: function(text) {\n      box.hideProgress();\n      box.hide();\n      showDoneBox(text);\n    }});\n  } else {\n    ge('write_box_text').focus();\n  }\n}\n\nbox.removeButtons();\nbox.addButton(getLang('global_cancel'), null, 'no');\nbox.addButton('Отправить', cur.submitBoxMessage);\nbox.setControlsText('<a id=\"send_msg_to_history\" href=\"\/write1?hist=1\">Показать историю переписки<\/a>');\n\n\nwindow.writeFullPage = function(e) {\n  if (checkEvent(e)) return true;\n  box.showProgress();\n  var query = {'0': 'write1', hist: 1, message: val('write_box_text'), title: val('write_box_subj'), media: ''};\n  debugLog(query, cur.addMailBoxMedia.chosenMedia, cur.addMailBoxMedia.chosenMediaData);\n  if (cur.addMailBoxMedia.chosenMedia) {\n    query.media = cur.addMailBoxMedia.chosenMedia.join('*') + ';' + ((isArray(cur.addMailBoxMedia.chosenMediaData) ? cur.addMailBoxMedia.chosenMediaData.join('*') : cur.addMailBoxMedia.chosenMediaData) || '');\n  }\n  nav.go(query, null, {noframe: 1});\n  return false;\n}\nsetTimeout(function() {\n  ge('write_box_text').focus();\n}, 0);\n\nvar tmp = cur.postTo;\ncur.postTo = false;\nbox.setOptions({onHide: function() { cur.postTo = tmp; }});\n\nstManager.add(['page.js', 'page.css'], function() {\n  cur.addMailBoxMedia = initAddMedia('mail_box_add_link', 'mail_box_added_row', cur.mediaTypes);\n  cur.addMailBoxMedia.onChange = function() {\n    box.changed = true;\n  }\n});"]{/literal},"qversion":3,"wall_oid":"{$owner->user_info.user_id}","info_hash":"{$hash->hash_gen($owner->user_info.user_id, 'wall_info')}","photo_hash":"{$hash->hash_gen($owner->user_info.user_id, 'wall_photo')}","profph_hash":"{$hash->hash_gen($owner->user_info.user_id, 'wall_profph')}"{literal}});
zNav({}, {});//{$owner->user_info.user_id}","loc":"id{$owner->user_info.user_id}","back":"{$owner->user_info.user_name} {$owner->user_info.user_lastname}{literal}

}
</script>

</script>
</body>
</html>{/literal}
