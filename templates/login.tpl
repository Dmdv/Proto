{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link rel="stylesheet" href="/css/rustyle.css?140" type="text/css" />

<script src="/js/common.js?250"></script>
<link rel="stylesheet" href="/css/al/reg.css?17" type="text/css" />
<link rel="stylesheet" href="/css/al/ui_controls.css?24" type="text/css" />
<script type="text/javascript" src="/js/lib/ui_controls.js?105"></script>
<script type="text/javascript" src="/js/lang0_0.js?4915"></script>
<link rel="stylesheet" href="/css/rustyle.css?164" type="text/css" />
<script src="/js/common.js?283"></script>
<link rel="stylesheet" href="/css/reg.css?17" type="text/css" />
<link rel="stylesheet" href="/css/ui_controls.css?31" type="text/css" />
<script type="text/javascript" src="/js/lib/ui_controls.js?119"></script>
<script type="text/javascript" src="/js/lang0_0.js?6265"></script>
<div id="pageBody" class="pageBody">
  <div id="wrapH">
  <div id="wrapHI">
   <div id="header"><h1> Вход</h1></div>
  </div>

  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">
<div class="simplePage">

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
 <div id="message_text">
<div id="message" style="line-height: 160%; font-weight: normal;">
<b>Не удается войти.</b>
<br>
Пожалуйста, проверьте правильность написания
<b>логина</b>
и
<b>пароля</b>
.
<ul class="listing" style="color: #000; padding-top: 15px;">
<li>
<span>Возможно, нажата клавиша CAPS-lock?</span>
</li>
<li>
<span>
Может быть у Вас включена неправильная
<b>раскладка</b>
? (русская или английская)
</span>
</li>
<li>
<span>
Попробуйте набрать свой пароль в текстовом редакторе и
<b>скопировать</b>
в графу «Пароль»
</span>
</li>
</ul>
Если Вы всё внимательно проверили, но войти всё равно не удается, Вы можете
<b>
<a href="/restore">нажать сюда</a>
</b>
.
</div>
</div>
{/if}
<div class="simplePage">
 <form action='login.php' name="login" id="login" method='post'>
  <table align="center" cellpadding=0 cellspacing=7 border=0 width="80%">
   <tr>
    <td class="ta_r">
     <span class="grey">E-mail:</span>
    </td>

    <td style="padding: 0px">
     <input class="inputText" type="text" name="email" value='{$email}' id="email" size="25" style="margin: 0px"/>
    <td>
   </tr>
   <tr>
    <td class="ta_r">
     <span class="grey">Пароль:</span>
    </td>

    <td style="padding: 0px">
     <input class="inputText" type="password" name="password" value="" id="pass" size="25" style="margin: 0px"/>
    </td>
   </tr>
   <tr>
    <td>
     &nbsp;
    </td>
    <td>

     <input type="hidden" name="expire" id="expire" />
{literal}<script type="text/javascript">
onDomReady(function() {
  new Checkbox(ge('expire'), {
    width: 150,
    label: 'Чужой компьютер'
  });
});
</script>{/literal}
    </td>
   </tr>
   <tr>
    <td>
     &nbsp;
    </td>
    <td>

<div style="height:20px; margin:5px 14px">
<ul class="nNav btnList">
<li>
<div style="height:20px; width:123px; margin-top:5px;">
<div class="button_blue button_wide"><button id="quick_login_button">Войти</button></div>
</div>
      <input type='hidden' name='task' value='dologin'>
      <input type='hidden' name='ip' value='{$ip}'>

    </td>

   </tr>
   <tr>
    <td> &nbsp; </td>
<td class="forgotPass">
<a href="/restore">Забыли пароль или не можете войти?</a>
</td>


   </tr>

  </table>
  <input type="submit" value='.' style="color:#fff;border:0;padding:0;margin:0;background:#fff;height:6px;width:6px"/>
 </form>

{literal}
<script language="JavaScript">
<!--
window.addEvent('domready', function() {
	if($('email').value == "") {
	  $('email').focus();
	} else {
	  $('password').focus();
	}
});
// -->
</script>
{/literal}
</div></div></div></div></div>
{include file='footer.tpl'}