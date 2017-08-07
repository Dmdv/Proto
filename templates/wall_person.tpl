{include file='header.tpl'}
<link rel='stylesheet' href='{$filedata}css/search.css' type='text/css' /><link rel='stylesheet' href='{$filedata}css/wall.css' type='text/css' />
{* JAVASCRIPT FOR ADDING COMMENT *}
{literal}
<script language="JavaScript" type="text/javascript">
<!--
function openWin(wUri, wName, wWidth, wHeight, Scroll, wMenu) {
var scrollBars = (Scroll!=0) ? 1 : 0;
var menuBars = (wMenu) ? 1 : 0;
var positionLeft = (screen.width - wWidth)/2;
var positionTop = (screen.height - wHeight)/2;
var myW = window.open(wUri,wName,'width='+wWidth+',height='+wHeight+',top='+positionTop+',left='+positionLeft+',location=0,menubar='+menuBars+',resizable=0,scrollbars='+scrollBars+',status=0,titlebar=0,toolbar=0,directories=0,hotkeys=0')
myW.focus();
}
//-->
</script>
<script type='text/javascript'>
<!--
var comment_changed = 0;
var first_comment = 1;
var last_comment = {/literal}{$comments|@count}{literal};
var next_comment = last_comment+1;

function removeText(commentBody) {
  if(comment_changed == 0) {
    commentBody.value='';
    commentBody.style.color='#000000';
    comment_changed = 1;
  }
}

function addText(commentBody) {
  if(commentBody.value == '') {
    commentBody.value = '{/literal}{$profile_comments14}{literal}';
    commentBody.style.color = '#888888';
    comment_changed = 0;
  }
}

function checkText() {
  if(comment_changed == 0) { 
    var commentBody = document.getElementById('comment_body');
    commentBody.value=''; 
  }
  var commentSubmit = document.getElementById('comment_submit');
  commentSubmit.value = '{/literal}{$profile_comments15}{literal}';
  commentSubmit.disabled = true;
  
}

function addComment(is_error, comment_body, comment_date) {
  if(is_error == 1) {
    var commentError = document.getElementById('comment_error');
    commentError.style.display = 'block';
    if(comment_body == '') {
      commentError.innerHTML = '{/literal}{$profile_comments16}{literal}';
    } else {
      commentError.innerHTML = '{/literal}{$profile_comments17}{literal}';
    }
    var commentSubmit = document.getElementById('comment_submit');
    commentSubmit.value = '{/literal}{$profile_comments18}{literal}';
    commentSubmit.disabled = false;
  } else {
    window.location.href = '{/literal}profile_comments.php?user={$owner->user_info.user_id}{literal}';
  }
}
//-->
</script>
{/literal}

<div id="pageBody" class="pageBody">

  <div id="wrapH">
  <div id="wrapHI">
   <div id="header">
    <h1>Тет-а-тет</h1>
   </div>
  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">


<div class="clearFix summaryBar">
 <div class="summary">Показаны записи {$p_start}-{$p_end}{if $total_comments > 20} из {$total_comments}{/if}.</div>
    

{if $maxpage > 1}
 <ul class="pageList">
  {if $p > 2}<li><a href='wall.php?id={$owner->user_info.user_id}&person={$id2}&p=1'>«</a></li>{/if}
  {if $p != 1}<li><a href='wall.php?id={$owner->user_info.user_id}&person={$id2}&p={math equation='p-1' p=$p}'>{math equation='p-1' p=$p}</a></li>{/if}
  <li class='current'><a>{$p}</a></li>
  {if $p != $maxpage}<li><a href='wall.php?id={$owner->user_info.user_id}&person={$id2}&p={math equation='p+1' p=$p}'>{math equation='p+1' p=$p}</a></li>{/if}
{if $p < $maxpage}<li><a href='wall.php?id={$owner->user_info.user_id}&person={$id2}&p={$maxpage}'>»</a></li>{/if}
 </ul>

{/if}
</div>


<div id="wall">



 <div id="wallpage" class="clearFix">

  <div class="nav">
   <a href='{$url->url_create('profile', $owner->user_info.user_id)}'>Вернуться к странице</a><span class='divide'>|</span><a href='wall.php?act=write&id={$owner->user_info.user_id}'>Написать на стене</a>
  </div>
  <div>








      {* LOOP THROUGH PROFILE COMMENTS *}
      {section name=comment_loop loop=$comments}
        <div id='comment_1'>
        <table class="wallpost" border="0" cellspacing="0" width="100%">
        <tr>
        <td class="image">
{if $comments[comment_loop].profilecomment_authoruser_id == $owner->user_info.user_id}
         <a href='{$url->url_create('profile',$owner->user_info.user_id)}'>
<img src="{$owner->user_photo("./images/camera_c.gif")}"  width={$misc->photo_size($owner->user_photo("./images/camera_c.gif"),'75','500','w')}>
{else}
{if $id2 == $comments[comment_loop].profilecomment_authoruser_id}
         <a href='{$url->url_create('profile',$owner2_user_id)}'>
{if $owner2_user_photo == "./camera_c.gif"}
<img src="./images/camera_c.gif" width="75" border="0" >
{else}
{if $owner2_user_photo == ""}
<img src="./images/camera_c.gif" width="75" border="0" >
{/if}
{if $owner2_user_photo != ""}
<IMG SRC='./uploads_user/{math equation="x+y-((x-1)%z);" x=$owner2_user_id y=999 z=1000}/{$owner2_user_id}/{$owner2_user_photo}' width="75" border="0" >
{/if}
{/if}
{else}
<img src="./images/camera_c.gif" width="75" border="0" >
{/if}
{/if}
</a> {if $comments[comment_loop].comment_online == 1}<div style="margin: 4px 0px 0px 10px; color: rgb(170, 170, 170);">Online</div>{/if}
        </td>
        <td class="info">
          <div class="header">
{if $comments[comment_loop].profilecomment_authoruser_id == $owner->user_info.user_id}
<a href='{$url->url_create('profile',$owner->user_info.user_id)}' style="font-weight: bold;">{$owner->user_info.user_firstname} {$owner->user_info.user_username} {$owner->user_info.user_lastname}</a>
{else}
{if $id2 == $comments[comment_loop].profilecomment_authoruser_id}
<a href='{$url->url_create('profile',$owner2_user_id)}' style="font-weight: bold;">{$owner2_user_firstname} {$owner2_.user_username} {$owner2_user_lastname}</a>
{/if}
{/if}
<br> 
<small>{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($comments[comment_loop].profilecomment_date, $global_timezone))}</small>
          </div>
          <div class="text">{$comments[comment_loop].profilecomment_body}










          <div class="actions">{if $owner->user_info.user_id != 0}<a href='wall.php?act=write&id={$comments[comment_loop].profilecomment_authoruser_id}'><small>{if $user->user_info.user_id != $comments[comment_loop].profilecomment_authoruser_id}Написать на стене{else}Написать на моей стене{/if}</small></a>{if $user->user_info.user_id != $comments[comment_loop].profilecomment_authoruser_id} - <a href='user_messages_new.php?to={$comments[comment_loop].comment_author->user_info.user_id}'><small>Сообщение</small></a>{/if}{if $owner->user_info.user_id == $user->user_info.user_id}
 - <a onClick="openWin(this, 'comments', 300, 30, 0); return false" href="dell_com.php?act=2&id={$comments[comment_loop].comment_author->user_info.user_id}&cid={$comments[comment_loop].comment_id}"><small>Удалить</small></a>
{else}
{if $comments[comment_loop].comment_author->user_info.user_id == $user->user_info.user_id}
 - <a onClick="openWin(this, 'comments', 300, 30, 0); return false" href="dell_com.php?act=1&id={$comments[comment_loop].comment_author->user_info.user_id}&cid={$comments[comment_loop].comment_id}"><small>Удалить</small></a>{/if}
{/if}
           {/if}
          </div>
       </td>
      </tr>
     </table>
          </div>
      {/section}  


</div></div>


</div></div></div>

{include file='footer.tpl'}