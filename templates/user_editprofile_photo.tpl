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
{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
  <div class='center'>
    <table cellpadding='0' cellspacing='0'>
      <tr>
        <td class='result'>
          <div class='error'>
            <img src='./images/error.gif' class='icon' border='0' />
            {lang_print id=$is_error}
          </div>
        </td>
      </tr>
    </table>
  </div>
  <br />
{/if}

{if $m == 2}<div id="messageWrap"><div id="message">Спецеффект установлен.</div>&nbsp;</div>{/if}
{if $m == 3}<div id="messageWrap"><div id="message">Спецеффект успешно удален.</div>&nbsp;</div>{/if}


      <form enctype="multipart/form-data" method="post" action="" name="editPhoto" id="editPhoto">
      <input type="hidden" name="subm" id="subm" value="1">
       <table class="editor" border="0" cellspacing="0">
       <tr>
        <td class="labelHigh" style="width:210px; text-align:center">

{if $user->user_info.user_photoef > 0}
<div style="background-image: url({$user->user_photo("./images/camera_a.gif")}); width: 200px; height: {$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}px;" align="center">
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://pdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="lecteur" width="200" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}"><param name="wmode" value="transparent">
<param name="movie" value="images/effects/eff_{$user->user_info.user_photoef}.swf">
<param name="allowScriptAccess" value="never">
<embed allowscriptaccess="never" type="application/x-shockwave-flash" src="images/effects/eff_{$user->user_info.user_photoef}.swf" wmode="transparent" width="200" height="{$misc->photo_size($user->user_photo("./images/camera_a.gif"),'200','999','h')}">
</object></div>
{/if}
{if $user->user_info.user_photoef == 0}
	 <img src='{$user->user_photo("./images/camera_a.gif")}' border='0'>
{/if}

         <input type="submit" value='.' style="color:#fff;border:0;padding:0;margin:0;background:#F7F7F7;height:1x;width:2px"/>
	</td>

        <td>
	 <div class="photo">
	 <h4>Загрузка фотографии</h4>
	 <p>Вы можете загрузить сюда только собственную фотографию расширения JPG, JPEG, GIF или PNG. Загрузка постороннего изображения приведёт к удалению Вашего аккаунта.</p>
	 <input type="file" class="inputfile" size="30" id="photo" name="photo" />
	 <small><br><br>Файлы размером более 5 MB не загрузятся.<br />В случае возникновения проблем попробуйте загрузить фотографию меньшего размера.<br><br></small>
         <div style="margin-bottom:15px;">

		{literal}
          <script type="text/javascript">
function save_photo() {
  //check_flood('profile_photo_flood', {/literal}{$user->user_info.user_id}{literal}, function() {
    document.editPhoto.submit();
  //}
  //);
}
          </script>
          {/literal}
          <ul class='nNav'>
           <li style="margin-left:0px;">
            <div class="button_blue fl_l">
			<a href="javascript: save_photo()"><button>Обновить фотографию</button></a></div>
           </li>
		     <input type='hidden' name='task' value='upload'>
  <input type='hidden' name='MAX_FILE_SIZE' value='5000000'>
  </form>

          <li style="margin-left:10px;">

            <div class="button_blue fl_l"><a href="user_editprofile_effects.php"><button>Добавить спецэффекты</button></a></div>
           </li>
          </ul>
         </div>
	 <br>
	 	 <br>

	 <h4>Удаление фотографии</h4>
	 <p>Вы можете удалить текущую фотографию, но не забудьте загрузить новую, иначе на её месте будет стоять большой вопросительный знак.</p>
	 <p>
	 <form method="post" action="" name="delPhoto" id="delPhoto">
      <input type="hidden" name="subm" id="subm" value="747">
      <input type="hidden" name="e" id="e" value="photo">
      <input type="hidden" name="task" id="task" value="remove"></form>
         <div>
          <ul class='nNav'>
           <li style="margin-left:0px">
<div class="button_blue fl_l">
			<a href="javascript:document.delPhoto.submit();"><button>Удалить фотографию</button></a></div>
           </li>
		   </form>
{if $user->user_info.user_photoef > 0}
           <li style="margin-left:10px;">

<div class="button_blue fl_l">
			<a href="user_editprofile_effects.php?page=effdel"><button>Удалить спецэффекты</button></a></div>
           </li>{/if}
          </ul>
         </div>
	 </p>
	         </td>
       </tr>
      </table>


</div></div>
  </div>

</div></div>
    </div>

{include file='footer.tpl'}