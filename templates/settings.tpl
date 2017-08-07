{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

<link rel="stylesheet" type="text/css" href="/css/al/common.css?310" />
<link type="text/css" rel="stylesheet" href="/css/al/settings.css?47"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?28"></link>
<link type="text/css" rel="stylesheet" href="/css/al/notifier.css?60"></link>

<script type="text/javascript" src="/js/loader_nav9123_0.js"></script>
<script type="text/javascript" src="/js/al/common.js?830"></script>
<script type="text/javascript" src="/js/lang0_0.js?6256"></script>

<script type="text/javascript" src="/js_old/common.js"></script>
<script type="text/javascript" src="/js_old/lang0_1000.js"></script>
<script type="text/javascript" src="/js_old/ui_controls.js"></script>
<script type="text/javascript" src="/js_old/selects.js"></script>





  {literal}<script type="text/javascript">
   var checkTimeout;
   function checkLink(elem) {
     var tmp = elem.value.replace(/[^0-9a-zA-Z_]/, "");
     if (tmp != elem.value) elem.value = tmp;
     clearTimeout(checkTimeout);
     checkTimeout = setTimeout(function(){
       var ajax = new Ajax(function(ajaxObj, responseText){
         if (responseText > 0) {
           ge('error').innerHTML = 'Выбранный адрес занят другим пользователем.';
           show('error');
         } else {
           hide('error');
         }
       });
       ajax.post('/settings.php?act=a_domain_check', {domain: elem.value});
     }, 800);
   }
   var editLinkBox = new MessageBox({title: 'Редактирование адреса'});

   editLinkBox.addButton({
     label: 'Отмена',
     style: 'fl_r button_gray', // button class
     onClick: function() {
       editLinkBox.hide();
     }
   }).addButton({
     label: 'Зарегистрировать адрес',
     onClick: function(){
       location.replace('settings.php?act=change_domain&domain=' + escape(ge('subdomain').value));
     }
   });
   //editLinkBox.content(ge('editLinkContent').innerHTML);
   //ge('editLinkContent').innerHTML = '';
  </script>{/literal}

   {literal}<script type="text/javascript">
var services = {"news":[0,"Мои Новости"],"audio":[{/literal}{if $user->user_info.audio != 0}1{else}0{/if}{literal},"Мои Аудиозаписи"],"faves":[{/literal}{if $user->user_info.faves != 0}1{else}0{/if}{literal},"Мои Закладки"],"opinions":[{/literal}{if $user->user_info.opinions != 0}1{else}0{/if}{literal},"Мнения"],"matches":[{/literal}{if $user->user_info.matches != 0}1{else}0{/if}{literal},"Предложения"],"apps":[0,"Приложения"],"questions":[0,"Вопросы"],"market":[0,"Объявления"],"pages":[0,""],"profile":[{/literal}{if $user->user_info.profile != 0}1{else}0{/if}{literal},"Моя Страница"],"photos":[{/literal}{if $user->user_info.photos != 0}1{else}0{/if}{literal},"Мои Фотографии"],"mail":[{/literal}{if $user->user_info.mail != 0}1{else}0{/if}{literal},"Мои Сообщения"],"friends":[{/literal}{if $user->user_info.friends != 0}1{else}0{/if}{literal},"Мои Друзья"],"video":[{/literal}{if $user->user_info.video != 0}1{else}0{/if}{literal},"Мои Видеозаписи"],"groups":[{/literal}{if $user->user_info.groups != 0}1{else}0{/if}{literal},"Мои Группы"],"events":[{/literal}{if $user->user_info.events != 0}1{else}0{/if}{literal},"Мои Встречи"],"views":[1,"Мои Просмотры"],"notes":[{/literal}{if $user->user_info.notes != 0}1{else}0{/if}{literal},"Мои Заметки"],"fans":[0,"Поклонники"],"competitions":[1,"Конкурсы"]}

var updateTimeout;
onDomReady(function() {
  each(['profile', 'friends', 'photos', 'video', 'audio', 'mail', 'notes', 'groups', 'events', 'news', 'faves', 'matches',  'opinions','apps',  'questions', 'market', 'fans', 'competitions', 'views'], function() {
    if (services[this] == undefined) {
     return;
    }
    var service = services[this];
    new Checkbox(ge(''+this), {
      width: 130,
      checked: service[0],
      label: service[1],
      onChange: function() {
        clearTimeout(updateTimeout);
        updateTimeout = setTimeout(updateLeftNav, 0);
      }
    });
  });
});
function updateLeftNav() {
  Ajax.Send("settings.php", serializeForm(ge('changeServices')), function(ajaxObj, responseText){
    ge('nav').innerHTML = responseText;
  });
}
</script>{/literal}

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
    <div id="content"><div class="t_bar tabs clear_fix"><ul id="settings_filters" class="t0">
  <li class="active_link">
    <a href="/settings" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Общее</b>
    </a>
  </li>
  <li class="">
    <a href="/settings?act=other" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Дополнительные сервисы</b>
    </a>
  </li>
</ul></div>
{if $result != 0}
<div id="settings_result" style="display: block;">
<div id="settings_save_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Спасибо!</b>
<br>
Ваши настройки сохранены.
</div>
</div>
{elseif $is_error != 0}
<div id="settings_result" style="display: block;">
<div id="settings_save_msg" class="msg" style="background-color: rgb(249, 246, 231);">{lang_print id=$is_error}</div>
</div>
{/if}

<div id="settings_panel" class="clear_fix"> 

 <div class="settings_section">
  <h2>Дополнительные сервисы</h2>
  Укажите ссылки, которые Вы хотели бы видеть в меню слева:
  <div id="settings_services">
       <form method="post" id="changeServices" name="changeServices" action="settings">
      <input type="hidden" id="act" name="act" value="change_services" />
      <input type="hidden" id="subm" name="subm" value="1" />
     <div style="padding:0px 0px 0px 140px;">
       <!--<div class="serviceCheck"><input type="hidden" id="profile" name="profile" /></div>-->
       <div class="serviceCheck"><input type="hidden" id="friends" name="friends" /></div>
       <div class="serviceCheck"><input type="hidden" id="photos" name="photos" /></div>
       <div class="serviceCheck"><input type="hidden" id="video" name="video" /></div>
       <div class="serviceCheck"><input type="hidden" id="audio" name="audio" /></div>
       <div class="serviceCheck"><input type="hidden" id="mail" name="mail" /></div>
       <div class="serviceCheck"><input type="hidden" id="groups" name="groups" /></div>
       <!--<div class="serviceCheck"><input type="hidden" id="views" name="views" /></div>-->
       <!--<div class="serviceCheck"><input type="hidden" id="news" name="news" /></div>-->


       <!--<div class="serviceCheck"><input type="hidden" id="competitions" name="competitions" /></div>-->
       <!--<div class="serviceCheck"><input type="hidden" id="apps" name="apps" /></div>
       <div class="serviceCheck"><input type="hidden" id="questions" name="questions" /></div>
       <div class="serviceCheck"><input type="hidden" id="market" name="market" /></div>


      <div class="serviceCheck"><input type="hidden" id="fans" name="fans" /></div> -->
     </div>

     </form>
  </div>
</div>

<form method="post" id="changePassword" name="changePassword" action="settings?act=change_pass">
<div class="settings_section">
  <h2>Изменить пароль</h2>
  <div id="settings_error_pwd"></div>
  <div class="settings_row_wrap clear_fix">
    <div class="settings_label fl_l ta_r">Старый пароль:</div>
    <div class="settings_labeled fl_l">
      <input type="password" id="settings_old_pwd" name='password_old' class="text" value=""/>
    </div>
  </div>
  <div class="settings_row_wrap clear_fix">
    <div class="settings_label fl_l ta_r">Новый пароль:</div>
    <div class="settings_labeled fl_l">
      <input type="password" id="settings_new_pwd" name='password_new' class="text" value=""/>
    </div>
    <div class="fl_l" id="settings_pwd_tt_place"></div>
  </div>
  <div class="settings_row_wrap clear_fix">
    <div class="settings_label fl_l ta_r">Повторите пароль:</div>
    <div class="settings_labeled fl_l">
      <input type="password" id="settings_confirm_pwd" name='password_new2' class="text" value=""/>
    </div>
  </div>
  <div class="settings_row_button_wrap clear_fix">
    <div class="button_blue fl_l">
      <button>Изменить пароль</button>
	  <input type='hidden' name='task' value='dosave'>
    </div>
  </div>
</div>
</form>


<div class="settings_section" id="chgaddr">
  <h2>Адрес Вашей страницы</h2>
  <div id="settings_error_addr"></div>
  <div class="settings_row_wrap clear_fix">
    <div class="settings_label fl_l ta_r">Адрес страницы:</div>
    <div class="settings_labeled fl_l">
      <table id="settings_addr_table" cellspacing="0" cellpadding="0">
        <tr>
          <td class="settings_edit_addr_label noselect" ><nobr>http://vk.com/<font color='black'>id{$user->user_info.user_id}</font></nobr></td>
          <td class="settings_addr_field"><input id="settings_addr" maxlength="32" type="text" class="text settings_addr" /></td>
        </tr>
      </table>
    </div>
  </div>


</div>

<form method="post" id="changeEmail" name="changeEmail" action="settings">
<div class="settings_section">
  <h2>Адрес Вашей электронной почты</h2>
  <div class="settings_row_wrap clear_fix">
<div class="settings_label fl_l ta_r">Текущий адрес:</div>
<div class="settings_labeled_text fl_l"> Скрыт </div>
</div>
<div class="settings_row_wrap clear_fix">
<div class="settings_label fl_l ta_r">Новый адрес:</div>
<div class="settings_labeled_input">
<input id="settings_new_mail" name='user_email' type='text' class='text' maxlength='70' value='{$user->user_info.user_email}'>
</div>
</div>
<div class="settings_row_button_wrap clear_fix">
<div class="button_blue fl_l">
<button>Сохранить адрес</button>
<input type='hidden' name='task' value='dosave'>
</div>
</div>
</div>



<div class="settings_section">
  <h2>Изменить Логин</h2>
  <div class="settings_row_wrap clear_fix">
{if $user->level_info.level_profile_change != 0 && $setting.setting_username}
  <div class="settings_row_wrap clear_fix">
<div class="settings_label fl_l ta_r">Новый Логин:</div>
<div class="settings_labeled_input">
    <input id="settings_new_mail" name='user_username' type='text' class='text' maxlength='50' value='{$user->user_info.user_username}'>
    </div>
</div>
<div class="settings_row_button_wrap clear_fix">
<div class="button_blue fl_l">
<button>Изменить логин</button>
</div>
<input type='hidden' name='task' value='dosave'>
  </div>
</div>
{/if}
</form>
 
  </div>
</div><div class="settings_view_as_text clear_fix" align="center">
  Вы можете <a href="/settings?act=deactivate">удалить свою страницу</a>.
</div>
</div></div>
  </div>
</div></div>
    
	
	{include file='footer.tpl}