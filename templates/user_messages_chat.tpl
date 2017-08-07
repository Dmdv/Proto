{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<title>{capture assign='collaborators'}{section name=coll_loop loop=$collaborators}{$collaborators[coll_loop]->user_displayname}{if $smarty.section.coll_loop.last != TRUE}, {/if}{/section}{/capture}{lang_sprintf id=801 1=$collaborators}</title>
<link rel="shortcut icon" href="./images/icons/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Set-Cookie" content="Test=Value; EXPIRES=Fri, 9 Oct 2009 00:00:00">
<meta http-equiv="Content-language" content ="{lang_print id=75400016}" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="Mon, 26 Jul 1997 05:00:00 GMT" /><link type="text/css" rel="stylesheet" href="/css/al/profile.css"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css"></link><script type="text/javascript" src="/js/lang0_0.js"></script><script type="text/javascript" src="/js/al/profile.js"></script><script type="text/javascript" src="/js/al/page.js"></script><script type="text/javascript" src="/js/al/notifier.js"></script>

<link rel="stylesheet" type="text/css" href="/css/al/common.css" />
<link type="text/css" rel="stylesheet" href="/css/al/im.css"></link><link type="text/css" rel="stylesheet" href="/css/al/wide_dd.css"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css"></link><link type="text/css" rel="stylesheet" href="/css/al/privacy.css"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css"></link><script type="text/javascript" src="/js/al/common.js"></script><script type="text/javascript" src="/js/lang0_0.js"></script><script type="text/javascript" src="/js/al/im.js"></script><script type="text/javascript" src="/js/al/page.js"></script><script type="text/javascript" src="/js/al/privacy.js"></script><script type="text/javascript" src="/js/al/notifier.js"></script>
 {literal}
<style type='text/css'>

/*KARCAS*/
div.table1 {
	width:100%;
	height:70%;
	overflow-x:hidden;
	overflow-y:scroll;
	padding:0;
}
div.table2 {
	width:100%;
	height:3%;
	overflow:hidden;
	text-align:center;
	color:red;
}
div.table3 {
	width:100%;
	height:27%;
	overflow:hidden;
}
/*MESSEGESS*/
div.table1 td {
	vertical-align:top;
	padding:5px;
}
div.table1 p {
	padding:0;
	margin:0;
	font-size:13px;
	color:#000;
}
/*MESSEGESS BLOCK*/
td.block1 {
	width:60px;
	text-align:center;
	vertical-align:top;
}
td.block1 img {
	margin-left:7px;
	margin-right:7px;
}
td.block1 p {
	text-align:left;
}
a.author {
	color: #4272db;
	text-decoration:none;
	font-weight:700;
}
td.block3_frends span {
	color: #b0d447;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:700;
}
td.block3 span {
	color: #8bcaf9;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:700;
}
div.author_time {
	margin-bottom:5px;
	margin-top:1px;
	float: right;
}
td.block3 {
	width:100%;
	color:#000;
	padding:0;
	marginВ­:0;
	background-color:#eef8ff;
	border:1px solid #c6e4fc;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 2px 2px 2px #eaeaea;
	-webkit-box-shadow: 2px 2px 2px #eaeaea;
	box-shadow: 2px 2px 2px #eaeaea;
}
td.block3_frends a {
	color:#f93;
}
td.block3_frends {
	width:100%;
	color:#000;
	padding:0;
	margin:0;
	background-color:#f5fbeb;
	border:1px solid #c2dd89;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 2px 2px 2px #eaeaea;
	-webkit-box-shadow: 2px 2px 2px #eaeaea;
	box-shadow: 2px 2px 2px #eaeaea;
}
/*MESSEGESS INPUT*/
td.block2 {
	width:60px;
	text-align:center;
	padding:5px;
	vertical-align:top;
}
td.button1 {
	text-align:left;
	font-style:italic;
	color:#999;
	padding-top:5px;
}
td.button2 {
	width:200px;
	padding-top:5px;
	text-align:right;
}
input.button {
	margin-right:-7px;
	font-size:14px;
}
div.table3 form {
	padding:0;
	margin:0;
	padding-right:22px;
}
textarea.input_text {
	width:100%;
	height:90px;
	overflow-x: hidden;
	overflow-y:scroll;
	background-color:#FFF;
	border:1px solid #e2e2e2;
	border-right:1px solid #cfcfcf;
	border-bottom:1px solid #cfcfcf;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	padding:2px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:13px;
}
hr{margin-top:3px;margin-bottom:4px;background-color:#fff;color:#bcc5d9;border:none;height:1px;padding:0}
</style>{/literal}
{literal}
<style type='text/css'>

/*KARCAS*/
div.table1 {
	width:100%;
	height:70%;
	overflow-x:hidden;
	overflow-y:scroll;
	padding:0;
}
div.table2 {
	width:100%;
	height:3%;
	overflow:hidden;
	text-align:center;
	color:red;
}
div.table3 {
	width:100%;
	height:27%;
	overflow:hidden;
}
/*MESSEGESS*/
div.table1 td {
	vertical-align:top;
	padding:5px;
}
div.table1 p {
	padding:0;
	margin:0;
	font-size:13px;
	color:#000;
}
/*MESSEGESS BLOCK*/
td.block1 {
	width:60px;
	text-align:center;
	vertical-align:top;
}
td.block1 img {
	margin-left:7px;
	margin-right:7px;
}
td.block1 p {
	text-align:left;
}
a.author {
	color: #4272db;
	text-decoration:none;
	font-weight:700;
}
td.block3_frends span {
	color: #b0d447;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:700;
}
td.block3 span {
	color: #8bcaf9;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:11px;
	font-weight:700;
}
div.author_time {
	margin-bottom:5px;
	margin-top:1px;
	float: right;
}
td.block3 {
	width:100%;
	color:#000;
	padding:0;
	marginВ­:0;
	background-color:#eef8ff;
	border:1px solid #c6e4fc;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 2px 2px 2px #eaeaea;
	-webkit-box-shadow: 2px 2px 2px #eaeaea;
	box-shadow: 2px 2px 2px #eaeaea;
}
td.block3_frends a {
	color:#f93;
}
td.block3_frends {
	width:100%;
	color:#000;
	padding:0;
	margin:0;
	background-color:#f5fbeb;
	border:1px solid #c2dd89;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-moz-box-shadow: 2px 2px 2px #eaeaea;
	-webkit-box-shadow: 2px 2px 2px #eaeaea;
	box-shadow: 2px 2px 2px #eaeaea;
}
/*MESSEGESS INPUT*/
td.block2 {
	width:60px;
	text-align:center;
	padding:5px;
	vertical-align:top;
}
td.button1 {
	text-align:left;
	font-style:italic;
	color:#999;
	padding-top:5px;
}
td.button2 {
	width:200px;
	padding-top:5px;
	text-align:right;
}
input.button {
	margin-right:-7px;
	font-size:14px;
}
div.table3 form {
	padding:0;
	margin:0;
	padding-right:22px;
}
textarea.input_text {
	width:100%;
	height:90px;
	overflow-x: hidden;
	overflow-y:scroll;
	background-color:#FFF;
	border:1px solid #e2e2e2;
	border-right:1px solid #cfcfcf;
	border-bottom:1px solid #cfcfcf;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-top-left-radius: 3px;
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	padding:2px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:13px;
}
hr{margin-top:3px;margin-bottom:4px;background-color:#fff;color:#bcc5d9;border:none;height:1px;padding:0}
</style>
<script type="text/javascript" src="./include/js/mootools12-min.js"></script>
<script type="text/javascript" src="./include/js/core.js"></script>
<script type='text/javascript'>
<!--
  window.addEvent('domready', function() { textarea_autogrow('reply_body'); window.gum_move_bottom();});
//-->
</script>
<script type="text/javascript">
Request.HTML.implement({

    processHTML: function(text){
        var match = text.match(/<body[^>]*>([\s\S]*?)<\/body>/i);
        text = (match) ? match[1] : text;

        var container = new Element('div');

        return $try(function(){
        var root = '<root>' + text + '</root>', doc;
            doc = new DOMParser().parseFromString(root, 'text/html');
            root = doc.getElementsByTagName('root')[0];
            for (var i = 0, k = root.childNodes.length; i < k; i++){
                var child = Element.clone(root.childNodes[i], true, true);
                if (child) container.grab(child);
            }
            return container;
        }) || container.set('html', text);
    }

});
     function gum_move_bottom()
     {
			var div = document.getElementById("result");
			var y = (div.scrollHeight > div.offsetHeight) ? div.scrollHeight : div.offsetHeight;
			div.scrollTop = y;
     }


     function gum_chatbox_update() {
	   var req = new Request.HTML({
          method: 'get',
	      url:"user_messages_chat.php?pmconvo_id={/literal}{$pmconvo_info.pmconvo_id}{literal}&task=ajax",
	      onComplete: function(response) {
	      $('result').set('text','');
	      $('result').adopt(response);
			gum_move_bottom();
	      }
		}).send();
     }


     gum_chatbox_update.periodical(5000);
     </script>
{/literal}
</head>


<body>
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
       <b class="tab_word">Просмотр диалога<span id="im_unread_count"></span></b>
      </a>
    </li>
</div>
</div>
<div id="result" class='table1'>
  <table cellpadding='0' cellspacing='5' border='0' width='100%'>
    {include file='user_messages_chat_loop.tpl'}
  </table>

</div>
<div class='table2'>
  <!-- <b> {if $collaborators|@count == 1}{lang_print id=802}{else}{lang_print id=803}{/if}</b> -->
  <a name='reply'></a>
  <div id='reply_error' style='display: none;'>{lang_print id=796}</div>
  {if $blockerror}
  <div id='reply_error2' style='display: {$blockerror};'>{lang_print id=1321}</div>
  {/if} </div>


<form action='user_messages_chat.php#bottom' method='POST' onSubmit="{literal}if(this.reply.value.replace(/ /g, '') == '') { $('reply_error').style.display='block'; return false; } else { return true; }{/literal}">
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
        <td id="im_user_holder"><img src="{$user->user_photo("./images/camera_c.gif", TRUE)}" class="im_user_holder"/></td>
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
            <div class="fl_r" id="im_add_media"><a class="link" id="im_add_media_link"></a></div>
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
        </form></td>
    </tr>

</div>
</body>
</html>