 {literal}<noscript>
var head = document.getElementsByTagName('head')[0];
if(window.SWFObject===undefined){
var script = document.createElement('script');
script.type = 'text/javascript';
script.src = '/js/swfobject.js';
head.appendChild(script);}
if(window.operate===undefined){
script = document.createElement('script');
script.type = 'text/javascript';
script.src = '/js/audio.js?5';
head.appendChild(script);}
</noscript>
<script for="playerWall" event="FSCommand" language="Jscript">
  if(browser.msie){
    if (arguments && arguments[1] && /^(flashDebug|stateChanged\(([^()]+)\);$)/.test(arguments[1])) {
      eval(arguments[1]);
    }
  }
</script> {/literal}
{if $total_comments == 0}
     Здесь никто ничего не написал... Пока.
{else}      {section name=comment_loop loop=$comments} <div id="wPostContainer{$comments[comment_loop].comment_id}">
    <div id="wPostContent{$comments[comment_loop].comment_id}">
     <table class="wallpost" width="100%" border="0" cellspacing="0">

      <tbody><tr>
       <td class="image">
         <a href='{$url->url_create('profileid',$comments[comment_loop].comment_author->user_info.user_id)}'>
	<img src='{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif')}' class='photo' border='0' width='{$misc->photo_size($comments[comment_loop].comment_author->user_photo('./images/camera_c.gif'),'50','190','w')}'>
        </a>
        {if $comments[comment_loop].comment_online == 1}<div style="margin: 4px 0px 0px 10px; color: rgb(170, 170, 170);">Online</div>{/if}
       </td>
       <td class="info">
        <div class="header">

{if $comments[comment_loop].ids == 1}
{if $maxpage > 1}
  {if $page != $p_end}<div class="dArrow" id="dArrow{$comments[comment_loop].comment_id}"><a href="javascript: getWallPage({$owner->user_info.user_id}, {math equation='page+1' page=$page})">&#8594;</a></div>{/if}
  {if $page != 1}<div class="dArrow" id="dArrow{$comments[comment_loop].comment_id}"><a href="javascript: getWallPage({$owner->user_info.user_id}, {math equation='page-1' page=$page})">&#8592;</a></div>{/if}
{/if}
{/if}
	 <a class="memLink" href="/id{$comments[comment_loop].comment_author->user_info.user_id}"><strong>{$comments[comment_loop].comment_author->user_info.user_firstname} {$comments[comment_loop].comment_author->user_info.user_username} {$comments[comment_loop].comment_author->user_info.user_lastname}</strong></a> написал{if $comments[comment_loop].comment_author->user_info.user_sex == 1}а{/if}<br>
         <small>{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</small>
        </div>
        <div class="text" id="wPost{$comments[comment_loop].comment_id}" style="overflow: hidden; width: 315px;">{$comments[comment_loop].comment_body|choptext:50:"<br>"}</div>
        <div class="actions">
{if $owner->user_info.user_id == $user->user_info.user_id AND $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}
<a href="/wall.php?act=write&amp;id={$comments[comment_loop].comment_author->user_info.user_id}"><small>Написать на моей стене</small></a>
{else}
{if $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}
<a href="/wall.php?act=write&amp;id={$comments[comment_loop].comment_author->user_info.user_id}"><small>Добавить запись</small></a>
{else}
<a href="/wall.php?id={$owner->user_info.user_id}&amp;person={$comments[comment_loop].comment_author->user_info.user_id}"><small>Тет-а-тет</small></a>
<span class="sdivide">|</span><a href="/wall.php?act=write&amp;id={$comments[comment_loop].comment_author->user_info.user_id}"><small>Написать на {if $comments[comment_loop].comment_author->user_info.user_sex == 1}её{else}его{/if} стене</small></a>
{/if}
{/if}
{if $owner->user_info.user_id == $user->user_info.user_id OR $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}
<span class="sdivide">|</span><a href="javascript: deletePost({$comments[comment_loop].comment_id},{$owner->user_info.user_id})"><small>Удалить</small></a>
{/if}
        </div>
       </td>
      </tr>
     </tbody></table>
    </div>
   </div> {/section}{/if}