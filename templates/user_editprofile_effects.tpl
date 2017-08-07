{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?22"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link><script type="text/javascript" src="/js/al/common.js?722"></script><script type="text/javascript" src="/js/lang0_0.js?5644"></script><script type="text/javascript" src="/js/al/profile_edit.js?36"></script><script type="text/javascript" src="/js/lib/ui_controls.js?110"></script><script type="text/javascript" src="/js/al/notifier.js?158"></script>

{literal}
<style>
ul.nNav {
  font-size: 11px;
  list-style: none;
  margin: 0;
  padding: 0;

}
.nNav li {
 float: left;
 display: inline;
 margin-left: 5px;
 text-align:center;
 width: expression(this.getElementsByTagName("a")[0].offsetWidth+16+"px");
 border-bottom: 1px solid #eee;
}
.nNav li a:hover {
 color: #DAE1E8;
 text-decoration:none;
}
.nNav li a {
 color: #FFF;
 display:inline;
 white-space: nowrap;
}
.nc {
  display:block;
  width: expression(this.parentNode.offsetWidth+"px");
}
.nc *{
  display:block;
  height:1px;
  font-size:.01em;
  overflow:hidden;
  background:#4D7196}
.nc1{
  margin-left:1px;
  margin-right:1px;
  border-left:1px solid #93A9BD;
  border-right:1px solid #93A9BD;
  background:#517294}
.nc2{
  border-left:1px solid #93A9BD;
  border-right:1px solid #93A9BD;
  background:#55789B}
.ncc {
  display: block;
  background:#4D7196; padding:3px 8px 3px 8px; color:#fff;
}

.photo h4 {
    border-bottom: 1px solid #B9C4DA;
    font-size: 13px;
    margin: 0;
    padding: 0 0 2px;
}

/* EDIT ACCOUNT */


.editorPanel {
  padding: 10px 0px;
  background: #f7f7f7; }

.settingsPanel {
  width: 400px;
  margin: 0px auto 15px;
}

.settingsPanel h4 {
  border-bottom: 1px solid #b9c4da;
  color: #36638E;
  font-size: 12px;
  font-weight: bold;
  margin: 10px 0px 10px;
  padding-bottom: 2px; }

.settingsPanel p {
  line-height: 14px;
  margin: 0px 0px 8px; }

.settingsPanel .editor {
  width: 400px; }

.settingsPanel .editor td.label {
  text-align: right;
  padding-left: 0px;
  width: 100px; }

.settingsPanel .editor .buttons {
  text-align: left;
  margin: 0px;
  padding: 0px 0px 0px 105px; }

.settingsPanel .editor td input[type~="text"],
.settingsPanel .editor td input[type="text"] {
  width: 280px; }

.settingsPanel .editor td input[type~="password"],
.settingsPanel .editor td input[type="password"] {
 width:200px;
}

.settingsPanel .editor select {
  width: 280px; }

.settingsPanel ul {
  list-style: square;
  padding: 0px;
  padding-left: 15px; }

.settingsPanel li {
  color: #36638E;
  margin-bottom: 5px; }

.settingsPanel li span {
  color: #000; }

.settingsPanel em {
  color: #36638E;
  font-weight: bold;
  font-style: normal }

.editor {
  margin: 3px 0px 11px 22px;
  width: 580px;
}
.editor_panel {
  padding: 10px 0px;
  background: #f7f7f7;
}
.editor td {
  border: none;
  margin: 0px;
  padding: 5px 1px 1px;
  vertical-align: top;
}

.editor td.label {
  text-align: right;
  padding-right: 15px;
  /*padding-right: 0px;*/
  width:150px;
  color: #555;
}

.editor td.labelHigh {
  text-align: right;
  vertical-align: top;
  padding: 10px 15px 0px 0px;
  /*padding: 10px 0px 0px 0px;*/
  width: 150px;
  color: #555;
}

.editor td.labelHigh div{
  font-weight: normal;
  font-size:10px;
  color: #999; }

</style>
{/literal}

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
	<div class="t_bar tabs clear_fix">
     <ul id="pedit_filters" class="t0">

{section name=cat_loop loop=$cats}
  <li class="{if $cats[cat_loop].subcat_id == $cat_id}active_link{/if}"><a href='edit?cat_id={$cats[cat_loop].subcat_id}'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">{lang_print id=$cats[cat_loop].subcat_title}</b></a></li>
{/section}
  {if $user->level_info.level_photo_allow != 0}<li class="active_link"><a href='edit?act=photo'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Фотография</b></a></li>{/if}
</ul></div>

<div class="editorPanel clearFix">


{if $m == 1}<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
У Вас не хватает голосов для установки спецеффекта
</div>
</div>{/if}


      <form enctype="multipart/form-data" action="user_editprofile_effects.php" name="effectPhoto" id="effectPhoto">			<input type='hidden' name='page' value='effected'>


      <div class="settingsPanel" style="margin-top: 0px; padding-top: 12px;">
						<h4>Спецэффекты</h4>
      			Выбранный спецэффект будет примёнен к Вашей фотографии в анкете. Установка или смена спецэфекта стоит <b>10 голосов</b>. При изменении картинки аватара - спецэффект <b>останется</b>.
      </div>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>

<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" width="200" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}"><param name="wmode" value="transparent">
<param name="movie" value="images/effects/eff_1.swf">
<param name="allowScriptAccess" value="never">
<embed allowscriptaccess="never" type="application/x-shockwave-flash" src="images/effects/eff_1.swf" wmode="transparent" width="200" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}">
</object></div>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="1" >Сверкающие звезды<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_2.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_2.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="2" >Неземная влюблённость<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_5.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_5.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="5" >Звезда в шоке<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_6.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_6.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="6" >Matrix still has you<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_8.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_8.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="8" >Воздушные поцелуи<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_9.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_9.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="9" >Ніхто мене не любить<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_10.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_10.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="10" >Вечная весна<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_12.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_12.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="12" >Новогодний снегопад<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_13.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_13.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="13" >Праздничные огни<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_15.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_15.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="15" >Марс и Венера<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>
            	<table class="editor" border="0" cellspacing="0"><tr>
        <td >

        	<table>
        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_16.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_16.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>

	 					<td class="labelHigh" style="width:210px; text-align:center">
	 				<input type="radio" name="effect" value="16" >Лепестки роз<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>


        <td >
        	<table>

        		<tr>
        			<td>
	 				<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
	 				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"><param name="wmode" value="transparent"><param name="movie" value="./images/effects/eff_17.swf"><param name="allowScriptAccess" value="never"><embed allowscriptaccess="never" type="application/x-shockwave-flash" src="./images/effects/eff_17.swf" wmode="transparent" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}" width="200"></object>
	 				</div>
	 				</div>
	 					</td>
	 					</tr>
	 					<tr>
	 					<td class="labelHigh" style="width:210px; text-align:center">

	 				<input type="radio" name="effect" value="17" >Падающие сердца<br />
	 				</td>
	 				</tr>
	 				</table>
				</td>
      	</tr></table>


              </table>
      <table class="editor" style="margin-left: 0px;" border="0" cellspacing="0">

				<tbody><tr>
	        <td class="label" style="width: 235px;"></td>
	        <td>
	      <ul class='nNav'>
	           <li style="margin-left:0px;">
	            <b class="nc"><b class="nc1"><b></b></b><b class="nc2"><b></b></b></b>
	            <span class="ncc"><a href="javascript: document.effectPhoto.submit()">Применить спецэфект</a></span>
	            <b class="nc"><b class="nc2"><b></b></b><b class="nc1"><b></b></b></b>

	           </li>
	      </ul>
		  </td>
	       </tr>
	      </tbody>
      	</table>
     </form>
       </div>
     </div>

  </div>
  </div>
  </div>
  <div id="boxHolder"></div>



{include file='footer.tpl'}