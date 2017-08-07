{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/photos.css?53" />
<link rel="stylesheet" type="text/css" href="/css/al/common.css?277" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="/css/al/groups.css?60"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?54"></link><script type="text/javascript" src="/js/loader_nav8121_0.js"></script><script type="text/javascript" src="/js/al/common.js?745"></script><script type="text/javascript" src="/js/lang0_0.js?5891"></script><script type="text/javascript" src="/js/al/groups_list.js?24"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?159"></script>

<link rel="stylesheet" type="text/css" href="/css/al/common.css?277" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="/css/al/groups.css?60"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?54"></link><script type="text/javascript" src="/js/loader_nav8121_0.js"></script><script type="text/javascript" src="/js/al/common.js?745"></script><script type="text/javascript" src="/js/lang0_0.js?5891"></script><script type="text/javascript" src="/js/al/groups_list.js?24"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?159"></script>


<body onresize="onBodyResize()" class="is_rtl font_default">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>

 
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
    <div id="content">
<div class="t_bar clear_fix">
  <ul class="t0" id="groups_list_tabs">
    <li class="active_link" id="groups_tab_groups">
      <a href="/user_group.php">
        <b class="tl1"><b></b></b><b class="tl2"></b>
        <b class="tab_word">Сообщества</b>
      </a>
    </li>
    <li class="" style="display: none" id="groups_tab_inv">
      <a href="/groups?tab=inv" onmousedown="nav.go(this, event)" onclick="return checkEvent(event)">
        <b class="tl1"><b></b></b><b class="tl2"></b>
        <b class="tab_word">Приглашения (<span id="group_inv_count">0</span>)</b>
      </a>
    </li>
    <li class="t_r">
      <a onclick="showBox('al_groups.php', {literal}{act: 'create_box'}{/literal})">Создать сообщество</a>
    </li>
  </ul>
</div>
<div class="groups_list_search " id="groups_list_search_wrap">
<form method="POST" action="al_search.php?c[section]=communities" name="qsearch">
  <input placeholder="Начните вводить название сообщества" id="groups_list_search" type="text" class="text" value="" />
  </form>
</div>

<div class="summary_wrap gl_summary_short">
  <div class="summary" id="groups_list_summary">{if $total_groups == 0}Вы не состоите ни в одной группе.{else}У Вас {$total_groups} {include file='sklonenie_groups.tpl'}{/if}</div>
</div>
<div id="groups_list_content">
  <div id="groups_list_tab_groups" style="">
    <div id="groups_list_groups" class="groups_list">
	{if $total_groups == 0}
	<div class="groups_no_list">
Вы пока не состоите ни в одной группе.
<br>
<br>
Вы можете
<a onclick="showBox('al_groups.php', {literal}{act: 'create_box'}{/literal})">создать группу</a>
или воспользоваться
<a href="/search?c[section]=communities">поиском по группам</a>
.
</div>
{else}
{section name=group_loop loop=$groups}<div id="gl_groups{$groups[group_loop].group->group_info.group_id}" class="group_list_row">
  <div class="fl_l group_row_photo">
    <a href="/club{$groups[group_loop].group->group_info.group_id}">
      <img src="{$groups[group_loop].group->group_photo("./images/question_100.gif")}" width='100' />
    </a>
  </div>
  <div class="group_row_info fl_l">
    <div class="group_row_label fl_l">Название:</div>
    <div class="group_row_labeled fl_l"><a href="/club{$groups[group_loop].group->group_info.group_id}">{$groups[group_loop].group->group_info.group_title}</a></div>
    <br class="clear" />

    <div class="group_row_label fl_l">Участники:</div>
    <div class="group_row_labeled fl_l"><span style="font-size:60%"> </span>{$groups[group_loop].group_members} участников</div>
    <br class="clear" />


<br class="clear" />

    <div class="group_row_label fl_l">&nbsp;</div>
    <div class="group_row_status_wrap fl_l">
      <span class="group_row_status">Вы состоите в группе.</span><span class="group_row_actions"><a href='user_group_leave.php?group_id={$groups[group_loop].group->group_info.group_id}'>Выйти из группы</a></span>
    </div>
  </div>
  <br class="clear" />
</div>{/section}{/if}</div>
    <a id="groups_list_admin_more" class="groups_more_link" onclick="GroupsList.showMore()" style="display: none">Показать больше групп</a>
  </div>
  <div id="groups_list_tab_inv" style="display: none">
    <div id="groups_list_inv" class="groups_list"><div class="groups_no_list">
  Вас пока не пригласили ни в одну группу.
</div></div>
    
  </div>
</div></div>
  </div>
</div>
{include file='footer.tpl'}

{literal} <script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
if (browser.iphone || browser.ipad || browser.ipod) {
  setStyle(bodyNode, {webkitTextSizeAdjust: 'none'});
}cur.lang = extend(cur.lang, {
  groups_back_to_list          : 'Список групп',
  groups_group_found           :  ["","Найдено %s сообщество.","Найдены %s сообщества.","Найдены %s сообществ."],
  groups_N_people_like_it      :  ["","%s подписчик","%s подписчика","%s подписчиков"],
  groups_num_particip          :  ["","%s участник","%s участника","%s участников"],
  groups_friend_cnt_in_group   :  ["","В сообществе {link}%s Ваш друг{\/link}.","В сообществе {link}%s Ваших друга{\/link}.","В сообществе {link}%s Ваших друзей{\/link}."],
  groups_group_enter_message   : 'Приглашение принято.',
  groups_group_deny_message    : 'Приглашение отклонено.',
  groups_ajax_inv_declined_spam: 'Приглашение отклонено и помечено как спам.',
  groups_group_left            : 'Вы вышли из группы.',
  groups_sure_reject_all       : 'Вы уверены, что хотите отклонить все приглашения?<br>Это действие нельзя будет отменить.',
  groups_members_application_decline: 'Отклонить',
  groups_event_go_btn          : 'Точно пойду',
  groups_event_maybe_btn       : 'Возможно пойду',
  groups_event_cant_btn        : 'Не могу пойти',
  groups_unsure_event          : 'Вы не уверены, что пойдете.',
  groups_event_left            : 'Вы не собираетесь приходить.',
  groups_you_in_event          : 'Вы пойдете.',
  groups_event_change          : 'Изменить решение',
  groups_was_on_event          : 'Вы посетили встречу.',
  groups_remove_event          : 'Убрать из списка',
  groups_return_event          : 'Вернуть в список',
  groups_old_events            : 'Архивные встречи',
  public_you_unsubscribed      : 'Вы отписались от новостей.'
});

GroupsList.init({
  tab: 'groups',
  mid: 40297585,
  summaries: {"groups":"Вы состоите в 4997 сообществах<span class=\"divider\">|<\/span><span><a href=\"\/feed?section=groups\" onclick=\"return nav.go(this, event)\">Обновления<\/a><\/span>","admin":"Вы управляете 26 сообществами","inv":"Вы не приглашены ни в одну группу."},

  genEmpty: function(q) {
    var result = '';
    if (q) {
      var lnk = '<a href="/search?c[section]=groups&c[q]=' + encodeURIComponent(q) + '" onclick="return nav.go(this, event)">';
      result = 'Среди Ваших сообществ совпадений не найдено.<br><br>';
      result += 'Вы можете попробовать найти {term} в {link}поиске{/link}'.replace('{link}', lnk).replace('{/link}', '</a>').replace('{term}', lnk + q.replace('<', '&lt;') + '</a>');
    } else if (cur.scrollList.tab == 'groups') {
      result = 'Вы пока не состоите ни в одной группе.<br><br>';
      result += 'Вы можете {link_add}создать группу{/link_add} или воспользоваться {link_search}поиском по группам{/link_search}.'.replace('{link_add}', '<a onclick="GroupsList.createGroup()">').replace('{/link_add}', '</a>').replace('{link_search}', '<a href="/search?c[section]=groups" onclick="return nav.go(this, event)">').replace('{/link_search}', '</a>');
    } else if (cur.scrollList.tab == 'admin') {
      result = 'Вы пока не состоите ни в одной группе.';
    } else { // inv
      result = 'Вас пока не пригласили ни в одну группу.';
    }
    return '<div class="groups_no_list">' + result + '</div>';
  },
  genRow: function(row, name) { // [name, gid, href, thumb, count, type, hash, fr_count, friends, dateText]
    var tab = cur.scrollList.tab, gr = (tab == 'groups'), adm = (tab == 'admin');
    var status = row[1], gid = row[2], href = row[3], thumb = row[4], count = row[5], type = row[6], hash = row[7], friendsCount = row[8], friends = row[9], dateText = row[10];
    var isEvent = (type >= 10), typeLabel = isEvent ? 'Когда:' : 'Тип:', typeVal;

    if (type >= 0) {
      switch (type) {
        case 10:
        case 11: typeVal = dateText; break;
        case 3: typeVal = 'Публичная страница'; break;
        case 2: typeVal = 'Частная группа'; break;
        case 1: typeVal = 'Закрытая группа'; break;
        case 0: typeVal = 'Открытая группа'; break;
      }
      typeVal = '\
<div class="group_row_label fl_l">' + typeLabel + '</div>\
<div class="group_row_labeled fl_l">' + typeVal + '</div>\
<br class="clear" />\
      ';
    } else {
      typeVal = '';
    }

    count = getLang((type == 3 || type == -2) ? 'groups_N_people_like_it' : 'groups_num_particip', count, true);

    var text = actions = '';
    if (40297585 == vk.id) {
      if (!gr && !adm && (status == 0 || status == 4)) {
        if (intval(friendsCount)) {
          text = getLang('groups_friend_cnt_in_group', friendsCount) + ' ';
          text = text.replace('{link}', '<a onclick="showBox(\'al_page.php\', {act: \'a_friends_in_group\', gid: ' + gid + '}, {stat: [\'page.css\'], params: {bodyStyle: \'padding: 0px\'}})">').replace('{/link}', '</a>');
        }
        text += friends;
      }
      if (isEvent && !adm) {
        if (status == -3) {
          text = 'Вы посетили встречу.';
          actions = '<a onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'join\', true)">Вернуть в список</a>';
        } else if (status == -2) {
          text = 'Приглашение отклонено и помечено как спам.';
        } else if (status < 0) {
          text = 'Вы не собираетесь приходить.';
          actions = '<a onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'undecided\')">Изменить решение</a>';
        } else if (status == 3) {
          text = 'Вы не уверены, что пойдете.';
          actions = '<a onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'undecided\')">Изменить решение</a>';
        } else if (gr && status == 0 || status == 1) {
          text = 'Вы пойдете.';
          actions = '<a onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'undecided\')">Изменить решение</a>';
        } else if (!gr && status == 0 || status == 4) {
          text += '\
<div class="group_row_buttons">\
  <div class="group_row_button button_blue fl_l">\
    <button onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'join\')">Точно пойду</button>\
  </div>\
  <div class="group_row_button button_blue fl_l">\
    <button onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'unsure\')">Возможно пойду</button>\
  </div>\
  <div class="group_row_button button_cancel fl_l">\
    <div class="button" onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'decline\')">Не могу пойти</div>\
  </div>\
</div>';
        } else if (gr && status == 5) {
          text = 'Вы посетили встречу.';
          actions = '<a onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\', \'decline\', true)">Убрать из списка</a>';
        }
      } else if (gr) {
        if (type == 3) {
          if (status < 0) {
            text = 'Вы отписались от новостей.';
            actions = '<a onclick="GroupsList.cancel(this, ' + gid + ', \'' + hash + '\')">Отмена</a>';
          } else {
            text = 'Вы подписаны на новости.';
            actions = '<a onclick="GroupsList.leave(this, ' + gid + ', \'' + hash + '\', true)">Отписаться</a>';
          }
        } else if (status < 0) {
          text = 'Вы вышли из группы.';
          actions = '<a onclick="GroupsList.cancel(this, ' + gid + ', \'' + hash + '\')">Отмена</a>';
        } else {
          text = 'Вы состоите в группе.';
          actions = '<a onclick="GroupsList.leave(this, ' + gid + ', \'' + hash + '\')">Выйти из группы</a>';
        }
      } else if (!adm) {
        if (status == -2) {
          text = 'Приглашение отклонено и помечено как спам.';
        } else if (status < 0) {
          text = 'Приглашение отклонено.';
          actions = '<a onclick="GroupsList.cancel(this, ' + gid + ', \'' + hash + '\')">Отмена</a>';
        } else if (status > 0) {
          text = 'Приглашение принято.';
          actions = '<a onclick="GroupsList.cancel(this, ' + gid + ', \'' + hash + '\')">Отмена</a>';
        } else {
          text += '\
<div class="group_row_buttons">\
  <div class="group_row_button button_blue fl_l">\
    <button onclick="GroupsList.enter(this, ' + gid + ', \'' + hash + '\')">Вступить в группу</button>\
  </div>\
  <div class="group_row_button button_cancel fl_l">\
    <div class="button" onclick="GroupsList.leave(this, ' + gid + ', \'' + hash + '\')">Отклонить приглашение</div>\
  </div>\
</div>';
        }
      }
    }
    return '\
<div id="gl_' + tab + gid + '" class="group_list_row">\
  <div class="fl_l group_row_photo">\
    <a href="' + href + '" onclick="return nav.go(this, event)">\
      <img src="' + thumb + '" />\
    </a>\
  </div>\
  <div class="group_row_info fl_l">\
    <div class="group_row_label fl_l">Название:</div>\
    <div class="group_row_labeled fl_l"><a onclick="return nav.go(this, event);" href="' + href + '">' + name + '</a></div>\
    <br class="clear" />\
    <div class="group_row_label fl_l">Размер:</div>\
    <div class="group_row_labeled fl_l"><a href="/search?c[section]=people&c[group]=' + gid + '" onclick="return nav.go(this, event)">' + count + '</a></div>\
    <br class="clear" />\
    ' + typeVal + '\
    <div class="group_row_label fl_l">&nbsp;</div>\
    <div class="group_row_status_wrap fl_l">\
      <span class="group_row_status">' + text + '</span><span class="group_row_actions">' + actions + '</span>\
    </div>\
  </div>\
  <br class="clear" />\
</div>\
    ';
  },
  genSummary: function(count) {
    if (!count) return 'Ни одной группы не найдено.';
    return getLang('groups_group_found', count);
  }
});

var listParams = {
  filter: function(search, row) {
    if (!search[0]) return true;
    if (!row[3]) row[3] = indexer.prepare(row[1]);
    return row[3].indexOf("	"+search[0]) != -1;
  }
}
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
if (browser.msie8 || browser.msie7) {
  var st = {border: '1px solid #a6b6c6'};
  if (hasClass(ge('ts_wrap'), 'vk')) {
    if (vk.rtl) st.left = '1px';
    else st.right = '0px';
  } else {
    if (vk.rtl) st.right = '146px';
    else st.left = '146px';
  }
  setStyle(ge('ts_cont_wrap'), st);
}
  </script>{/literal} 