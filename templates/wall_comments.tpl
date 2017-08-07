{include file='header_top.tpl'}
<script src="http://s7.vceti.net/js/common.js?196"></script>
<script type="text/javascript" src="http://s7.vceti.net/js/lang0_0-1000.js?1564"></script>
<link rel="stylesheet" href="http://s7.vceti.net/css/search.css" type="text/css" />
<link rel="stylesheet" href="http://s7.vceti.net/css/mail2.css?11" type="text/css" />
<link rel="stylesheet" href="http://s7.vceti.net/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="http://s7.vceti.net/css/profile.css?111" type="text/css" />
<link rel="stylesheet" href="http://s7.vceti.net/css/wall.css?13" type="text/css" />

<script type="text/javascript" src="/js/simpleajax.js?77"></script>

<script type="text/javascript" src="http://s7.vceti.net/js/lib/swfobject2.js"></script>
<script>window.old_wall = 0;</script><script type="text/javascript" src="http://s7.vceti.net/js/profile.js?119"></script>
<link rel="stylesheet" href="http://s7.vceti.net/css/player.css?3" type="text/css" />
<script type="text/javascript" src="http://s7.vceti.net/js/player2.js?10"></script>
<script type="text/javascript" src="http://s7.vceti.net/js/swfobject.js"></script>
<link rel="stylesheet" href="http://s7.vceti.net/css/def/player.css?2" type="text/css"/>



<script src='http://s7.vceti.net/js/common.js'></script>
<script src="http://s7.vceti.net/js/lang0_1000.js?581"></script>

<script type="text/javascript" src="http://s7.vceti.net/js/profile.js"></script>
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}


<div id="pageBody" class="pageBody">

  <div id="wrapH">
  <div id="wrapHI">
   <div id="header">
    <h1><a href='http://tg-engine.totalh.com/user_id{$user->user_info.user_id}'>{$user->profile_info.profile_8} {$user->user_info.user_username} {$user->profile_info.profile_10}</a>  &#187;   Комментарии </h1>
   </div>

  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">


<div class="clearFix summaryBar">
 <div class="summary">Показаны записи 1-{$total_comments}.</div>

    

</div>


<div id="wall">



 <div id="wallpage" class="clearFix">

  <div class="nav">
   <a href='http://tg-engine.totalh.com/user_id{$user->user_info.user_id}'>Вернуться к странице</a><span class='divide'>|</span><a href='wall.php?act=write&user_id={$user->user_info.user_id}'>Написать на стене</a>

  </div>
  <div>





  <div id='commentbox' style='display: none; margin: 20px 0px 20px 0px;'>
  <table cellpadding='0' cellspacing='0' align='center'>
  <tr>

  <td class='profile_viewcomments_postcomment'>
  <form action='profile_comments.php' method='post' target='AddCommentWindow' onSubmit='checkText()'>
  <textarea name='comment_body' id='comment_body' rows='3' cols='85' onfocus='removeText(this)' onblur='addText(this)' style='color: #888888;'>Напишите что-нибудь...</textarea>
    <table cellpadding='0' cellspacing='0' width='100%'>
    <tr>
        <td align='right'>
    <input type='submit' user_id='comment_submit' class='button' value='Добавить комментарий'>
    <input type='hidden' name='user' value='39705'>

    <input type='hidden' name='task' value='dopost'>
    </form>
    </td>
    </tr>
    </table>
  <div id='comment_error' style='color: #FF0000; display: none;'></div>
  <iframe name='AddCommentWindow' style='display: none' src=''></iframe>
  </td>

  </tr>
  </table>
  </div>

{if $total_comments == 0}
  {* DISPLAY MESSAGE IF THERE ARE NO COMMENTS *}
  
<div id="nomail">У вас нету сообщений на стене.</div>

{else}
  {* LIST COMMENTS *}
  <form action='user_editprofile_comments.php' method='post' name='comments'>
  {section name=comment_loop loop=$comments}
<div id="wPostContainer{$comments[comment_loop].comment_id}">
<div id="wPostContent{$comments[comment_loop].comment_id}">     
<table class="wallpost" border="0" cellspacing="0" width="100%">
      <tr>
       <td class="image">
  {if $comments[comment_loop].comment_author->user_info.user_id != 0}
        <a href="{$url->url_create('profile', $comments[comment_loop].comment_author->user_info.user_id)}">

         <img border="0" src="{$comments[comment_loop].comment_author->user_photo('./images/camera_c.gif')}">     </a>

{else}
        <img src='./images/camera_c.gif' class='photo' border='0' width='75'>
      {/if}
   
       </td>
       <td class="info">
        <div class="header">
{if $comments[comment_loop].comment_author->user_info.user_id != 0}
         <a href="{$url->url_create('profile',$comments[comment_loop].comment_author->user_info.user_id)}"  style='font-weight: bold;'>{$comments[comment_loop].comment_author->profile_info.profile_8}{$owner->profile_info.profile_8}{$comments[comment_loop].comment_author->profile_info.profile_10}</a>{else}{$user_editprofile_comments15}{/if} написал(а)<br />
         <small>{$datetime->cdate("`$setting.setting_timeformat` `$user_editprofile_comments3` `$setting.setting_dateformat`", $datetime->timezone($comments[comment_loop].comment_date, $global_timezone))}</small>

        </div>
        <div class='text' id="wPost{$comments[comment_loop].comment_id}" style="width: 500px; overflow: hidden;">{$comments[comment_loop].comment_body}</div>
        <div class='actions'>
         <a href="javascript: deletePost({$comments[comment_loop].comment_id}, {$user->user_info.user_id})"><small>Удалить</small></a>
        </div>
       </td>
      </tr>
     </table>
  {/section}

{/if}

</div>{literal}
<script type="text/javascript" src="http://s7.vceti.net/js/player2.js"></script>
<object user_id="myFlash" type="application/x-shockwave-flash" data="/swf/player.swf" width="1" height="1">
<param name="movie" value="/swf/player.swf" />
<param name="AllowScriptAccess" value="always" />
<param name="FlashVars" value="listener=myListener&amp;interval=50" />
</object>{/literal}

</div></div>


</div></div></div>

</div>

















{include file='footer.tpl'}