{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/page.css?311"></link><link type="text/css" rel="stylesheet" href="/css/al/wall.css?52"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?55"></link><script type="text/javascript" src="/js/loader_nav8529_0.js"></script><script type="text/javascript" src="/js/al/common.js?790"></script><script type="text/javascript" src="/js/lang0_0.js?6160"></script>
  <script type="text/javascript">domStarted();</script><body onresize="onBodyResize()" class="is_rtl font_default">
  <div id="system_msg" class="fixed"></div>
  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

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
    <div id="content"><div class="full_wall_tabs t_bar clear_fix">
  <div class="fl_r progress" id="full_wall_progress"></div>
  <ul id="full_wall_filters" class="t0"><li id="wall_all_filter" class="">
  <a href="/wall40297585" onclick="return checkEvent(event)" onmousedown="return FullWall.go(this, event)">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word">Все записи</b>
  </a>
</li><li id="wall_own_filter" class="active_link">
  <a href="/wall40297585?own=1" onclick="return checkEvent(event)" onmousedown="return FullWall.go(this, event)">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word">Записи Ярослава</b>
  </a>
</li><li id="fw_search_toggler" class="t_r"><a href="/wall40297585?search=1">Перейти к поиску</a></li></ul>
</div>
<div class="big_wall_post"><div class="wall_module"><div id="submit_post_box" class="clear_fix" onclick="return cancelEvent(event)">
  <div class="clear_fix">
    <textarea
      id="post_field"
      class="fl_l"
      onkeyup="wall.postChanged(this.value)"
      onkeydown="onCtrlEnter(event, wall.sendPost)"
      onfocus="wall.showEditPost()"
      placeholder="Что у Вас нового?"
    ></textarea>
  </div>
  <div id="post_warn"></div>
  <div id="post_note_name_wrap"><input id="post_note_name" type="text" class="text" value="" placeholder="Введите название заметки" /></div>
  <div id="submit_post" onclick="event.cancelBubble=true;">
    <div id="media_preview" class="clear_fix media_preview"></div>
    <div class="button_blue fl_l"><button id="send_post" onclick="wall.sendPost()">Отправить</button></div>

    <div class="progress fl_r" id="page_post_progress"></div>
  </div>
</div></div></div>
<div class="summary_wrap" id="fw_summary_wrap"><div class="pg_pages fl_r" id="fw_pages"><a class="pg_lnk_sel fl_l" href="/wall40297585?own=1&offset=0"><div class="pg_in">1</div></a><a class="pg_lnk fl_l" href="/wall40297585?own=1&offset=20" onclick="return nav.go(this, event)"><div class="pg_in">2</div></a><a class="pg_lnk fl_l" href="/wall40297585?own=1&offset=40" onclick="return nav.go(this, event)"><div class="pg_in">3</div></a><a class="pg_lnk fl_l" href="/wall40297585?own=1&offset=220" onclick="return nav.go(this, event)"><div class="pg_in">&raquo;</div></a></div>
<div class="summary" id="fw_summary">Всего 232 записи</div></div>
<div class="wall_wrap clear_fix">
  <div class="big_wall wide_wall_module">
    <div class="wall_module">
      <div id="page_wall_posts">{section name=comment_loop loop=$comments} 

<div id="post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="post all" onmouseover="wall.postOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')">

  <div class="post_table">
 <div class="post_image">
       <a class="post_image" href="/id{$comments[comment_loop].comment_author->user_info.user_id}"><img src="{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif', 1)}" width="50" height="50"/></a>
     {if $comments[comment_loop].is_online == 1}   <span class="online">Online</span>{/if}
</div>

  
    <div class="post_info">
     <div class="fl_r delete_post_wrap">
  <div class="delete_post">
    <div id="delete_post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="wall.deletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '40547f4ca2dc732878','{$owner->user_info.user_id}','{$comments[comment_loop].comment_author->user_info.user_id}');" onmouseover="wall.activeDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '  {if $owner->user_info.user_id == $user->user_info.user_id OR $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}Удалить запись{else}Это спам{/if}')" onmouseout="wall.deactiveDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"></div>
  </div>
</div>   <div class="text">
    <a class="author" href="/id{$comments[comment_loop].comment_author->user_info.user_id}" onclick="return nav.go(this, event)">{$comments[comment_loop].comment_author->user_info.user_fname} {$comments[comment_loop].comment_author->user_info.user_lname}</a> 
    <div class="wall_post_text">{$comments[comment_loop].comment_body}</div> 

       </div>
 



{if $comments[comment_loop].my_like != 0}
   <div class="post_like_wrap fl_r" onmouseover="wall.postLikeOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postLikeOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onclick="wall.like('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$user->user_info.user_id}'); event.cancelBubble = true;">
  <div class="post_like">
  <span class="post_like_link fl_l" id="like_link{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Мне нравится</span>
    <i class="post_like_icon my_like fl_l" id="like_icon{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></i>
    <span class="post_like_count fl_l" id="like_count{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">{if $comments[comment_loop].like_total != 0}{$comments[comment_loop].like_total}{/if}</span>
  </div>
</div>

{else}
  <div class="post_like_wrap fl_r" onmouseover="wall.postLikeOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postLikeOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onclick="wall.like('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$user->user_info.user_id}'); event.cancelBubble = true;">
  <div class="post_like">
    <span class="post_like_link fl_l" id="like_link{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Мне нравится</span>
    <i class="post_like_icon  fl_l" id="like_icon{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></i>
    <span class="post_like_count fl_l" id="like_count{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">{if $comments[comment_loop].like_total != 0}{$comments[comment_loop].like_total}{/if}</span>
  </div>
</div>{/if}

   <div class="replies" onclick="event.cancelBubble = true;">
    <div class="reply_link_wrap">
     <small><a href="/wall{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="return nav.go(this, event)"><span class="rel_date rel_date_needs_update" abs_time="{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}" time="1322060427">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</span></a></small>

</div>



</div>

  </div>
  </div>
</div></b></center></i>{/section}</div>
    </div>
    <a id="fw_load_more" class="pg_more_link" onclick="Pagination.showMore()" style=""><span>к предыдущим записям</span>
      <div id="fw_more_progress" class="pg_more_progress progress"></div>
    </a>
  </div>
</div></div>
  </div>
</div></div>
    </div>


{include file='footer.tpl'}