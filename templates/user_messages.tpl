{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link rel="stylesheet" type="text/css" href="/css/al/common.css?319" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/mail.css?58"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?30"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9370_0.js"></script><script type="text/javascript" src="http://st2.userapi.com/js/al/common.js?849"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>

{literal}
<style>
.avasmall112 { border-radius: 2px;width: 50px; height: 50px;overflow: hidden; background:#F1F1F1;}
.avasmall11 img { max-width: 35px; height: auto; background:#F1F1F1;}

.avasmall2 { border-radius: 2px;width: 50px; height: 50px;overflow: hidden; background:#F1F1F1;}
.avasmall img { max-width: 60px; height: auto; background:#F1F1F1;}

.avasmall100 { border-radius: 0px;width: 100px; height: 100px;overflow: hidden; background:#F1F1F1;}
.avasmalll100 img { max-width: 120px; height: auto; background:#F1F1F1;}

.avahead { border: 1px solid #31aa42;border-radius: 1px;width: 27px; height: 27px;overflow: hidden; background:#F1F1F1;}
.avaheads img { max-width: 27px; height: auto; background:#F1F1F1;}


tr.messages_unread {
	background: none repeat scroll 0 0 #F5F9FB;

}

tr.messages_read {
	background: none
}

#mail_rows_t td {
    border-bottom: 1px solid #EEEEEE;
    cursor: pointer;
    padding: 10px 0;
}
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
    <div id="content"><div id="main_mail">
  <div id="mail_top_msg_wrap"></div>
  <div class="tabs t_bar clear_fix">
  <ul id="mail_tabs" class="t0">
    <li id="tab_inbox" class="active_link" style="">
  <a href="user_messages.php"><b class="tl1"><b></b></b><b class="tl2"></b>
   <b class="tab_word">Полученные</b>
  </a>
</li><li id="tab_outbox" class="" style="">
  <a href="user_messages_outbox.php"><b class="tl1"><b></b></b><b class="tl2"></b>
   <b class="tab_word">Отправленные</b>
  </a>
</li>
  </ul>
</div>

<form action='user_messages.php' method='post' name='messageform'>
{if $total_pms != 0}
<div id="mail_content"><div id="mail_bar" class="clear_fix bar">
  <div id="mail_bar_search" class="fl_r">
    <div class="button_blue fl_l">
        <button type='submit' id='fallback_submit'>Удалить отмеченные</button></div>
    <input type='hidden' name='task' value='deleteselected'>
    <input type='hidden' name='p' value='{$p}'>
  </div>
  <div id="mail_bar_select" class="fl_l" style="">
   <span>Выделить:&nbsp;</span> <a href='javascript:doCheckAll()'>все</a>
  </div>

</div>
<div class="summary_wrap clear_fix">
  <div id="mail_summary_progress" class="fl_r"><img src="/images/upload.gif" /></div>
  <div id="summary" class="summary">
    <span id="mail_summary">{if $total_pms == 0}Ваша папка "Полученые" пуста.{else}Вы получили {$total_pms} сообщений{/if}</span>
  </div>
</div>
  {/if}



{* SHOW SUCCESS MESSAGE *}
{if $justsent == 1}
<br>
  <div class="message">Сообщение отправлено.</div>
{/if}






  			{if $total_pms == 0}<div class="summary_wrap clear_fix">
  <div id="mail_summary_progress" class="fl_r"><img src="/images/upload.gif" /></div>
  <div id="summary" class="summary">
    <span id="mail_summary">Ваша папка "Полученые" пуста.</span>
  </div>
</div>{/if}


 		</div>


{* JAVASCRIPT FOR CHECK ALL MESSAGES FEATURE *}
{literal}
  <script language='JavaScript'>
  <!---
  var checkboxcount = 1;
  function doCheckAll() {
    if(checkboxcount == 0) {
      with (document.messageform) {
      for (var i=0; i < elements.length; i++) {
      if (elements[i].type == 'checkbox') {
      elements[i].checked = false;
      }}
      checkboxcount = checkboxcount + 1;
      }
    } else
      with (document.messageform) {
      for (var i=0; i < elements.length; i++) {
      if (elements[i].type == 'checkbox') {
      elements[i].checked = true;
      }}
      checkboxcount = checkboxcount - 1;
      }
  }
  // -->
  </script>
{/literal}






{* CHECK IF THERE ARE NO MESSAGES IN INBOX *}
{if $total_pms == 0}

		<div id="nomail">Вы не получили ни одного сообщения.</div>
		</div>
  </div>
  </div>

  </div>
  <div id="boxHolder"></div>

{else}
<div id="mail_rows">
<table id="mail_rows_t" cellpadding="0" cellspacing="0">
  {* LIST INBOX MESSAGES *}
  {section name=pm_loop loop=$pms}

    {* IF MESSAGE IS NEW, HIGHLIGHT ROW *}
    {if $pms[pm_loop].pm_read === FALSE}
      {assign var='row_class' value='messages_unread'}
    {else}
      {assign var='row_class' value='messages_read'}
    {/if}
    <tr class="{$row_class}" id="mess15983" read="0">
  <td style="padding:0px 6px;"><input type='checkbox' name='delete_convos[]' value='{$pms[pm_loop].pmconvo_id}'> </td>
  <td class="mail_photo">
    <div><a href='id{$pms[pm_loop].pm_user->user_info.user_id}'><div class="avasmall2">
<div class="avasmall"><img src='{$pms[pm_loop].pm_user->user_photo('./images/camera_c.gif', TRUE)}'/></div>
</div></a></div>
  </td>
  <td class="mail_from">
    <div class="name wrapped"><a href='{$pms[pm_loop].pm_user->user_info.user_id}'>{$pms[pm_loop].pm_user->user_displayname}</a></div>

    <div class="date">{$datetime->cdate("`$setting.setting_timeformat` `$setting.setting_dateformat`", $datetime->timezone($pms[pm_loop].pm_date, $global_timezone))}</div>
  </td>
  <td class="mail_contents" id="mb15983">
    <div class="mail_topic"><a href='im.php?pmconvo_id={$pms[pm_loop].pmconvo_id}#bottom'>{$pms[pm_loop].pm_subject|truncate:70}</a></div>
    <div class="mail_body"><a href='im.php?pmconvo_id={$pms[pm_loop].pmconvo_id}#bottom'>{$pms[pm_loop].pm_body|truncate:70|choptext:60:"<br>"}</a></div>
  </td>
  <td class="messageActions" id="ma431351693"><span></span><div>
      <a href='im.php?pmconvo_id={$pms[pm_loop].pmconvo_id}#bottom'>Ответить</a><br /><br />
      <a href='user_messages_view.php?pmconvo_id={$pms[pm_loop].pmconvo_id}&task=delete'>Удалить</a></div>
</tr>
  {/section}
  </table>
   <div class="bar clearfix footerBar">
 <span id="pagesBottom">
 	{* DISPLAY PAGINATION MENU IF APPLICABLE *}

{if $maxpage > 1}
<br>
<center>
  <div class='center'>
  {if $p != 1}<a href='user_messages.php?p={math equation='p-1' p=$p}'>&#171; Предыдущая</a>{else}&#171; Первая{/if}
  {if $p_start == $p_end}
    &nbsp;|&nbsp; <b> {$p_start} {$user_messages12} </b> &nbsp;|&nbsp;
  {else}
    &nbsp;|&nbsp; {$user_messages11} {$p_start} из {$total_pms} &nbsp;|&nbsp;
  {/if}
  {if $p != $maxpage}<a href='user_messages.php?p={math equation='p+1' p=$p}'>Слудующая &#187;</a>{else}Последняя &#187;{/if}
  </div>
  <br>
{/if}

 	<div id="progressBottom"></div>
 </span>
</div>

  </form>
</div></div></div></div></div></div>
{/if}



  <div id="boxHolder"></div>

  {include file='footer.tpl'}