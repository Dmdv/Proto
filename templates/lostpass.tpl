{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

<link rel="stylesheet" type="text/css" href="/css/al/common.css?322" />
<link type="text/css" rel="stylesheet" href="/css/al/restore.css?11"></link>
<link type="text/css" rel="stylesheet" href="css/al/login.css?27"></link>
<script type="text/javascript" src="/js/loader_nav9491_0.js"></script>
<script type="text/javascript" src="/js/al/common.js?853"></script>
<script type="text/javascript" src="/js/lang0_0.js?6265"></script>







  <form action='lostpass.php' method='post'>
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
    <div id="content"><div id="forgot_panel">
  <div class="page_section">
    <h2>Восстановление доступа к странице</h2>
   {if $submitted == 1 AND $is_error == 0}

<div id="error" class="msg ta_l" style="padding: 8px; margin: 10px 0px; line-height: 160%;">
{lang_print id=35}
</div>

{else}

  {if $is_error != 0}<div id="error" class="msg ta_l" style="padding: 8px; margin: 10px 0px; line-height: 160%;">
<b>Пользователь не найден.</b>
<br>
Пожалуйста, убедитесь, что правильно ввели логин, e-mail или телефон.
</div>{/if}
  
  {/if}
    <div class="info">
      Пожалуйста, укажите <b>e-mail</b>, который Вы использовали для входа на сайт.
    </div>
    <div class="section_row clear_fix">
      <div class="label fl_l ta_r">Введите Email:</div>
      <div class="labeled fl_l">
<input id="login_input" type='text' class='text' name='user_email' maxlength='70' />
</div>
    </div>
    <div class="section_row clear_fix">
      <div class="label fl_l ta_r"></div>
      <div class="labeled fl_l">
        <div class="button_blue"><button id="submitBtn" onclick="cur.forgotFormSend();">Далее</button></div>
              <input type='hidden' name='task' value='send_email' />
              </form>
      </div>
    </div>
  </div>

           
</div></div>
  </div>
</div></div>
    </div>
        </form>



{include file='footer.tpl'}