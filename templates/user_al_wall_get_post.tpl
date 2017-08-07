{if 1 == 3}4658<!><!>0<!>4250<!>0<!>{$owner->user_info.user_id}_{$post_id}<!><input type="hidden" id="start_reply{$owner->user_info.user_id}_{$post_id}" value="{$comments[comment_loop].comment_id}"/>{/if}
 {if $ajax == 1}4658<!><!>0<!>4250<!>0<!>{/if}{if $trey == 1}{$owner->user_info.user_id}_{$post_id}<!>{if $total_comments > 3 and 1 == 2}
<a class="wr_header" onclick="return wall.showReplies('{$owner->user_info.user_id}_{$post_id}', false, false, event);" offs="3/{math equation='p-3' p=$total_comments}" href="/wall{$owner->user_info.user_id}_{$post_id}?offset=last&f=replies">
  <div class="wrh_text" id="wrh_text{$owner->user_info.user_id}_{$post_id}">Показать все {math equation='p-3' p=$total_comments} комментариев</div>
  <div class="progress wrh_prg" id="wrh_prg{$owner->user_info.user_id}_{$post_id}"></div>
</a>
{/if}{/if}{section name=comment_loop loop=$comments}
{if $comments[comment_loop].ids == 17896543}<input type="hidden" id="start_reply{$owner->user_info.user_id}_{$post_id}" value="{$comments[comment_loop].comment_id}"/>{/if}<div id="post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="reply reply_dived clear " onmouseover="wall.replyOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.replyOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" >
  <div class="reply_table">
    <a class="reply_image" href="{$url->url_create('profile',$comments[comment_loop].comment_author->user_info.user_id)}">
      <img src="{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif', '1')}" width="50" height="50" class="reply_image" />
    </a>
    <div class="reply_info">
      <div class="fl_r delete_post_wrap">
  <div class="delete_post">
    <div id="delete_post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" onclick="wall.deletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', '57cebcfa7a3d17a51d');" onmouseover="wall.activeDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', 'Ԥᬨ󺥩" onmouseout="wall.deactiveDeletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')"></div>
  </div>
</div>
      <div class="reply_text">
        <a class="author" href="{$url->url_create('profile',$comments[comment_loop].comment_author->user_info.user_id)}">{$comments[comment_loop].comment_author->user_info.user_name} {$comments[comment_loop].comment_author->user_info.user_lastname}</a>
        <div class="wall_reply_text">{$comments[comment_loop].comment_body}</div>
        
      </div>
      <div class="info_footer">
        <div class="like_wrap fl_r" onclick="wall.like('{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}', 'cb306acd9184b7398a'); event.cancelBubble = true;" onmouseover="wall.likeOver('{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}')" onmouseout="wall.likeOut('{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}')">
  <span class="like_link fl_l" id="like_link{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}">Мне нравится</span>
  <i class="no_likes fl_l" id="like_icon{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}"></i>
  <span class="like_count fl_l" id="like_count{$owner->user_info.user_id}_wall_reply{$comments[comment_loop].comment_id}"></span>
</div>
        <a class="wd_lnk" href="/wall{$owner->user_info.user_id}_{$post_id}?reply={$comments[comment_loop].comment_id}" onclick="return nav.go(this, event)"><span class="rel_date">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</span></a> 
      </div>
    </div>
  </div>
</div>{/section}{if 1 == 2}
<div id="post{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}" class="reply clear" onmouseover="wall.actsOver('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')" onmouseout="wall.actsOut('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}')">
  <table class="reply_table" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td class="image">
        <a class="reply_image" href="{$url->url_create('profileid',$comments[comment_loop].comment_author->user_info.user_id)}" onclick="return nav.go(this, event)">
          <img border="0" src="{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif', '1')}" />
        </a>
      </td>
      <td class="info">

        <div class="reply_text">
          <a class="author" href="{$url->url_create('profileid',$comments[comment_loop].comment_author->user_info.user_id)}" onclick="return nav.go(this, event)">{$comments[comment_loop].comment_author->user_info.user_name} {$comments[comment_loop].comment_author->user_info.user_lastname}</a>
          <div class="wall_reply_text">{$comments[comment_loop].comment_body}</div>
        </div>
        <div class="info_footer">
          <span class="fl_r actions" id="actions{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}">
                      <a onclick="wall.deletePost('{$owner->user_info.user_id}_{$comments[comment_loop].comment_id}', 'f80f55c383a7d389');">Удалить</a> 
                     </span>

          <a class="wd_lnk" href="/wall{$owner->user_info.user_id}_{$post_id}?reply={$comments[comment_loop].comment_id}" onclick="return nav.go(this, event)">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</a> 
        </div>
      </td>
    </tr>
  </table>
</div>{/if}
