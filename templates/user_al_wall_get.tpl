


{if $ajax == 1}4658<!><!>0<!>4250<!>0<!>{/if}{if $count == 1}<input type="hidden" id="page_wall_count_all" value="{$total_comments}" /><input type="hidden" id="page_wall_count_own" value="0" />{/if}{section name=comment_loop loop=$comments}<div id="post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="post all" onmouseover="wall.postOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')">  <div class="post_table"> <div class="post_image">       <a class="post_image" href="/id{$comments[comment_loop].comment_author->user_info.user_id}"><img src="{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif', 1)}" width="50" height="50"/></a>     {if $comments[comment_loop].is_online == 1}   <span class="online">Online</span>{/if}</div>      <div class="post_info">     <div class="fl_r delete_post_wrap">  <div class="delete_post">    <div id="delete_post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="wall.deletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '40547f4ca2dc732878','{$owner->user_info.user_id}','{$comments[comment_loop].comment_author->user_info.user_id}');" onmouseover="wall.activeDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '  {if $owner->user_info.user_id == $user->user_info.user_id OR $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}Удалить запись{else}Это спам{/if}')" onmouseout="wall.deactiveDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"></div>  </div></div>   <div class="text">    <a class="author" href="/id{$comments[comment_loop].comment_author->user_info.user_id}" onclick="return nav.go(this, event)">{$comments[comment_loop].comment_author->user_info.user_fname} {$comments[comment_loop].comment_author->user_info.user_lname}</a>     <div class="wall_post_text">{$comments[comment_loop].comment_body}</div>        </div> {if $comments[comment_loop].my_like != 0}   <div class="post_like_wrap fl_r" onmouseover="wall.postLikeOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postLikeOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onclick="wall.like('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$user->user_info.user_id}'); event.cancelBubble = true;">  <div class="post_like">  <span class="post_like_link fl_l" id="like_link{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Мне нравится</span>    <i class="post_like_icon my_like fl_l" id="like_icon{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></i>    <span class="post_like_count fl_l" id="like_count{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">{if $comments[comment_loop].like_total != 0}{$comments[comment_loop].like_total}{/if}</span>  </div></div>{else}  <div class="post_like_wrap fl_r" onmouseover="wall.postLikeOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postLikeOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onclick="wall.like('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$user->user_info.user_id}'); event.cancelBubble = true;">  <div class="post_like">    <span class="post_like_link fl_l" id="like_link{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Мне нравится</span>    <i class="post_like_icon  fl_l" id="like_icon{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></i>    <span class="post_like_count fl_l" id="like_count{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">{if $comments[comment_loop].like_total != 0}{$comments[comment_loop].like_total}{/if}</span>  </div></div>{/if}   <div class="replies" onclick="event.cancelBubble = true;">    <div class="reply_link_wrap">     <small><span class="rel_date rel_date_needs_update" abs_time="{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}" time="1322060427">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</span></small></div></div>  </div>  </div></div></b></center></i>{/section}{if $ajax == 1}{literal}<!><!json>{}{/literal}{/if}
{if 1 == 20}






{if $ajax == 1}4658<!><!>0<!>4250<!>0<!>{/if}<input type="hidden" id="page_wall_count_all" value="{$total_comments}" /><input type="hidden" id="page_wall_count_own" value="0" />{section name=comment_loop loop=$comments}

  <div id="post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="post all" onmouseover="wall.postOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.postOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')">
<table class="post_table" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="image">
   <a class="post_image" href="{$url->url_create('profileid',$comments[comment_loop].comment_author->user_info.user_id)}" onclick="return nav.go(this, event)"><div style="width:50px; height:50px; background:url({$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif', '1')});"></div></a>
     </td>
  <td class="info">
   <div class="fl_r">

    <div class="delete_post">
         <div id="delete_post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="wall.deletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$hash->hash_gen($comments[comment_loop].comment_id, 'wall_delete_post')}');" onmouseover="wall.activeDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', 'Удалить запись')" onmouseout="wall.deactiveDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"></div>
        </div>
   </div>
   <div class="text">
    <a class="author" href="{$url->url_create('profileid',$comments[comment_loop].comment_author->user_info.user_id)}" onclick="return nav.go(this, event)">{$comments[comment_loop].comment_author->user_info.user_name} {$comments[comment_loop].comment_author->user_info.user_lastname}</a> 
    <div class="wall_post_text">{$comments[comment_loop].comment_body}</div>
       </div>
   <div class="like_wrap fl_r" onmouseover="wall.likeOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.likeOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onclick="wall.like('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '{$hash->hash_gen($comments[comment_loop].comment_id,'wall_like')}'); event.cancelBubble = true;">

    <span style="visibility: hidden; opacity: 0;" class="like_link fl_l" id="like_link{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Мне нравится</span>
    <div style="visibility: hidden; opacity: 0;" class="no_likes fl_l " id="like_icon{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></div><span class="like_count fl_l" id="like_count{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">{$comments[comment_loop].like_total}</span>
   </div>
   <div class="replies" onclick="event.cancelBubble = true;">
    <div class="reply_link_wrap">
     <small><a href="/wall{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="return nav.go(this, event)">
    <span class="rel_date">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</span>
   
  </a></small>

    </div>
    <div class="replies_wrap" id="replies_wrap{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" style="display: none">
     <div id="replies{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">
         <input type="hidden" id="start_reply{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" value=""/>
       </div>
          <div class="reply_box" onclick="return cancelEvent(event)">
      <input type="hidden" id="reply_to{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" value="" />

      <div class="reply_field_wrap clear_fix">
       <textarea
        id="reply_field{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"
        class="fl_l"
        placeholder="Комментировать..."
        onkeydown="onCtrlEnter(event, function() {literal}{{/literal} wall.sendReply('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}'); {literal}}{/literal})"
        onfocus="wall.showEditReply('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"
        onkeyup="wall.checkTextLen(this, 'reply_warn{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"
       ></textarea>
      </div>
      <div class="reply_warn clear" id="reply_warn{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></div>
      <div id="submit_reply{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="submit_reply clear">
       <div class="fl_l"><div class="button_green"><button id="reply_button{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">Отправить</button></div></div>
       <div id="reply_to_title{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="reply_to_title fl_l"><span id="reply_to_name{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></span></div>
       <div class="progress fl_r" id="page_reply_progress{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}"></div>

      </div>
      <div class="clear"></div>
     </div>
         </div>
   </div>
  </td>
 </tr>
</table>
</div>
 {/section}{if $ajax == 1}{literal}<!><!json>{}{/literal}{/if}{/if}