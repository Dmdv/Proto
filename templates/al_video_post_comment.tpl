4658<!><!>0<!>4250<!>0<!>{section name=comment_loop loop=$comments} <div class="mv_comment" id="mv_comment{$oid}_{$comments[comment_loop].comment_id}"><table cellspacing="0" cellpadding="0"><tr>
<td class="mv_thumb">
<a href="/id{$comments[comment_loop].comment_author->user_info.user_id}" onclick="return nav.go(this, event);"><img src="{$comments[comment_loop].comment_author->user_photo('./images/nophoto.gif', 1)}" /></a>
</td><td class="mv_comm">
  <a href="/id{$comments[comment_loop].comment_author->user_info.user_id}" class="name" onclick="return nav.go(this, event);">{$comments[comment_loop].comment_author->user_info.user_fname} {$comments[comment_loop].comment_author->user_info.user_lname}</a>
  <div class="mv_commtext">{$comments[comment_loop].comment_body}</div>
  <div class="mv_commdata">
    <span class="fl_l">{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}<span class="sdivide">|</span><a onclick="videoview.commAction('spam', '{$oid}_{$comments[comment_loop].comment_id}', '6c15287f6713f6ed30', 'mv')">это спам</a><span class="sdivide">|</span><a onclick="videoview.commAction('delete', '{$oid}_{$comments[comment_loop].comment_id}', '6c15287f6713f6ed30', 'mv')">Удалить</a></span>
    <div class="fl_r progress" id="mv_progress{$oid}_{$comments[comment_loop].comment_id}"></div>
  </div>
</td></tr></table></div>{/section}