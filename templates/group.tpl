{include file='header_top.tpl'}
{include file='header_shapka3.tpl'}
{include file='header_menu.tpl'}


{* INLUCDE MAIN STYLESHEET *}



<script type="text/javascript" src="./include/js/mootools12.js"></script>

<script type="text/javascript" src="./include/js/core-min.js"></script>


<link type="text/css" rel="stylesheet" href="/css/al/wk.css?9"></link><link type="text/css" rel="stylesheet" href="/css/al/groups.css?52"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css?201"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?48"></link>

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


  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>

<div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="">
            <h1 id="title">Открытая группа</h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content"><div id="group">

  <div class="narrow_column fl_r" id="group_narrow">
    <div id="group_avatar" class="group_avatar">
  <img src="{$group->group_photo('./images/nophoto_group.png')}" />
</div><div id="page_actions" class="page_actions" style="">
 {* SHOW EDIT GROUP BUTTON IF ALLOWED *}
  {if $group->user_rank>=2}
      <tr>
        <td class='profile_menu1'>
          <a href="user_group_edit.php?group_id={$group->group_info.group_id}">{lang_print id=2000159}</a>
        </td>
      </tr>
  {/if}

  {* SHOW JOIN GROUP BUTTON IF NOT ALREADY A MEMBER *}
  {if $group->user_rank == -1 && $user->user_exists == 1 && (int)$user->level_info.level_group_allow & 2}
    {if $group->groupmember_info.groupmember_id != 0 && $group->groupmember_info.groupmember_approved != 1}
      <tr>
        <td class='profile_menu1'>
          <div class='nolink'>{lang_print id=2000223}</div>
        </td>
      </tr>
    {elseif $group->groupmember_info.groupmember_id != 0 && $group->groupmember_info.groupmember_approved == 1}
      <tr>
        <td class='profile_menu1'>
          <a href="javascript:TB_show('{lang_print id=2000203}', 'user_group_manage.php?group_id={$group->group_info.group_id}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000203}</a>
        </td>
      </tr>
    {else}
      <tr>
        <td class='profile_menu1'>
          <a href="javascript:TB_show('{lang_print id=2000165}', 'user_group_manage.php?group_id={$group->group_info.group_id}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000165}</a>
        </td>
      </tr>
    {/if}
  {/if}

  {* SHOW LEAVE GROUP BUTTON IF ALREADY A MEMBER *}
  {if $group->user_rank != -1}
    <tr>
      <td class='profile_menu1'>
        <a href="javascript:TB_show('{lang_print id=2000160}', 'user_group_manage.php?group_id={$group->group_info.group_id}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000160}</a></td></tr>
  {/if}

  {* SHOW SUBSCRIBE TO THIS GROUP ITEM *}
  {if $group->user_rank != -1}
    <tr><td class='profile_menu1'>
      <div id='is_subscribed'{if !$is_subscribed} style='display: none;'{/if}><a href="javascript:TB_show('{lang_print id=2000225}', 'user_group_subscribe.php?group_id={$group->group_info.group_id}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000225}</a></div>
      <div id='is_unsubscribed'{if $is_subscribed} style='display: none;'{/if}><a href="javascript:TB_show('{lang_print id=2000224}', 'user_group_subscribe.php?group_id={$group->group_info.group_id}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000224}</a></div>
    </td></tr>
  {/if}



  {* SHOW REPORT THIS GROUP MENU ITEM *}
  <tr>
  <td class='profile_menu1'><a href="javascript:TB_show('{lang_print id=2000226}', 'user_report.php?return_url={$url->url_current()|escape:url}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=2000226}</a></td>
  </tr>
</div>

<div class="module clear people_module" id="group_followers">
  <a class="module_header">
  <div class="header_top clear_fix">
    <span class="right_link fl_r" ></span>
    Участники
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"></span>
    {$total_members} человек
  </div>
</a>
  <div class="module_body clear_fix">
   <div class="people_row">
{section name=member_loop loop=$members} <div class="fl_l people_cell">
  <a class="ava" href="/id{$members[member_loop].member->user_info.user_id}" onclick="return nav.go(this, event,  {literal}{cl_id: 0} {/literal})">
    <div class="avasmall2">
<div class="avasmall"><img src="{$members[member_loop].member->user_photo('./images/camera_c.gif')}"/></div></div>
  </a>
  <div class="name_field">
    <a href="/id{$members[member_loop].member->user_info.user_id}" onclick="return nav.go(this, event)">
      {$members[member_loop].member->user_info.user_fname}<br />
      <small></small>
    </a>
  </div>
</div>{/section}
  </div>
</div>



<div id="group_narrow_topics"></div><div class="module clear page_list_module" id="group_leaders">
  <a class="module_header">
  <div class="header_top clear_fix">

    Администрация
  </div>

</a>
  <div class="module_body clear_fix">
          {section name=officer_loop loop=$officers}<div class="line_cell clear_fix">
  <div class="fl_l thumb">
    <a href='id{$officers[officer_loop].member->user_info.user_id}'>
	<img src='{$officers[officer_loop].member->user_photo('./images/nophoto.gif')}'>
</a>
  </div>
  <div class="fl_l desc_info">
    <div class="people_name"> <a href='id{$officers[officer_loop].member->user_info.user_id}'>{$officers[officer_loop].member->user_displayname}</a></div>
    <div class="people_extra">  {if $officers[officer_loop].groupmember_title != "" && $group->groupowner_level_info.level_group_titles == 1}
           {$officers[officer_loop].groupmember_title}
          {/if}</div>
  </div>
</div>{/section}<div class="line_cell clear_fix">

</div>
  </div>
</div>
  </div>  </div>
  <div class="wide_column fl_l" id="group_wide">
    <h4 class="simple">
  <div class="top_right_link fl_r"></div>
  <div class="fl_l">
    <div class="top_header">{$group->group_info.group_title}</div>
  </div>
</h4>
<div class="group_info"><div class="clear_fix ">
  <div class="label fl_l">Описание:</div>
  <div class="labeled fl_l">{$group->group_info.group_desc}</div>
</div><div class="clear_fix ">

</div></div><div class="group_wiki_wrap">

</div>


<div id="group_wide_topics"><div class="module clear topics_module" id="group_topics">
  <a class="module_header">
  <div class="header_top clear_fix">
    Обсуждения
  </div>
  <div class="p_header_bottom">
    <span class="fl_r"><a class="fl_r" href='group_discussion_post.php?group_id={$group->group_info.group_id}'>Новая тема</a></span>
   {if $total_topics != 0 } В группе {$total_topics} темы{else} В группе нет тем.{/if}
  </div>
</a>
{if $total_topics != 0 }
  <div class="module_body clear_fix">
   {section name=topic_loop loop=$topics} <a class="clear_fix topic_row " href="{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topics[topic_loop].grouptopic_id)}">
  <div class="info fl_l">
    <div><span class="topic_title"> {$topics[topic_loop].grouptopic_subject}</span></div>
    <small>
      Создал <span class="topic_inner_link">{$topics[topic_loop].creator->user_displayname}</span><span class="topic_date"></span>
      <span class="topic_to_last" onmouseover="this.parentNode.parentNode.parentNode.href='{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topics[topic_loop].grouptopic_id)}'" onmouseout="this.parentNode.parentNode.parentNode.href='{$url->url_create("group_discussion", $smarty.const.NULL, $group->group_info.group_id, $topics[topic_loop].grouptopic_id)}'">&rarr;</span>
    </small>
  </div>
</a>{/section}
  </div>
  {else}
  <br>
  <div class="module_body clear_fix"><center>
     <div class="center" >
    <div class="flexBox clearFix photos">
     <div class='fallback'>В группе ещё нет тем. <a href="group_discussion_post.php?group_id={$group->group_info.group_id}">Создать тему...</a></div>
    </div>
   </div></div>
   <br>
   {/if}
</div></div>














</div>
  </div>
  <br class="clear" />
</div></div>
  </div>

    </div>


{include file='footer.tpl'}

