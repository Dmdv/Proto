{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/settings.css?34"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?48"></link><script type="text/javascript" src="/js/al/common.js?633"></script><script type="text/javascript" src="/js/lang0_0.js?5181"></script><script type="text/javascript" src="/js/al/settings.js?44"></script><script type="text/javascript" src="/js/al/notifier.js?128"></script>
<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?17"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?48"></link><script type="text/javascript" src="/js/al/common.js?633"></script><script type="text/javascript" src="/js/lang0_0.js?5181"></script><script type="text/javascript" src="/js/al/profile_edit.js?27"></script><script type="text/javascript" src="/js/lib/ui_controls.js?108"></script><script type="text/javascript" src="/js/al/notifier.js?128"></script>
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
  <li class="">
    <a href="/settings" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Общее</b>
    </a>
  </li>


  <li class="active_link">
    <a href="/settings?act=other" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Дополнительные сервисы</b>
    </a>
  </li>
</ul></div>

{if $m == 1}
<div id="settings_result" style="display: block;">
<div id="settings_save_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Сервис не подключен</b>. <br> У вас не хватает голосов!
</div>
</div>
{/if}

{if $m == 2}
<div id="settings_result" style="display: block;">
<div id="settings_save_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Сервис подключен</b>.<br>Новые настройки вступили в силу.
</div>
</div>
{/if}

{if $m == 3}
<div id="settings_result" style="display: block;">
<div id="settings_save_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Сервис отключен</b>.<br>Новые настройки вступили в силу.
</div>
</div>
{/if}

<div id="settings_panel" class="clear_fix">


<div class="settings_section" style="">





  <h2>Хочу общаться!</h2>
  <div id="settings_email_post_msg" class="msg">Для самых общительных! Ваша страничка <b>временно попадает в список из анкет</b>, ссылка на одну их которых случайным образом покажется на страницах ВКонтакте. Тысячи других пользователей увидят вас и смогут зайти в гости. Ссылка будет показываться Вы не захотите удалить ее. Стоимость услуги составляет <b>5 голосов</b>. </div>
  <div class="settings_buttons clear_fix">
  <form enctype="multipart/form-data" action="settings" name="wantPage" id="wantPage">

    {if $user->user_info.user_want == 0}<a href="javascript: document.wantPage.submit()"><div class="button_blue"><button>Хочу общаться!</button><input type='hidden' name="want" value="1" >

			<input type='hidden' name='act' value='wanted'></div></a>{else}<a href="/settings?act=wantdel"><div class="button_blue"><button>Отключить сервис</button><input type='hidden' name="want" value="0" >

			<input type='hidden' name='act' value='wantdel'></div></a>{/if}
 </form> </div>
</div></div></div>
  </div>
</div></div>
    </div>

{include file='footer.tpl'}