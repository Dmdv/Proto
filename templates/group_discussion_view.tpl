
{include file='header_top.tpl'}
{include file='header_shapka3.tpl'}
{include file='header_menu.tpl'}
<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?320" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/board.css?32"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/page.css?353"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link>


<script type="text/javascript" src="./include/js/mootools12.js"></script>

<script type="text/javascript" src="./include/js/core-min.js"></script>
{literal}
<style>
#TB_window {
	font: 12px Arial, Helvetica, sans-serif;
	color: #333333;
}

#TB_secondLine {
	font: 10px Arial, Helvetica, sans-serif;
	color:#666666;
}

#TB_window a:link { color: #336699; text-decoration: none; }
#TB_window a:visited { color: #336699; text-decoration: none; }
#TB_window a:hover { color: #3399FF; text-decoration: underline; }
#TB_window a:active { color: #3399FF; text-decoration: underline; }
#TB_window a:focus { color: #336699; text-decoration: none; }

#TB_overlay {
	position: absolute;
	z-index:100;
	top: 0px;
	left: 0px;
}

#TB_window {
	position: absolute;
	background: #ffffff;
	z-index: 102;
	color:#000000;
	border: 10px solid #727272;
	text-align:left;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
}

#TB_window img {
/*
	display:block;
	margin: 15px 0 0 15px;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #666;
	border-left: 1px solid #666;
*/
}

#TB_caption{
	height:25px;
	padding:7px 30px 10px 25px;
	float:left;
}

#TB_closeWindow{
	height:25px;
	padding:11px 25px 10px 0;
	float:right;
}

#TB_closeAjaxWindow{
	padding:5px 10px 7px 0;
	margin-bottom:1px;
	text-align:right;
	float:right;
}

#TB_ajaxWindowTitle{
	float:left;
	padding:7px 0 5px 10px;
	margin-bottom:1px;
}

#TB_title{
	background:#3B5998;
	height:27px;
	font-weight: bold;
	border-bottom: 1px solid #BBBBBB;
	font-size: 12px;
	font-family: tahoma, arial, serif;
        color: #ffffff;
}

#TB_ajaxContent{
	clear:both;
	padding:2px 15px 15px 15px;
	overflow:auto;
	text-align:left;
	line-height:1.4em;
}

#TB_ajaxContent p{
	padding:5px 0px 5px 0px;
}

#TB_load{
	position: absolute;
	display:none;
	height:100px;
	width:100px;
	z-index:101;
}

#TB_HideSelect{
	z-index:99;
	position:absolute;
	top: 0;
	left: 0;
	background-color:#fff;
	border:none;
}

#TB_iframeContent{
	clear:both;
	border:none;
	margin-bottom:-1px;
	margin-top:1px;
}
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

{* JAVASCRIPT FOR GOING TO SPECIFIED POST *}
{literal}
<script type="text/javascript">
<!--
window.addEvent('domready', function(){
  if($('post_{/literal}{$grouppost_id}{literal}')) {
    location.hash = 'post_{/literal}{$grouppost_id}{literal}';
  }
});
//-->
</script>
{/literal}


{* JAVASCRIPT FOR CONFIRMING TOPIC EDITING/DELETION *}
{if $group->user_rank == 2 || $group->user_rank == 1}
  {literal}
  <script type="text/javascript">
  <!--
    function deleteTopic() {
      window.location = '{/literal}{$url->url_create("group", $smarty.const.NULL, $group->group_info.group_id)}{literal}&v=discussions&task=topic_delete&grouptopic_id={/literal}{$topic_info.grouptopic_id}{literal}';
    }
  //-->
  </script>
  {/literal}

  {* HIDDEN DIV TO DISPLAY CONFIRMATION MESSAGE *}
  <div style='display: none;' id='confirmedit'>
    <form action='{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topic_info.grouptopic_id)}' method='post' target='_parent' onSubmit="{literal}if(this.topic_subject.value == '') { alert('{/literal}{lang_print id=2000299}{literal}'); return false; } else { return true; }{/literal}">
    <div style='margin-top: 10px; margin-bottom: 10px;'>{lang_print id=2000319}</div>
    {lang_print id=2000300}<br>
    <input type='text' name='topic_subject' id='topic_subject' value='{$topic_info.grouptopic_subject|escape:quotes}' maxlength='50' size='40'>
    <br><br>
    <input type='submit' class='button' value='{lang_print id=2000317}' />
    <input type='button' class='button' value='{lang_print id=2000266}' onClick='parent.TB_remove();parent.deleteTopic();' />
    <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();' />
    <input type='hidden' name='task' value='topic_edit' />
    </form>
  </div>
{/if}

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
    <div id="content"><div class="tabs t_bar clear_fix">
  <ul class="t0">
    <li class="active_link bt_unshown">
      <a>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Просмотр темы</b>
      </a>
    </li>
	    <li class="">
      <a href='club{$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Вернуться к группе</b>
      </a>
    </li>
  </ul>
</div>
<div class="bt_header">
  <span id="bt_title">{$topic_info.grouptopic_subject}</span>
</div>


{* DISPLAY PAGINATION MENU IF APPLICABLE *}
{if $maxpage > 1}
  <td align='right'>
  {if $p != 1}<a href='{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topic_info.grouptopic_id)}&p={math equation="p-1" p=$p}'>&#171; {lang_print id=182}</a>{else}<font class='disabled'>&#171; {lang_print id=182}</font>{/if}
  {if $p_start == $p_end}
    &nbsp;|&nbsp; {lang_sprintf id=184 1=$p_start 2=$total_posts} &nbsp;|&nbsp;
  {else}
    &nbsp;|&nbsp; {lang_sprintf id=185 1=$p_start 2=$p_end 3=$total_posts} &nbsp;|&nbsp;
  {/if}
  {if $p != $maxpage}<a href='{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topic_info.grouptopic_id)}&p={math equation="p+1" p=$p}'>{lang_print id=183} &#187;</a>{else}<font class='disabled'>{lang_print id=183} &#187;</font>{/if}
  </td>
{/if}
</tr>
</table>


{* LOOP THROUGH GROUP POSTS *}
<div id="bt_rows">
  
  {section name=post_loop loop=$posts}
  <div id="post-26808786_2" class="bp_post"><table class="bp_table" cellspacing="0" cellpadding="0"><tr>
    <td class="bp_thumb_td">
    <a class="bp_thumb" href='{$url->url_create("profile", $posts[post_loop].grouppost_author->user_info.user_username)}'><div class="avasmall2">
<div class="avasmall"><img src='{$posts[post_loop].grouppost_author->user_photo("./images/nophoto.gif")}' /></div></div></a>
  </td>
  <td class="bp_info">
    <div class="bp_author_wrap"><a class="bp_author" href='{$url->url_create("profile", $posts[post_loop].grouppost_author->user_info.user_username)}'>{$posts[post_loop].grouppost_author->user_displayname}</a></div>
    <div id="bp_data-26808786_2"><div class="bp_text">{$posts[post_loop].grouppost_body_formatted}</div></div>
    <div class="bp_bottom clear_fix">
      <div class="bp_edited_by"></div>
      <div class="fl_l"><a class="bp_date"> {capture assign="post_time"}{$datetime->cdate($setting.setting_timeformat, $datetime->timezone($posts[post_loop].grouppost_date, $global_timezone))}{/capture}
          {capture assign="post_date"}{$datetime->cdate($setting.setting_dateformat, $datetime->timezone($posts[post_loop].grouppost_date, $global_timezone))}{/capture}
          {lang_sprintf id=2000307 1=$post_time 2=$post_date} </a></div>
      <div class="fl_l progress bp_progress"></div>
    </div>
  </td>
</tr></table></div>
  {/section}

</div>
<a id="bt_load_more" class="pg_more_link" onclick="Pagination.showMore()" style="display: none"><span>Показать ещё сообщения</span>
  <div id="bt_more_progress" class="pg_more_progress progress"></div>
</a>
<div id="ba_post_wrap"><div id="ba_post">
  <table cellspacing="0" cellpadding="0" class="ba_table"><tr>
    <td class="ba_thumb_td">
      
    </td>
    <td class="ba_info">
	<form action='group_discussion_post.php' method='post' target='ajaxframe'>
      <textarea name='grouppost_body'
        id="ba_text"
        placeholder="Комментировать.."
        onkeyup="checkTextLength(4096, this, 'ba_warn')"
        onkeypress="onCtrlEnter(event, Board.sendPost)"
      ></textarea>
      <div id="ba_media_preview" class="clear_fix media_preview"></div>
      <div id="ba_warn"></div>
      <div class="ba_buttons">
        <div id="ba_add_media" class="fl_r"><span class="add_media_lnk"></span></div>
        <div class="button_blue fl_l">
          <button>Отправить</button>
        </div>
		      <input type='hidden' name='task' value='reply_do'>
      <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>
      <input type='hidden' name='grouptopic_id' value='{$topic_info.grouptopic_id}'>
      </form>
        <div id="ba_cancel" class="button_cancel fl_l">
          <div class="button" onclick="Board.cancelAddPost(true)">Отмена</div>
        </div>
        <div id="ba_progress" class="progress fl_l"></div>
      </div>
    </td>
  </tr></table>
</div></div></div>
  </div>
</div></div>
    </div>

 



{* JAVASCRIPT FOR CONFIRMING POST DELETION *}
{literal}
<script type="text/javascript">
<!--
  var post_id = 0;
  function confirmDelete(id)
  {
    post_id = id;
    TB_show('{/literal}{lang_print id=2000309}{literal}', '#TB_inline?height=150&width=300&inlineId=confirmdelete', '', '../images/trans.gif');
  }

  function deletePost()
  {
    window.location = {/literal}'{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topic_info.grouptopic_id)}&p={$p}&task=post_delete&grouppost_id='+post_id{literal};
  }

  window.addEvent('domready', function()
  {
    var originalHeight = textarea_autogrow('group_discussion_reply');
  });

  var isEditing = false;
  function editPost(id)
  {
    if( isEditing ) return false;
    isEditing = true;

    var postElement = $('post_div_' + id);

    var height = postElement.offsetHeight + 10;
    var postText = $('post_body_'+id).innerHTML.replace(/<br>/gi, '\r\n').replace(/>/gi, '&gt;');

    var innerHTML = '';
    innerHTML += "<form action='group_discussion_view.php' method='post' target='ajaxframe' name='editPostForm' id='editPostForm'>";
    innerHTML += "<textarea name='grouppost_body' id='post_edit_" + id + "' style='height: " + height +" px; width: 100%;'>" + postText + "</textarea>";
    innerHTML += "<input type='hidden' name='task' value='post_edit'>";
    innerHTML += "<input type='hidden' name='grouppost_id' value='" + id + "'>";
    innerHTML += "<input type='hidden' name='group_id' value='{/literal}{$group->group_info.group_id}{literal}'>";
    innerHTML += "<input type='hidden' name='grouptopic_id' value='{/literal}{$topic_info.grouptopic_id}{literal}'>";
    innerHTML += "</form>";


    // Inject
    postElement.innerHTML = innerHTML;
    textarea_autogrow('post_edit_' + id);
    $('post_edit_' + id).focus();


    // Add events
    $('post_edit_' + id).addEvent('blur', function()
    {
      document.editPostForm.submit();
      isEditing = false;
    });

    $('editPostForm').addEvent('submit', function()
    {
      if($('post_edit_'+id).value == '')
      {
        alert('{/literal}{lang_print id=2000298}{literal}');
        return false;
      }
      else
      {
        return true;
      }
    });
  }


  function quote(id, user)
  {
    $('group_discussion_reply').value += '[quote='+user+']' + "\n" + $('post_body_'+id).innerHTML.replace(/<br>/g, "\n") + "\n" + '[/quote]' + "\n";
    location.hash = 'reply';
    $('group_discussion_reply').focus();
  }
//-->
</script>
{/literal}


{include file='footer.tpl'}