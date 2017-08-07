4658<!><!>0<!>4250<!>0<!>{$video_info.video_title}<!>
  <div class="wrap">
		<div style="display:block;" id="video_box_wrap{$owner->user_info.user_id}_{$video_info.video_id}">

<iframe id="video_player" type="text/html" src="http://www.youtube.com/embed/{$video_info.video_youtube_code}?autoplay=1&autohide=1&wmode=opaque&showinfo=0" frameborder="0" height="410" width="720">
</iframe>






</div>
  </div>
</div>





<!>{literal}cur.incViews = function() {
  if (cur.videoInc) {
    return;
  }
  cur.videoInc = setTimeout(function() {
    cur.videoInc = 'finished';
    {/literal}var oid = {$owner->user_info.user_id};
    if (oid){literal} {
      ajax.post("al_video.php", {act:'inc_view_counter', oid:oid, vid:{/literal}{$video_info.video_id}, hash:'dd529499cee13b89a1a0f76e597eafb5{literal}'});
    }
  }, 5000);
  cur.destroy.push(function () {
    if (cur.videoInc && cur.videoInc != 'finished') {
      clearTimeout(cur.videoInc);
    }
  });
}
mvcur.mvData.addedVideo = '{/literal}{$owner->user_info.user_id}_{$video_info.video_id}';
mvcur.mvData.addedVideoHash = '1002d63e6dce5cb9df';
mvcur.mvData.addedVideoShareHash = 'ec530cc72805080949';
mvcur.mvData.needsNew = 1;<!>
<div id="mv_description" class="mv_desc">
{$video_info.video_desc|truncate:10000:"...":true}
</div>
<div id="mv_action_info" style="display: none;"></div><div id="mv_tags" style="display: none;">На видео присутствуют:<span id="mv_tags_list"></span></div><br><div id="mv_date_wrap" class="fl_l">	{assign var="uploaddate" value=$datetime->time_since($video_info.video_datecreated)}
	{capture assign="uploaded"}{lang_sprintf id=$uploaddate[0] 1=$uploaddate[1]}{/capture}{lang_sprintf id=5500024 1=$uploaded}</div><div class="fl_l nolikes" style="filter: alpha(opacity=40); opacity: 0.4;" id="mv_like_icon"></div> <span id="mv_like_count" class="fl_l"></span></div><br class="clear" /><div id="mv_comments_header" onclick="videoview.comments();" style="display: none;"></div>


<div id="mv_comments_header" onclick="videoview.comments();" style="display: none;"></div>

<div id="mv_comments">
</div>
  <div id="mv_comment_warn" class="fl_l"></div>
  <br class="clear" />
</div><!><div class="info mv_num_views">просмотров: {$video_info.video_views}</div><div class="info">Отправитель:</div><div id="mv_author"><a class="mem_link" href='id{$owner->user_info.user_id}'>{$owner->user_info.user_fname} {$owner->user_info.user_lname}</a></div><div id="mv_actions">{if $owner->user_info.user_id == $user->user_info.user_id}<a onclick="return videoview.deleteVideo({$video_info.video_id}, {$owner->user_info.user_id}, '21673cb12495f8607a', false, 'videoviewer', this)">Удалить</a>{/if}



<div onmouseover="videoview.showShare()" onmouseout="videoview.hideShare(500)" onclick="videoview.hideShare(-1)" id="mvs_dd" class="fixed">
<table cellspacing="0" cellpadding="0"><tbody><tr>

<td class="mvs_side_sh">
  <div class="mvs_side_sh_el"></div>
</td><td>
  <div class="mvs_sh1"></div>
  <div class="mvs_sh2"></div>
</td><td class="mvs_side_sh">
  <div class="mvs_side_sh_el"></div>
</td>

</tr></tbody></table></div>

</div><!><a class="mv_show_info" id="mv_show_info" onmouseover="videoview.activate(this, 2);" onmouseout="videoview.deactivate(this, 2);" onclick="return videoview.showInfo();">Показать комментарии</a>
<a class="mv_hide_info" id="mv_hide_info" onmouseover="videoview.activate(this, 2);" onmouseout="videoview.deactivate(this, 2);" onclick="return videoview.hideInfo();"></a>{if $owner->user_info.user_id != $user->user_info.user_id}<span id="mv_add_divider" class="divider">|</span><span id="mv_like_line"><a class="video_add_link" onmouseover="videoview.activate(this, 2);" onmouseout="videoview.deactivate(this, 2);" onclick="return videoview.addSmall('{$owner->user_info.user_id}_{$video_info.video_id}', '3d588c6150adc061f5');">Добавить в Мои Видеозаписи</a>{/if}
<span class="video_already_added">Добавлено<span class="divider">|</span><a class="video_share_link" onmouseover="videoview.activate(this, 2);" onmouseout="videoview.deactivate(this, 2);" onclick="return videoview.share('40297585_161952592', this);"></a></span><!><!json>{literal}{"lang":{"reply_to_post":"Комментировать...","wall_M_replies_of_N":["","%s комментарий из {link}{all}{\/link}","%s последних комментария из {link}{all}{\/link}","%s последних комментариев из {link}{all}{\/link}"],"wall_more_replies":["","еще %s комментарий","еще %s комментария","еще %s комментариев"],"wall_all_replies":"все комментарии","video_X_comms":["","%s комментарий","%s комментария","%s комментариев"],"video_show_previous_comments":["","Показать предыдущие %s комментарий","Показать предыдущие %s комментария","Показать предыдущие %s комментариев"],"video_are_you_sure_close":"Вы уверены, что хотите закрыть видеозапись?","video_are_you_sure_close_title":"Закрыть видео"},"mvData":{"title":"{/literal}{$video_info.video_title}{literal}","oid":{/literal}{$owner->user_info.user_id},"vid":{$video_info.video_id},"videoRaw":"{$owner->user_info.user_id}_{$video_info.video_id}"{literal},"hash":"c53d053be3702755ff","likeHash":"10b272fa112121e055","commshown":0,"commcount":0,"liked":false,"likes":0,"duration":212},"taggedInfo":""}{/literal}

