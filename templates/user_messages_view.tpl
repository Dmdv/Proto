{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}<link type="text/css" rel="stylesheet" href="/css/al/profile.css"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css"></link><script type="text/javascript" src="/js/lang0_0.js"></script><script type="text/javascript" src="/js/al/profile.js"></script><script type="text/javascript" src="/js/al/page.js"></script><script type="text/javascript" src="/js/al/notifier.js"></script>

<link rel="stylesheet" type="text/css" href="/css/al/common.css" />
<link type="text/css" rel="stylesheet" href="/css/al/im.css"></link><link type="text/css" rel="stylesheet" href="/css/al/wide_dd.css"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css"></link><link type="text/css" rel="stylesheet" href="/css/al/privacy.css"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css"></link><script type="text/javascript" src="/js/al/common.js"></script><script type="text/javascript" src="/js/lang0_0.js"></script><script type="text/javascript" src="/js/al/im.js"></script><script type="text/javascript" src="/js/al/page.js"></script><script type="text/javascript" src="/js/al/privacy.js"></script><script type="text/javascript" src="/js/al/notifier.js"></script>
 <div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="display: none">
            <h1 id="title"></h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content"><div id="im_nav_wrap">
  <div class="tabs im_tabs t_bar clear_fix">
  <ul id="im_top_tabs" class="t0">
    <li id="tab_dialogs" class="">
      <a onclick="IM.activateTab(-1); return false;" href="/im"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Диалоги</b>
      </a>
    </li>
    <li id="tab_conversation" class="active_link">
      <a onclick="return false;" href="/im"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Просмотр диалогов<span id="im_unread_count"></span></b>
      </a>
    </li>
    <li id="tab_search" class="">
      <a onclick="IM.activateTab(-2); return false;" href="/im"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Результаты поиска</b>
      </a>
    </li>
    <li id="tab_spam" class="">
      <a onclick="IM.activateTab(-4); return false;" href="/im?sel=-4"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Спам</b>
      </a>
    </li>
    <li id="tab_friends" class="">
      <a onclick="IM.activateTab(0); return false;" href="/im"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Выбор собеседника</b>
      </a>
    </li>
    <li id="tab_write" class="">
      <a onclick="IM.activateTab(0); return false;" href="/im"><b class="tl1"><b></b></b><b class="tl2"></b>
       <b class="tab_word">Новое сообщение</b>
      </a>
    </li>
    <li class="t_r" id="im_write_wrap">
      <a onclick="IM.activateTab(0, 1)" id="im_write" style="">К списку друзей</a>
    </li>
    <li class="t_r" id="im_chat_actions">
      <a id="chat_actions">Действия</a><span class="divider">|</span>
    </li>
    <li class="t_r" id="im_to_dialog"></li>
  </ul>
</div>
<div id="im_bar" class="bar">
  <div id="im_tabs" class="clear_fix" style=""><div class="im_tab_selected" id="im_tab90234953"><div class="im_tab1"><div class="im_tab2">
  <table cellspacing="0" cellpadding="0"><tr>
    <td><div class="im_tab3">Диалог<span id="im_unread90234953"></span></div></td>
    <td><div class="im_tabx" onclick="cancelEvent(event); IM.closeTab(90234953);"></div></td>
  </tr></table>
</div></div></div></div>
  <div id="im_log_controls" class="clear_fix im_bar_controls" style="">
    <div class="button_blue fl_r"><button onclick="IM.markLogMsgs('fwd', this);">Переслать..</button></div>
    <div class="button_blue fl_r"><button onclick="IM.markLogMsgs('report', this);">Удалить и отметить как спам</button></div>
    <div class="button_blue fl_r"><button onclick="IM.markLogMsgs('del', this);">Удалить</button></div>
    <div class="im_tab_selected" id="im_tab_cancel_mark"><div class="im_tab1"><div class="im_tab2">
      <table cellspacing="0" cellpadding="0"><tr>
        <td><div class="im_tab3" id="im_n_marked"></div></td>
        <td><div class="im_tabx" onclick="IM.markLogMsgs('cancel');"></div></td>
      </tr></table>
    </div></div></div>
  </div> <div id="im_spam_controls" class="clear_fix im_bar_controls" style="">
    <div class="button_blue fl_r"><button onclick="IM.markSpamMsgs('delspam', this);"><span id="im_spam_mark_del"></span></button></div>
    <div class="button_blue fl_r"><button onclick="IM.markSpamMsgs('nospam', this);"><span id="im_spam_mark_no"></span></button></div>
    <div class="im_tab_selected" id="im_tab_cancel_spam_mark"><div class="im_tab1"><div class="im_tab2">
      <table cellspacing="0" cellpadding="0"><tr>
        <td><div class="im_tab3" id="im_spam_n_marked"></div></td>
        <td><div class="im_tabx" onclick="IM.markSpamMsgs('cancel');"></div></td>
      </tr></table>
    </div></div></div>
  </div> <div id="im_spam_flush" class="clear_fix im_bar_controls">
    <div class="im_spam_hint fl_l">В этой папке чахнут все подозрительные рекламные сообщения</div>
    <div class="button_blue fl_r"><button onclick="IM.flushSpam();">Удалить все сообщения из папки</button></div>
  </div>
  <div id="im_filter_out" class="clear_fix" style="display: none;">
    <input type="text" class="text fl_l" id="im_filter" placeholder="Начните вводить имя друга или email" value="" />
    <div id="im_filter_reset" class="fl_l"></div>
    <div id="im_search_prg" class="progress fl_l"></div>
    <div class="fl_r button_blue"><button onclick="IM.activateTab(-3);" id="im_search_btn">Написать сообщение</button></div>
  </div>
</div>
<div id="im_rows0" class="im_rows" style="display: none">
  <div id="im_friends"></div>
  <div id="im_friends_multi">
    <table width="100%" cellpadding="0" cellspacing="0">
    <tr><td id="im_friends_all_wrap">
      <div class="summary_wrap"><div class="summary" id="im_friends_all_summary">Ваши друзья</div></div>
      <div id="im_friends_all"></div>
    </td><td id="im_friends_sel_wrap">
      <div id="im_friends_yes_wrap">
        <div class="summary_wrap"><div class="summary" id="im_friends_sel_summary">Выбранные собеседники</div></div>
        <div id="im_friends_sel"></div>
        <div id="im_friends_sel_stats">
          <div id="im_friends_sel_count"></div>
          <input class="text" placeholder="Введите название беседы" id="im_chat_title_input" onkeydown="if (event.keyCode == 13) ge('im_chat_start').onclick();" />
          <div class="im_chat_start_wrap"><div class="button_blue"><button onclick="IM.startChat(this);" id="im_chat_start">Создать беседу</button></div></div>
        </div>
      </div>
      <div id="im_friends_none_wrap">
        <div class="summary_wrap"><div class="summary" id="im_friends_none_summary">Выбранные собеседники</div></div>
        <div id="im_friends_none">Пожалуйста, выберите собеседников из списка слева</div>
      </div>
    </td></tr>
    </table>
  </div>
</div>
      <div id="im_rows-2" class="im_rows" style="display: none">
  <a href="#" id="im_more-2" class="im_more" onclick="return IM.showMoreSearch()" style="display: block;"><div>Показать предыдущие сообщения &#8593;</div></a>
  <table class="im_log_t" id="im_log_search" cellspacing="0" cellpadding="0"><tbody></tbody></table>
  <div class="im_none" id="im_none-2">Не найдено сообщений по такому запросу.</div>
  <div class="im_error" id="im_error-2"></div>
</div><div id="im_rows-3" class="im_write" style="display: none">
  <div id="imw_ava" class="wdd_imgs"></div>
  <h3 class="imw_header" id="imw_to_header">Получатель</h3>
  <div class="wdd clear_fix" id="imw_dd">
    <div class="fl_r wdd_arr"></div>
    <input type="text" class="wdd_text fl_l" placeholder="Введите имя друга или email" id="imw_inp" onfocus="this.focused=1" onblur="this.focused=''"/>
  </div>
  <div id="imw_title_wrap">
    <h3 class="imw_header">Тема</h3>
    <input type="text" class="text" id="imw_title" maxlength="64"></input>
  </div>
  <h3 class="imw_header">Сообщение</h3>
  <div class="imw_text_wrap">
    <textarea id="imw_text" onkeyup="IM.checkNewLen(this)" onkeypress="onCtrlEnter(event, IM.sendNewMsg)"></textarea>
  </div>
  <div id="imw_warn"></div>
  <div id="imw_media_preview" class="clear_fix multi_media_preview"></div>
  <div class="imw_buttons clear_fix">
    <a class="fl_r" id="imw_attach">Прикрепить</a>
    <div class="button_blue fl_l">
      <button id="imw_send" onclick="IM.sendNewMsg()">Отправить</button>
    </div>
  </div>
</div><div id="im_rows-4" class="im_rows" style="display: none">
 
  <table class="im_log_t" id="im_log_spam" cellspacing="0" cellpadding="0"><tbody></tbody></table>
  <div class="im_none" id="im_none-4">Сообщений с подозрительным содержимым нет.</div>
  <div class="im_error" id="im_error-4"></div>
</div><div id="im_rows32881567" class="im_rows" style="display: none">

  <table class="im_log_t" id="im_log32881567" cellspacing="0" cellpadding="0"><tbody></tbody></table>
  <div class="im_none" id="im_none32881567">Здесь будет выводиться история переписки.</div>
  <div class="im_error" id="im_error32881567"></div>
</div><div id="im_rows119415150" class="im_rows" style="display: none">

  <table class="im_log_t" id="im_log119415150" cellspacing="0" cellpadding="0"><tbody></tbody></table>
  <div class="im_none" id="im_none119415150">Здесь будет выводиться история переписки.</div>
  <div class="im_error" id="im_error119415150"></div>
</div><div id="im_rows90234953" class="im_rows" style="">
  
  <table class="im_log_t" id="im_log90234953" cellspacing="0" cellpadding="0"><tbody><tr id="mess977" class="im_in im_msg_from90234953" onmouseover="IM.logMessState(1, 977)" onmouseout="IM.logMessState(0, 977)" onclick="if (!IM.checkLogClick(this, event)) IM.checkLogMsg(977);" date="1321283171">
  <td class="im_log_act">
    <div id="ma977" class="im_log_check_wrap"><div class="im_log_check" id="mess_check977"></div></div>
  </td>
  {section name=pm_loop loop=$pms}
  <td class="im_log_author"><div class="im_log_author_chat_thumb"><a href='/id{$pms[pm_loop].author->user_info.user_id}' onclick="return nav.go(this, event);"><img src="{$pms[pm_loop].author->user_photo("./images/nophoto.gif", TRUE)}" class="im_log_author_chat_thumb" /></a></div></td>
  <td class="im_log_body"><div class="wrapped"><div class="im_log_author_chat_name"><a href='/id{$pms[pm_loop].author->user_info.user_id}' class="mem_link" onclick="return nav.go(this, event);">{$pms[pm_loop].author->user_info.user_fname}</a></div>{$pms[pm_loop].pm_body|choptext:75:"<br>"}</div></td>
  <td class="im_log_date"><a class="im_date_link">{$datetime->cdate("`$setting.setting_timeformat` `$setting.setting_dateformat`", $datetime->timezone($pms[pm_loop].pm_date, $global_timezone))}</a><input type="hidden" id="im_date1005" value="1321326799"/></td>
  <td class="im_log_rspacer"></td>
</tr>
  <td class="im_log_act">
    <div id="ma1009" class="im_log_check_wrap"><div class="im_log_check" id="mess_check1009"></div></div>
  </td>{/section}
 
</tr></tbody></table>

  <div class="im_error" id="im_error90234953"></div>
</div>
    </div>
  </div>
</div>
{literal}
<style>
.avasmall112 { border-radius: 2px;width: 50px; height: 50px;overflow: hidden; background:#F1F1F1;}
.avasmall11 img { max-width: 35px; height: auto; background:#F1F1F1;}

.avasmall2 { border-radius: 2px;width: 50px; height: 50px;overflow: hidden; background:#F1F1F1;}
.avasmall img { max-width: 60px; height: auto; background:#F1F1F1;}

.avasmall100 { border-radius: 0px;width: 100px; height: 100px;overflow: hidden; background:#F1F1F1;}
.avasmalll100 img { max-width: 120px; height: auto; background:#F1F1F1;}

.avahead { border: 1px solid #31aa42;border-radius: 1px;width: 27px; height: 27px;overflow: hidden; background:#F1F1F1;}
.avaheads img { max-width: 27px; height: auto; background:#F1F1F1;}

</style>
{/literal}
<form action='user_messages_view.php#bottom' method='POST' onSubmit="{literal}if(this.reply.value.replace(/ /g, '') == '') { $('reply_error').style.display='block'; return false; } else { return true; }{/literal}">
<div id="im_controls_wrap">
  <div id="im_bottom_sh"></div>
  <div id="im_sound_controls" style="display: none;">
    <a href="#" id="im_sound" class="fl_l">Выключить звуковые уведомления</a>
    <span class="fl_l" id="im_browser_notify"><span class="divider">|</span><a href="#">Выключить оповещения в браузере</a></span>
    <a href="/im?sel=-4" onclick="IM.spamMessages(); return false;" style="" class="fl_r">Спам<span id="im_spam_cnt"> (<b>3</b>)</span></a>
    <div class="clear"></div>
  </div>
  <div id="im_peer_controls_wrap" style="">
    <div id="im_peer_controls">
      <table cellpadding="0" cellspacing="0"><tr>
        <td id="im_user_holder"><div class="avasmall2">
<div class="avasmall"><img src="{$user->user_photo("./images/nophoto.gif", TRUE)}" class="im_user_holder"/></div></div></td>
        <td class="im_write_form">
          <div id="im_texts">
            <div class="im_txt_wrap" id="im_txt_wrap32881567" style="display: none">
  <div class="im_title_wrap" id="im_title_wrap32881567">
    <input type="text" class="text im_title" id="im_title32881567" maxlength="64" />
  </div>
 <textarea name='reply' id='reply_body' rows='3' cols='60' style='margin-bottom: 5px; width: 100%;'></textarea>
  <div class="im_txt_warn" id="im_txt_warn32881567"></div>
</div><div class="im_txt_wrap" id="im_txt_wrap119415150" style="display: none">
  <div class="im_title_wrap" id="im_title_wrap119415150">
    <input type="text" class="text im_title" id="im_title119415150" maxlength="64" />
  </div>
   <textarea name='reply' id='reply_body' rows='3' cols='60' style='margin-bottom: 5px; width: 100%;'></textarea>
  <div class="im_txt_warn" id="im_txt_warn119415150"></div>
</div><div class="im_txt_wrap" id="im_txt_wrap90234953" style="">
  <div class="im_title_wrap" id="im_title_wrap90234953">
    <input type="text" class="text im_title" id="im_title90234953" maxlength="64" />
  </div>
  <textarea name='reply' id='reply_body' rows='3' placeholder="Введите Ваше сообщение.."  cols='60' style='margin-bottom: 5px; width: 100%;'></textarea>
  <div class="im_txt_warn" id="im_txt_warn90234953"></div>
</div>
          </div>
          <div id="im_media_preview" class="media_preview clear_fix"></div>
          <div id="im_docs_preview" class="media_preview clear_fix"></div>
          <div id="im_progress_preview" class="media_preview clear_fix"></div>
          <div id="im_send_wrap" class="clear_fix">
            <div class="button_blue fl_l">
              <button id="im_send" type='submit'>Отправить</button>
            </div> 
            <div id="im_status" class="fl_l"></div>
            <div id="im_rcpt" class="fl_l"></div>
            <div class="fl_r" id="im_add_media"></div>
          </div>
        </td>
        <td id="im_peer_holders"></td>
      </tr></table>
    </div>
    <div id="im_resizer_wrap">
      <div class="im_resizer"></div>
      <div class="im_resizer"></div>
      <div class="im_resizer"></div>
    </div>
    <div id="im_footer_sh"></div>
    <div id="im_footer_filler"></div>
  </div>
</div>
</div>
  </div>
</div></div>  <input type='hidden' name='task' value='reply'>
  <input type='hidden' name='pmconvo_id' value='{$pmconvo_info.pmconvo_id}'>

    </div> 
  {literal}<script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
cur.lang = extend(cur.lang || {}, {
  mail_im_new_messages: ["","%s новое сообщение.","%s новых сообщения.","%s новых сообщений."],
  mail_im_friends_shown: ["","Показан %s друг.","Показано %s друга.","Показано %s друзей."],
  mail_im_typing: ["","{user} читает сообщение..","{user} читает сообщение.."],
  mail_im_not_online: ["","{user} сейчас не в сети.","{user} сейчас не в сети."],
  mail_im_no_friends: 'Здесь будет выводиться список Ваших друзей, с которыми Вы сможете общаться в режиме реального времени.<br><br>Пожалуйста, <a href="friends.php?filter=invites"  target="_blank">найдите друзей</a> для начала работы.',
  mail_not_found: 'Пользователь не найден',
  mail_peer_name: '{user}',
  mail_im_refresh_dialogs: 'Обновить список диалогов',
  mail_im_auth_failed: 'Сбой авторизации. Войдите на свою страницу и откройте это окно заново.',
  mail_im_more_history: 'Показать предыдущие сообщения &#8593;',
  mail_im_here_history: 'Здесь будет выводиться история переписки.',
  mail_choose_recipient: 'Введите имя друга или email',
  mail_im_enter_msg: 'Введите Ваше сообщение..',
  mail_im_row_date_format: 'сегодня в {hour}:{minute}',
  mail_im_empty_search: 'Собеседников с таким именем не найдено. Вы можете ввести e-mail и отправить письмо.',
  mail_enter_email_address: 'Введите адрес электронной почты',
  global_online_sm: ["","online","online"],
  mail_history_delete: 'удалить',
  mail_deleteall1: 'Удалить все сообщения',
  mail_sure_to_delete_all: 'Вы действительно хотите удалить всю переписку с данным пользователем?<br><br>Отменить это действие будет невозможно.',
  mail_delete_all_spam: 'Удалить все сообщения, содержащие спам?',
  mail_delete: 'Удалить',
  mail_close: 'Закрыть',
  profile_wall_photo: 'Фотографию',
  profile_wall_video: 'Видеозапись',
  profile_wall_audio: 'Аудиозапись',
  profile_wall_doc: 'Документ',
  profile_wall_map: 'Карту',
  mail_added_photo: 'Фотография',
  mail_added_video: 'Видеозапись',
  mail_added_audio: 'Аудиозапись',
  mail_added_doc: 'Документ',
  mail_added_geo: 'Местоположение',
  dont_attach: 'Не прикреплять',
  mail_im_to_dialog: ["","К диалогу с {user}","К диалогу с {user}"],
  mail_im_notifications_off: 'Включить оповещения в браузере',
  mail_im_notifications_on: 'Выключить оповещения в браузере',
  mail_im_sound_on: 'Выключить звуковые уведомления',
  mail_im_sound_off: 'Включить звуковые уведомления',
  mail_write: 'Написать сообщение',
  mail_show_flist: 'К списку друзей',
  mail_im_X_friends_selected: ["","Выбран %s собеседник","Выбраны %s собеседника","Выбрано %s собеседников"],
  mail_im_multi_limit: ["","К сожалению, в беседе могут участвовать не более %s человека.","К сожалению, в беседе могут участвовать не более %s человек.","К сожалению, в беседе могут участвовать не более %s человек."],
  mail_im_X_fwd_msgs: ["","%s пересланное сообщение","%s пересланных сообщения","%s пересланных сообщений"],
  mail_im_X_sel_msgs: ["","Выделено %s сообщение","Выделено %s сообщения","Выделено %s сообщений"],
  mail_im_mark_notspam: ["","Это <b>не<\/b> спам&#33;","Это <b>не<\/b> спам&#33;","Это <b>не<\/b> спам&#33;"],
  mail_im_mark_delspam: ["","Удалить сообщение","Удалить сообщения","Удалить сообщения"],
  mail_chat_leave_title: 'Покинуть беседу?',
  mail_chat_leave_confirm: 'Покинув беседу, Вы не будете получать новых сообщений от участников. Вы сможете вернуться при наличии свободных мест.<br>',
  mail_chat_youre_kicked: 'Вы были исключены из этой беседы',
  mail_im_invite_closed: 'Вам необходимо вернуться в беседу для того, чтобы приглашать новых собеседников.',
  mail_chat_topic_change_title: 'Изменение беседы',
  mail_chat_topic_change_label: 'Новое название беседы:',
  mail_im_load_all_history: 'Показать всю историю сообщений',
  mail_im_delete_all_history: 'Очистить историю сообщений',
  mail_im_delete_email_contact: 'Удалить переписку',
  mail_send_failed: 'Не удалось отправить сообщение',
  mail_added_msg: 'Cообщение',
  mail_added_msgs: 'Cообщения',
  mail_im_write_multi: 'Выбрать несколько собеседников',
  mail_rcpnt: 'Получатель',
  mail_rcpnts: 'Получатели',
  mail_im_search_query: 'Искать «{query}» в личных сообщениях..',
  mail_im_create_chat_with: 'Добавить собеседников',
  mail_im_back_to_dialogs: 'К списку диалогов'
});

IM.version = 40;
document.domain = location.host.toString().match(/[a-zA-Z]*\.[a-zA-Z]*$/)[0];

IM.init({"id":116173505,"ts":958215845,"key":"6e368a24b8283d182701a6d6b2eac14122876026","url":"im1505","friends":[],"ddfriends":false,"ddfriends_sel":null,"writeHash":"3ba679625e593b5aa7","chats":{"2000000003_":"Вадик, Евгений, Алексей","2000000002_":"Олександр, Андрей, Юлічка","2000000001_":"женек, Антон, Череповичагафонова"},"emails":[],"friendsLoaded":0,"photo":"http:\/\/cs5525.vkontakte.ru\/u116173505\/e_d563c167.jpg","name":"Mr","timeshift":0,"peer":90234953,"tabs":{"32881567":{"hash":"7da6e428109ef0af7f10fe6b8","photo":"http:\/\/vkontakte.ru\/images\/question_c.gif","name":"Андрей","tab_text":"Андрей&nbsp;Воронин","msgs":[],"all_shown":0,"sex":"2"},"119415150":{"hash":"cd3766c6b430725d70725b00f","photo":"http:\/\/cs11078.vkontakte.ru\/u119415150\/e_d290e922.jpg","name":"Кирилл","tab_text":"Кирилл&nbsp;Горбатенко","msgs":[],"all_shown":0,"sex":"2"},"90234953":{"hash":"2e0b40605633b259fd6f7c225","photo":"http:\/\/cs4170.vkontakte.ru\/u90234953\/e_05e6c550.jpg","name":"Антон","tab_text":"Антон&nbsp;Исаенко","msgs":{"977":[0,0],"978":[1,0],"979":[0,0],"980":[1,0],"981":[1,0],"982":[0,0],"983":[1,0],"984":[0,0],"985":[1,0],"986":[1,0],"987":[0,0],"988":[1,0],"989":[0,0],"990":[1,0],"991":[0,0],"992":[0,0],"993":[1,0],"994":[0,0],"995":[1,0],"997":[1,0],"998":[0,0],"999":[1,0],"1000":[0,0],"1001":[1,0],"1002":[1,0],"1003":[1,0],"1004":[0,0],"1005":[1,1],"1009":[1,1],"1010":[1,1]},"all_shown":0,"sex":"2"}},"tab_template":"<div class=\"im_tab\" id=\"im_tab%peer_id%\"><div class=\"im_tab1\"><div class=\"im_tab2\">\n  <table cellspacing=\"0\" cellpadding=\"0\"><tr>\n    <td><div class=\"im_tab3\">%peer_name%<span id=\"im_unread%peer_id%\"><\/span><\/div><\/td>\n    <td><div class=\"im_tabx\" onclick=\"cancelEvent(event); IM.closeTab(%peer_id%);\"><\/div><\/td>\n  <\/tr><\/table>\n<\/div><\/div><\/div>","txt_template":"<div class=\"im_txt_wrap\" id=\"im_txt_wrap%peer_id%\" style=\"display: none;\">\n  <div class=\"im_title_wrap\" id=\"im_title_wrap%peer_id%\">\n    <input type=\"text\" class=\"text im_title\" id=\"im_title%peer_id%\" maxlength=\"64\" \/>\n  <\/div>\n  <textarea class=\"im_txt\" id=\"im_txt%peer_id%\" name=\"im_txt%peer_id%\" placeholder=\"Введите Ваше сообщение..\" onkeyup=\"checkTextLength(4096, this, 'im_txt_warn%peer_id%')\"><\/textarea>\n  <div class=\"im_txt_warn\" id=\"im_txt_warn%peer_id%\"><\/div>\n<\/div>","drow_template":"<div class=\"dialogs_row %row_class%\" id=\"im_dialog%peer%\" onmouseover=\"addClass(this, 'dialogs_row_over');\" onmouseout=\"removeClass(this, 'dialogs_row_over');\" onclick=\"IM.addPeer(%peer%); return false;\" timestamp=\"%timestamp%\">\n  <div class=\"dialogs_del_wrap\"><div class=\"dialogs_del\" onclick=\"IM.deleteDialog(%peer%, ''); event.cancelBubble = true;\" onmouseover=\"showTooltip(this, {text: 'Удалить диалог'});\"><\/div><\/div>\n  <table cellpadding=\"0\" cellspacing=\"0\" class=\"dialogs_row_t\">\n    <tr>\n      <td class=\"dialogs_photo\">\n        %photo%\n      <\/td>\n      <td class=\"dialogs_info\">\n        <div class=\"dialogs_user wrapped\">%user_link%<\/div>\n        %online%\n        <div class=\"dialogs_date\">%date%<\/div>\n      <\/td>\n      <td class=\"dialogs_msg_contents\">\n        <div class=\"dialogs_msg_body %body_class% clear_fix\">\n          %inline_author%\n          <div class=\"dialogs_msg_text wrapped fl_l\">%body%<\/div>\n        <\/div>\n      <\/td>\n    <\/tr>\n  <\/table>\n<\/div>","time_system":false,"left_menu":0,"mark_hash":"1321351906_8a62162f2414e1bda9","multi_peers_max":15,"attachments_num_max":10,"ctrl_submit_hint":"<div class=\"im_submit_tail_wrap\"><div class=\"im_submit_tail\"><\/div><\/div>\n<div class=\"im_submit_hint_wrap\">\n  <div class=\"im_submit_hint_title\">Настройки отправки<\/div>\n  <div id=\"im_submit_hint_opts\">\n    <div class=\"radiobtn on\" onclick=\"radiobtn(this, 0, 'im_submit'); IM.onSubmitSettingsChanged(0);\"><div><\/div><b>Enter<\/b> — отправка сообщения<br><b>Shift+Enter<\/b> — перенос строки<\/div>\n    <div class=\"radiobtn \" onclick=\"radiobtn(this, 1, 'im_submit'); IM.onSubmitSettingsChanged(1);\"><div><\/div><b>Ctrl+Enter<\/b> — отправка сообщения<br><b>Enter<\/b> — перенос строки<\/div>\n  <\/div>\n<\/div>","ctrl_submit":false,"searchOffset":false,"searchQ":"","lastSearchQ":"","timestamp":1321351906,"spam":{"offset":false,"hash":"d2e458f2033c63b5a4","flushhash":"bb189870b23c908095","msg_count":14,"unread":3},"limitedUser":true});
if (1) {
  hide('support_link_td');
}
var ts_input = ge('ts_input'), oldFF = browser.mozilla && parseInt(browser.version) < 8;
if (browser.mozilla && !oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
placeholderSetup(ts_input, {back: false, reload: true});
if (browser.opera || browser.msie || oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
if (browser.chrome) {
  setStyle(ts_input, {padding: (vk.rtl ? '4px 23px 3px 2px' : '4px 3px 3px 23px')});
}
TopSearch.init();
if (browser.msie8) {
  var st = {border: '1px solid #a6b6c6'};
  if (vk.rtl) st.left = '1px';
  else st.right = '0px';
  setStyle(ge('ts_cont_wrap'), st);
}
zNav({}, {});
handlePageParams({"id":116173505,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', '80d651ba0f9557fb81')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/events?tab=calendar\" onclick=\"return nav.go(this, event)\">Сегодня<\/a> день рождения <a href=\"\/id93592244\" onclick=\"return nav.go(this, event)\">Андрея Дорофеева<\/a>, <a href=\"\/id140699470\" onclick=\"return nav.go(this, event)\">Евгения Ломовского<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"<div id=\"ad_hide_mask_ad_1\" class=\"ad_hide_mask_new\" style=\"display: none; \"><div class=\"ad_info_new\">Данное объявление больше не будет Вам показываться.<\/div><div class=\"ad_complain_new\">\n  <span class=\"ad_complain_info_new\">Если Вы считаете содержание данного объявления оскорбительным,<\/span>\n  <span class=\"ad_complain_link_new\" onclick=\"reportAd(1727531, this); return false;\">сообщите нам.<\/span>\n<\/div><\/div>\n<a href=\"\/away.php?to=QxscBkBxC1VwdAlUW3VTABdBDBdDdAsVSlJmFUxeb1JAdVRwX1JkBQMGTBYBKG5SWXVQSm4dRFwGN11sFTM\/RGQtbQcnB2klOFFOQEgmeBQZM2wNEDYnYAwcZEBJIHV2QCo5NWcaK3oTPXsnQ1BeUjYIcxIGEHUmDRRSfwwOdkEXGQpkCiQIREwoFHUnAWYACUFIWyALQgt4aQE7BgQMBmQOdDJFF3hzCTMKF2AfGwZAPFUPNQ9aAyMiUjZyKn0KGxsPemQDdCk3CWQRPCgeMAc-\" class=\"ad_box_new\" style=\"\" id=\"ad_box_ad_1\" onmouseover=\"leftBlockOver('_ad_1')\" onmouseout=\"leftBlockOut('_ad_1')\" target=\"_blank\">\n<div id=\"left_hide_ad_1\" class=\"left_hide_new\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"cancelEvent(event); return leftAdBlockHide('_ad_1', '\/away.php?to=QRscBkBxC1VwdAlUW3VTABdBXRFDdFIdTwI1QE8JaQoVLAlyX1JkBQMGTBYBKG5SWXVQSm4dRFwGN11sFTM\/RGQtbQcnB2klOFFOQEgmeBQZM2wNEDYnYAwcZEBJIHV2QCo5NWcaK3oTPXsnQ1BeUjYIcxIGEHUmDRRSfwwOdkEXGQpkCiQIREwoFHUnAWYACUFIWyALQgt4aQE7BgQMBmQOdDJFF3hzCTMKF2AfGwZAPFUPNQ9aAyMiUjZyKn0KGxsPemQDdCk3CWQRPCgeMAc-');\"><\/div>\n<div id=\"ad_title\" class=\"ad_title_new\">Pokerstars.net 10 лет&#33;<\/div>\n<div class=\"ad_domain_new\">pokerstars.net<\/div>\n<span>\n  <div id=\"pr_image\" style=\"position: relative;\">\n    <img src=\"http:\/\/cs10286.vkontakte.ru\/u104518548\/75628422\/s_3a512449a4x:001.jpg\" style=\"\" \/>\n    <div id=\"ads_play_btn\" style=\"display: none;\"><\/div>\n  <\/div>\n<\/span>\n<div id=\"ad_desc\" class=\"ad_desc_new\" style=\"\">Выиграйте поездку на фестиваль покера на Багамах&#33;<\/div>\n<\/a>\n<div class=\"ad_help_link\" id=\"ad_help_link\">\n  <a href=\"\/ads.php?section=target\">Что это?<\/a>\n<\/div>","ads_page":"im","loc":"im?peers=32881567_119415150&sel=90234953","width":791,"width_dec":160,"width_dec_footer":130});addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue116173505","timestamp":"1292255557","key":"ZhQvelp5lM6OIDuZXAKL7ZHTuDgbFeR9LJVgIpDJItJdsMf05EahSqgj","uid":116173505,"version":7,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"NDE5NDM4","server_url":"http:\/\/q55.queue.vkontakte.ru\/im505","frame_path":"http:\/\/q55.queue.vkontakte.ru\/q_frame.php?4","frame_url":"im505","refresh_url":"http:\/\/vkontakte.ru\/notifier.php","fc":{"version":17,"state":{"clist":{"min":true,"x":false,"y":false},"tabs":[],"version":17}}});});addEvent(document, 'click', onDocumentClick);
    }
  </script>{/literal}
</form>
{include file='footer.tpl'}







