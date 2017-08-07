{include file='header_top.tpl'}{include file='header_shapka.tpl'}{include file='header_menu.tpl'}
<link rel='stylesheet' href='/css/profile.css' type='text/css'>  

<link rel="stylesheet" href=/css/styles.css" title="stylesheet" type="text/css">
<!--link rel='stylesheet' href='/css/dialog2.css' type='text/css' /-->
<link rel='stylesheet' href='/css/rustylex.css' type='text/css' />
<script src="/js/common.js"></script><script src="/js/common.js?81"></script>
<script type="text/javascript" src="/js/lang0_0-1000.js?752"></script>
<script type="text/javascript" src="/js/friends.js?7"></script>
<link rel="stylesheet" href="/css/friends.css?8" type="text/css" />
<script type="text/javascript" src="/js/privacy.js?8"></script>
<link rel="stylesheet" href="/css/privacy.css?12" type="text/css" />
<script type="text/javascript" src="/js/lib/ui_controls.js?27"></script>
<link rel="stylesheet" href="/css/ui_controls.css?11" type="text/css" />

<script type="text/javascript" src="/js/lang0_1000.js"></script><link rel="shortcut icon" href="/images/favicon.ico" />



<link type="text/css" rel="stylesheet" href="/css/al/friends.css"></link>
<link rel="stylesheet" href="/css_old/friends.css" type="text/css" />




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
    <div id="content"><div id="friends">
<div class="tabs t_bar clear_fix">
  <ul id="friends_tabs" class="t0">
   <li id="tab_all">
    <a href="/friends"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Все друзья</b>
    </a>
   </li>
      <li id="tab_requests" class="" style="">
    <a href="/user_friends_online.php"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Друзья онлайн<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_requests" class="active_link" style="">
    <a href="/user_friends_requests.php"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Заявки в друзья<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_common" class="" style="display:none;">
    <a href="/friends?section=common" onclick="return checkEvent(event);" onmousedown="return Friends.switchTab('common', event);"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">Общие друзья<span class="count"></span></b>
    </a>
   </li>
   <li id="tab_members" class="" style="display: none;">
    <a href="/friends?section=members" onclick="return checkEvent(event);" onmousedown="return Friends.switchTab('members', event);"><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word"></b>
    </a>
   </li>
  </ul>
</div>

    {literal}<script>

var lang = {
  friends_select_all:'Выделить всех',
  friends_select_none:'',
  friends_invite_bad_hash:'Ошибка безопасности.',
  friends_invite_bad_email:'Неправильный e-mail.',
  friends_invite_no_contacts:'Список контактов пуст.',
  friends_invite_unknown_domain:'Почтовые ящики {domain} не поддерживаются.',
  friends_invite_wrong_login:'Почтовый ящик или пароль указаны неправильно.',
  friends_invite_already_invited:'Ваши друзья уже приглашены.',
  friends_invite_already_in_friends:'Все участники из списка контактов уже у Вас в друзьях.',
  friends_invites_no_registered_users:'',
  friend_but_add_to_friends:'Добавить в друзья',
  friends_invite_continue:'Далее',
  friends_invite_already_invited:'Ваши друзья уже приглашены.',
  friends_invite_back:'вернуться',
  friends_invite_friends_from_contact_list:'Приглашение друзей из списка контактов',
  friends_invites_name:'Имя:',
  friends_invites_email:'Email:',
  friends_invite_language:'Язык, на котором будут высланы приглашения:',
  friends_invite_all_to_vk:'Выслать приглашения',
  friends_invites_sent:'Приглашения высланы.',
  friends_invites_enter_valid_email:'Введите адрес почты в правильном формате.<br>Например: {email}'.replace('{email}', 'user@gmail.com'),
  friend_added:'Друг добавлен',
  friends_invite_already_invited:'Ваши друзья уже приглашены.'
};
var invite_list_hash = 'a15692bb298146e530';
var invite_server = 'inviter';
var vk_param = '';
var lang_name = 'русский';


</script>

<script type="text/javascript">
 var pp_options = ['русский','English'];
 var friends_lists = [];
 var pp_friends_id = -1;
 var pp_lists_id = -1;
 var friendsData = {'id':{/literal}{$user->user_info.user_id}{literal},'mid':{/literal}{$user->user_info.user_id}{literal},'hash':'{/literal}{$user->user_info.user_id}{literal}_4c9830001572f4c883','summary':"{/literal}{$total_friends_requests}{literal} человек подал заявку на добавление Вас в друзья.",'friends':[{/literal}{section name=friends_loop loop=$friends}["{$friends[friends_loop]->user_info.user_id}","{$friends[friends_loop]->user_info.fio}","{$friends[friends_loop]->user_photo('./images/camera_a.gif')}",0,"{$friends[friends_loop]->user_info.user_username}",0,"",0,""]{if $smarty.section.friends_loop.last != true},{/if}{/section}{literal}],'universities':'','filter':'requests'};



 var friendsFilter, listEditBox, listDeleteBox;
 var friendsLists = []; // [[cat_id => name]]
 var friendsAdded = [];
 var friendCats = {114047:1}; // [[friend_id => mask]]

 var selected_filter = friendsData.filter, selected_list = 0, saveStatus = {};
 var listsEnabled = (friendsData.mid == friendsData.id);
 var narrow_results;
 var user_id = 39705;

onDomReady(function(){
  if (!ge('friend_lookup')) return;
  ge('friend_lookup').value = '';
  placeholderSetup('friend_lookup');
  friendsFilter = new FriendsFilter(friendsData, ge('friend_lookup'), {pageSize: 50, onDataReady: onListRender});
  listEditBox = new ListEditBox(user_id, {onListSave: onListSave});
  narrow_results = hasClass('searchResults', 'mine')
  // Register global functions
  window.getPage = friendsFilter.setPage;
  // Auto refresh
  var hash = location.hash;
  hash = hash.indexOf("#") == 0 ? hash.substr(1) : hash;
  switch (hash) {
    case 'all':
    case 'online':
    case 'common':
    case 'requests':
      loadFriends(hash); break;
    case 'phonebook':
      loadFriends(hash, -1); break;
    case 'recent':
      loadFriends(hash, -2); break;
    case 'invites':
      loadFriends(hash, -3); break;
  }
});

function loadFriends(filter, catId, force) {
  if (catId === undefined) catId = 0;

  var updateList = function() {

   if (selected_filter == 'requests' && narrow_results) {
     removeClass(ge('searchResults'), 'mine');
     hide('right_pane');
     narrow_results = false;
    // friendsData.filter = '';
   } else if (!narrow_results) {
     if (friendsData.mid == friendsData.id) {
       addClass(ge('searchResults'), 'mine');
       show('right_pane');
       narrow_results = true;
     }
   }

   if(selected_filter == 'invites') {
    hide('listControls');
    return;
   }

   ge('friend_lookup').value = '';
   placeholderSetup('friend_lookup');

   if (listsEnabled) {
    if (selected_list > 0) {
     var friendsInList = getFriendsByCat(selected_list);
     friendsFilter.filterData(friendsInList);
     show('listControls');
    } else {
     friendsFilter.filterData(false);
     hide('listControls');
    }
    selectList(selected_list);
   }

   hide('progressTop');
   friendsFilter.setPage(0);
  }

  if (filter != selected_filter) {
    selected_list = (filter == 'all') ? catId : 0;
    if (catId < 0)
      selected_list = catId;
    if (selected_list >= 0) {
      t_filter_on(ge('friends_'+filter+'_tab'), friend_tabs);
    } else if (selected_filter != 'all') {
      t_filter_on(ge('friends_all_tab'), friend_tabs);
    }
    location.hash = filter;
    selected_filter = filter;

    hide('pagesTop');
    hide('pagesBottom');
    show('progressTop');

    if (filter != 'all' || friendsData.filter != 'all') {
      var url = (filter == 'phonebook' || filter == 'invites') ? 'friends_ajax.php' : 'friends.php';
      selectList(selected_list);
      Ajax.Post({
        url: url,
        query: {id: friendsData.mid, filter: filter},
        onDone: function(ajaxObj, responseText) {
          var friends = eval('(' + responseText + ')');
          selected_filter = friends.filter;
          if (selected_filter != 'invites') {
            if (friendsData.filter != 'all' && selected_filter == 'all') {
              friendsData = friends;
            }
            friendsFilter.setData(friends);
          } else {
            ge('results').innerHTML = friends.html;
            ge('summary').innerHTML = friends.summary;
            hide('progressTop');
            dispatchIntro(11);
          }
          updateList();
        }
      });
    } else {
      friendsFilter.setData(friendsData);
      updateList();
    }
  } else if (selected_list != catId || force){
    selected_list = catId;
    updateList();
  }
}

function onListRender(rows, query, count, summary, pages) {

  var results = ge('results');
  if(!results)return;

  var data = friendsFilter.getData();

  if (query && selected_list > 0) {
    ge('list_item'+selected_list).className = 'side_filter';
    selected_list = 0;
    selectList(0);
    hide('listControls');
  }

  if (rows.length) {
    var href, name, uni, details, options, current = 0, buffer = '', resetResults = true, cats = '';
    var hasLists = false;
    for (var i in friendsLists) {
      hasLists = true;
      break;
    }
    each(rows, function() {
     href = this[4] ? "http://" + this[4] + ".vceti.su" : base_domain + "id" + this[0];

     switch (selected_filter) {
     case 'phonebook':
       name = highlight(this[1], query);
       details  = '<dt style="width:100px">Имя:</dt><dd><a href="'+href+'">'+name+'</a></dd>';
       details += '<dt style="width:100px">Моб. телефон:</dt><dd>'+this[5]+'</dd>';
       details += '<dt style="width:100px">Дом. телефон:</dt><dd>'+this[6]+'</dd>';
       buffer += '<div class="result clearFix" id="fr_res'+this[0]+'"><table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="68"><div style="height:50px; width:60px; overflow:hidden"><a href="'+href+'"><img src="'+(this[2]||'/images/question_b.gif')+'" width="100" alt=""/></a></div></td><td style="vertical-align: top;"><div class="info" style="width:350px;"><dl style="width:350px" class="clearFix">'+details+'</dl></div></td><td style="vertical-align: top;"></td></tr></tbody></table></div>';
     break;
     default:
       name = highlight(this[1], query);
       uni = data.universities[this[8]];
       uni = highlight(uni, query);
       details = '<dt>Имя:</dt><dd><a href="'+href+'">'+name+'</a></dd>';
       if (this[8])
         details += '<dt>Выпуск:</dt><dd>'+uni+ (this[9]?" '"+this[9]:'')+'</dd>';
       if (this[11])
         details += '<dt>Сообщение:</dt><dd>'+this[11]+'</dd>';
       if (this[6])
         details += '<dt>&nbsp;</dt><dd><span class="bbb">Online</span></dd>';
       options = '';
       if (data.id == this[0]) {
         options += '<li><a href="editProfile.php?act=general">Редактировать страницу</a></li>';
       } else {
         options += '<li><a onclick="return writeToFriend('+this[0]+');" href="mail.php?act=write&to='+this[0]+'">Отправить сообщение</a></li>';
         if (friendsData.mid != friendsData.id || selected_filter == 'requests') {
          options += '<li><a href="friends.php?id='+this[0]+'">Друзья '+this[5]+'</a></li>';
         } else {
          options += '<li><a onclick="return removeFriend('+this[0]+')" href="#">Убрать из друзей</a></li>';
         }
       }
       if (hasLists) {
         options += '<li id="dd_cont'+this[0]+'"><div id="ddChoose'+this[0]+'" onclick="ddShow('+this[0]+')" class="ddChoose" onmouseover=\'this.className="ddChooseOn"\' onmouseout=\'this.className="ddChoose"\'>Добавить в список</div></li>';
       }
       if (selected_filter == 'requests') {
         options += '<li id="spam'+this[0]+'"><a onclick="return declineFriendSpam('+ this[0] + ')" href="#">Это спам</a></li>';
       }
       if (friendsData.mid == friendsData.id) {
         cats = '<div id="cats'+this[0]+'" class="friendRowBtns">'+ddMakeCats(this[0])+'</div>';
       }
       var warning = intval(this[10]) ? '<div style="border: 1px solid #ccc; border-left: 2px solid #AA5533; background-color: #fafafa; padding: 5px; margin-bottom: 4px; cursor: pointer" onclick="toggle(\'fr_warn' + this[0] + '\')">Информация на данной странице может не соответствовать действительности.<div id="fr_warn' + this[0] + '" style="display: none"><br>Возможно, на данной странице содержится ненастоящее имя, фамилия или фотография.</div></div>' : '';
       if (selected_filter != 'requests') {
         buffer += '<div class="result clearFix" id="fr_res'+this[0]+'">' + warning + '<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="108"><div class="image"><a href="'+href+'"><img src="'+(this[2]||'/images/question_b.gif')+'" width="100" alt=""/></a></div></td><td style="vertical-align: top;"><div class="info"><dl class="clearFix">'+details+'</dl>'+cats+'<div class="friendRowBtns" id="res'+this[0]+'"></div></div></td><td style="vertical-align: top;"><ul id="nav" style="margin: 0px; overflow: hidden; width: 130px;">'+options+'</ul></td></tr></tbody></table></div>';
       } else {
         cats += '<div id="res'+this[0]+'" class="friendRowBtns"><div onclick="acceptFriend('+this[0]+')" class="blue_button_shadow friendRowBtn"><div class="blue_button"><div class="blue_button_body" onmouseover=\'this.className="blue_button_body_over"\' onmouseout=\'this.className="blue_button_body"\'>Добавить в друзья</div></div></div><div onclick="declineFriend('+this[0]+')" class="blue_button_shadow friendRowBtn"><div class="blue_button"><div class="blue_button_body" onmouseover=\'this.className="blue_button_body_over"\' onmouseout=\'this.className="blue_button_body"\'>Отклонить заявку</div></div></div><div onclick="naxFriend('+this[0]+')" class="blue_button_shadow friendRowBtn"><div class="blue_button"><div class="blue_button_body" onmouseover=\'this.className="blue_button_body_over"\' onmouseout=\'this.className="blue_button_body"\'>Послать в ( | )</div></div></div></div>';
         buffer += '<div class="requestRow clearFix result" id="fr_res'+this[0]+'">' + warning + '<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="108"><div class="image"><a href="'+href+'"><img src="'+(this[2]||'/images/question_b.gif')+'" width="100" alt=""/></a></div></td><td style="vertical-align: top;"><div class="info"><dl class="clearFix">'+details+'</dl>'+cats+'</div></td><td style="vertical-align: top;"><ul id="nav" style="margin: 0px; overflow: hidden; width: 130px;">'+options+'</ul></td></tr></tbody></table></div>';
       }
     }
     current++;
     if (current == 10) {
       var tmp = buffer;
       setTimeout(function(){ results.innerHTML = tmp;} , 0);
       buffer = '';
       resetResults = false;
     }
    });

    if (buffer.length) {
      setTimeout(function(){
        results.innerHTML = resetResults ? buffer : (results.innerHTML + buffer);
      }, 0);
    }
  } else {
    if (query.length)
      results.innerHTML = '<div id="noResults">'+getLang('friends_nothing_found_by_query').replace('{query}', query.replace(/</g, '&lt;'))+'</div>';
    else
      results.innerHTML = '<div id="noResults">В данном списке нет ни одного пользователя.</div>';
  }
  if (selected_list > 0)
    ge('summary').innerHTML = langNumeric(count, friends_X_users_in_list);
  else
    ge('summary').innerHTML = summary;
  show('pagesTop');
  show('pagesBottom');
  ge('pagesTop').innerHTML = ge('pagesBottom').innerHTML = pages;
}
function renderFriendRow() {
 //this
}

function onListSave(listId, listName, friends) {
  var newList = friendsLists[listId] ? false : true;
  var i;
  if (newList) {
    ge('side_filters').innerHTML += '<div id="list_item'+listId+'" class="side_filter" onclick="loadFriends(\'all\', '+listId+')" onmouseout="listOut(this)" onmouseover="listOver(this)">'+listName+'</div>';
  } else {
    ge("list_item" + listId).innerHTML = listName;
  }
  friendsLists[listId] = listName;
  for (i in friendCats)
    friendCats[i] &= ~(1 << listId);
  for (i in friends)
    friendCats[friends[i]] |= (1 << listId);
  loadFriends('all', listId, true);
}

function selectList(n) {
 if (!listsEnabled)
   return;
 var obj = ge('list_item' + n);
 if (obj.className != 'side_filter_selected') {
  each(geByClass('side_filter_selected', ge('side_filters')), function() {
    this.className = 'side_filter';
  });
  obj.className = 'side_filter_selected';
 }
}

var dd_over = 0;

function ddShow(fid) {
 var coords = getXY(ge('ddChoose'+fid));
 var dd_head = ge('ddHead');
 var ie_x_fix = browser.msie ? 2 : 0;
 var ie_y_fix = browser.msie ? 1 : 0;

 dd_head.style.left = coords[0]+1+ie_x_fix+'px';
 dd_head.style.top = coords[1]+ie_y_fix+'px';
 dd_head.style.width = ge('dd_cont'+fid).offsetWidth+'px';
 var str = '<div class="ddHead" onmouseout="ddRemove(); dd_over=0;" onmouseover="dd_over=1"><div class="ddChooseTop">Добавить в список</div></div>';
 dd_head.innerHTML = str;
 show(dd_head);

 var dd_menu = ge('ddMenu');
 dd_menu.style.left = coords[0]-28+ie_x_fix+'px';
 dd_menu.style.top = coords[1]-1+ie_y_fix+dd_head.offsetHeight+'px';
 var str = "<table cellpadding=0 cellspacing=0><tr><td class='ddSide'></td><td><div class='ddBody'>";
 str += ddItems(fid);
 str += "</div><div class='ddBottom'></div><div class='ddBottom2'></div></td><td class='ddSide'></td></tr>";
 dd_menu.innerHTML = str;
 show(dd_menu);
}

function ddItems(fid) {
 var str = "", cl_name = "";
 if (friendCats[fid] == undefined) {
  friendCats[fid] = 1;
 }
 for (var i in friendsLists) {
  if (friendCats[fid] & (1 << i)) {
   cl_name = "ddItemChecked";
  } else {
   cl_name = "ddItem";
  }
  str += "<div id='dead"+i+"' onclick='ddCheck("+i+","+fid+")' onmouseover='ddOverItem("+i+","+fid+")' onmouseout='ddOutItem("+i+","+fid+")' class='"+cl_name+"'>"+friendsLists[i]+"</div>";
 }
 return str;
}

function ddOverItem(n, fid) {
 if (friendCats[fid] & (1 << n)) {
  ge('dead'+n).className = 'ddItemCheckedOn';
 } else {
  ge('dead'+n).className = 'ddItemOn';
 }
 dd_over=1;
}

function ddOutItem(n, fid) {
 if (friendCats[fid] & (1 << n)) {
  ge('dead'+n).className = 'ddItemChecked';
 } else {
  ge('dead'+n).className = 'ddItem';
 }
 ddRemove();
 dd_over=0;
}

function ddCheck(n, fid) {
 if (friendCats[fid] & (1 << n)) {
  friendCats[fid] &= ~(1 << n);
  ge('dead'+n).className = 'ddItemOn';
 } else {
  friendCats[fid] |= (1 << n);
  ge('dead'+n).className = 'ddItemCheckedOn';
 }
 ge('cats'+fid).innerHTML = ddMakeCats(fid);

 if (selected_filter == 'requests' && friendsAdded[fid] == undefined) {
   return; // do not save
 }

 if (saveStatus[fid])
   clearTimeout(saveStatus[fid]);
   saveStatus[fid] = setTimeout(function(){
   Ajax.Post({
     url: 'friends_ajax.php',
     query: {act:'save_friend', fid: fid, cats: friendCats[fid], hash: friendsData.hash},
     onDone: function(ajaxObj, responseText) {
       var result = eval('(' + responseText + ')');
       if (result.error) {
         alert(result.error);
       }
     }
   });
 }, 1000);
}

function ddRemove() {
 setTimeout(ddHide, 50);
}

function ddHide() {
 if (dd_over) {
  return;
 }
 hide('ddMenu');
 hide('ddHead');
}

function ddMakeCats(fid) {
 var i, j=0, str = "";
 if (friendCats[fid] > 1) {
   for (i in friendsLists) {
     if (friendCats[fid] & (1 << i)) {
       j = (i - 1) % 8 + 1;
       str += '<span class="Group'+j+'" onclick="loadFriends(\'all\',\''+i+'\');">'+friendsLists[i]+'</span>, ';
     }
   }
   if (str.length) {
    str = str.substr(0, str.length-2);
   }
 }
 return str;
}

function removeList(listId) {
  if (listDeleteBox == undefined) {
    listDeleteBox = new MessageBox({title: 'Удаление списка друзей'});
  }
  listDeleteBox.removeButtons();
  listDeleteBox.addButton({
    onClick: function(){listDeleteBox.hide(200)},
    style:'button_no',
    label:'Отмена'
  }).addButton({
    onClick: function(){
      Ajax.Post({
        url: 'friends_ajax.php',
        query: {act: 'delete_list', cat_id: listId, hash: friendsData.hash},
        onDone: function(ajaxObj, responseText){
          var result = eval('('+responseText+')');
          if (result.error) {
            alert(result.error);
          } else {
            listDeleteBox.hide(200);
            delete friendsLists[listId];
            var menuItem = ge("list_item" + listId);
            menuItem.parentNode.removeChild(menuItem);
            loadFriends('all');
          }
        }
      });
    },
    label:'Удалить список'
  });
  listDeleteBox.content('Вы уверены, что хотите удалить этот список друзей?').show();
  return false;
}

function acceptFriend(fid) {
 Ajax.Post({
   url: 'friends_ajax.php?act=addd&al=1&hash=1&user_id='+fid+'&req=1',

   onDone: function(ajaxObj, responseText) {
    showFriendActionResult(fid, responseText);
   }
  });
}

function declineFriend(fid) {
 Ajax.Post({
   url: 'friends_ajax.php?act=dell&al=1&hash=1&user_id='+fid+'&req=1',
   onDone: function(ajaxObj, responseText) {
    showFriendActionResult(fid, responseText);
   }
  });
}

function naxFriend(fid) {
 Ajax.Post({
   url: 'friends_ajax.php?act=del_jop&al=1&hash=1&user_id='+fid+'&req=1',
   onDone: function(ajaxObj, responseText) {
    showFriendActionResult(fid, responseText);
   }
  });
}

function declineFriendSpam(fid) {
 Ajax.Post({
   url: 'friends_ajax.php',
   query: {fid: fid, act: 'decline_friend_spam', hash: friendsData.hash},
   onDone: function(ajaxObj, responseText) {
    showFriendActionResult(fid, responseText);
   }
  });
  return false;
}


var friendDeleteBox;

function removeFriend(fid) {
  if (friendDeleteBox == undefined) {
    friendDeleteBox = new MessageBox({title: 'Удаление из списка друзей'});
  }
  friendDeleteBox.removeButtons();
  friendDeleteBox.addButton({
    onClick: function(){friendDeleteBox.hide(200)},
    style:'button_no',
    label:'Отмена'
  }).addButton({
    onClick: function(){declineFriend(fid); friendDeleteBox.hide(200);},
    label:'Удалить'
  });
  friendDeleteBox.loadContent("friends_ajax.php",{'act':'remove_box','fid':fid}).show();
  return false;
}

function showFriendActionResult(fid, responseText) {
  var response = eval('(' + responseText + ')');
  if (!response.result || !response.state) {
    ge('res'+fid).innerHTML = 'ошибка';
  } else {
    switch (response.state) {
     case 'request_accepted':
      friendsAdded[fid] = 1;
      friendsData.filter = '';
      response.result = "<div class='request_accepted'>"+response.result+"</div>";
      ge('res'+fid).innerHTML = response.result;
     break;
     case 'request_declined':
      hide('spam'+fid);
      hide('dd_cont'+fid);
      response.result = "<div class='request_declined'>"+response.result+"</div>";
      ge('res'+fid).innerHTML = response.result;
     break;
     case 'friend_removed':
      friendsData.filter = '';
      ge("fr_res"+fid).className = 'friend_removed';
      ge("fr_res"+fid).innerHTML = response.result;
     break;
    }
  }
}

function writeToFriend(fid) {
  return showBox('sendMsg', 'mail.php', {act: 'a_write_box', to: fid}, true, true, {title: 'Написать сообщение', progress: 'sending_progress', width: 450});
}

</script>




<script>
var friend_tabs = ['friends_all_tab', 'friends_online_tab', 'friends_requests_tab'];
</script>{/literal}



</div>
<div class="summary_wrap">
  
  <div class="summary" id="friends_summary">{if $total_friends == 0}У Вас нет заявок в друзья.{else}У Вас {$total_friends} {include file='sklonenie_friends_requests.tpl'}{/if}</div>
</div>

{if $total_friends != 0}
 <table id="searchResults" class="mine searchResults peopleResults friendsPage">
<tbody><tr>
<td id="results" class="results friendRows">

   {section name=friend_loop loop=$friends}
  <div class="clearFix requestRow result" id="fr_res{$friends[friend_loop]->user_info.user_id}">

<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="108">
 <div class="image">
  <a href="/id{$friends[friend_loop]->user_info.user_id}"><img src="{$friends[friend_loop]->user_photo('./images/camera_a.gif')}" alt="" width="100"/></a>
 </div>

</td><td style="vertical-align: top;">
 <div class="info">
  <dl class="clearFix">

   <dt>Имя:</dt><dd><a href='/id{$friends[friend_loop]->user_info.user_id}'>{$friends[friend_loop]->user_info.user_displayname} </a></dd><dt>&nbsp;</dt><dd></dd><br>
  </dl>
  <div id="cats{$friends[friend_loop]->user_info.user_id}" class="friendRowBtns"></div>

  <div class="common_friends">
<div style="width:125px;" class="button_blue fl_r" onclick="acceptFriend({$friends[friend_loop]->user_info.user_id})">
<button style="width:125px;" id="accept_request_51441037" onclick="Friends.acceptRequest(51441037, 'b84b6398512b62b6d8', this)">Добавить в друзья</button>
</div>

<div style="margin-top:4px; width:125px;" class="button_blue fl_r" onclick="declineFriend({$friends[friend_loop]->user_info.user_id})">
<button style="width:125px;" id="accept_request_51441037" onclick="Friends.acceptRequest(51441037, 'b84b6398512b62b6d8', this)">Отклонить заявку</button>
</div>

<div style="margin-top:4px; width:125px;" class="button_blue fl_r" onclick="naxFriend({$friends[friend_loop]->user_info.user_id})">
<button style="width:125px;" id="accept_request_51441037" onclick="Friends.acceptRequest(51441037, 'b84b6398512b62b6d8', this)">Послать {if $friends[friend_loop]->profile_info.profile_6 !=0}её{else}его{/if} В ( Y )</button>
</div>

<br class="clear">
</div>

  </div>

 </div>

 </div>
</td><td style="vertical-align: top;">
 

</td></tr></tbody></table>
</div>
{/section}
   </td>
</td>
{else}
<table id="searchResults" class="mine searchResults peopleResults friendsPage">
<tbody>
<tr>
<td id="results" class="results friendRows">
<div id="noResults">У Вас пока нет заявок в друзья.</div>
</td>
{/if}
<td id="right_pane" class="side_filters" >
<!--<div class="blue_button_shadow"><div class="blue_button"><div class="blue_button_body" onmouseover="this.className='blue_button_body_over'" onmouseout="this.className='blue_button_body'" onclick="listEditBox.newList();" >Создать список</div></div></div>-->
<div style="padding: 0px 0px 0px 0px" id="side_filters">
<div id="list_item0" class="side_filter_selected" onmouseover="listOver(this, 0)" onmouseout="listOut(this, 0)" onclick="loadFriends('all', 0)">Все заявки</div>

</div>
</td>

</tr></tbody></table>
<div class="bar clearFix footerBar">


 <div style="display: none;" id="progressTop">
  <img src="images/upload.gif" style="vertical-align: baseline;"/>
 </div>
</div><iframe name="inviter" id="inviter" style="width:1px;height:1px;visibility:hidden;position:absolute;"></iframe>

   </div>
  </div>
  </div>
</aside>
<div id="contentBody">
{include file='footer.tpl'}