{include file='header_top.tpl'}
{include file='header_shapka3.tpl'}
{include file='header_menu.tpl'}
<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?320" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/board.css?32"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/page.css?353"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9381_0.js"></script><script type="text/javascript" src="http://st3.userapi.com/js/al/common.js?850"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>

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
        <b class="tab_word">Новая тема</b>
      </a>
    </li>
  </ul>
</div>


{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
<table cellpadding='0' cellspacing='0'>
  <tr>
    <td class='error'>
      <img src='./images/error.gif' border='0' class='icon' />
      {lang_print id=$is_error}
    </td>
  </tr>
</table>
<br />
{/if}

<form action='group_discussion_post.php' method='post'>

<div class="bnt_wrap">
  <div class="bnt_header">Заголовок</div>
<input type='text' class='text' name='topic_subject' value='{$topic_subject}' id="bnt_title" />

<div class="bnt_header">Текст</div>
  <textarea name='topic_body' id="bnt_text">{$topic_body}</textarea>
 <div id="bnt_media_preview" class="clear_fix media_preview"></div>
  <div id="bnt_warn"></div>
  <div class="clear_fix">
<div class="fl_r" id="bnt_attach"><span class="add_media_lnk"></span></div>
    <div class="button_blue fl_l">
      <button id="bnt_subm">Создать тему</button>
    </div>
	    <input type='hidden' name='task' value='topic_create' />
    <input type='hidden' name='group_id' value='{$group->group_info.group_id}' />
    <div class="button_cancel fl_l" id="bnt_cancel_poll">
      <div class="button" onclick="Board.cancelPoll()">Удалить опрос</div>
    </div>
  </div>
</div></div>
  </div>
</div></div>
    </div>

    </form>


{include file='footer.tpl'}