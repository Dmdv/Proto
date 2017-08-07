4658<!><!>0<!>4250<!>0<!>{section name=comment_loop loop=$comments} 

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
</div>{/section}<!><!json>[]