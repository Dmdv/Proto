{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/audio.css?43"></link><link type="text/css" rel="stylesheet" href="/css/al/new_player.css?17"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link><script type="text/javascript" src="/js/al/common.js?710"></script><script type="text/javascript" src="/js/lang0_0.js?5557"></script><script type="text/javascript" src="/js/al/audio.js?79"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/new_player.js?81"></script><script type="text/javascript" src="/js/al/public.js?26"></script><script type="text/javascript" src="/js/lib/ui_controls.js?110"></script><script type="text/javascript" src="/js/al/notifier.js?152"></script>
  <script type="text/javascript">domStarted();</script>
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
    <div id="content">
<div id="audio">
<div class="tabs t_bar clear_fix">
  <ul id="friends_tabs" class="t0">
   <li id="tab_all" class="active_link">
    <a href="/user_music.php" ><b class="tl1"><b></b></b><b class="tl2"></b>
     <b class="tab_word">К списку аудиозаписей</b>
    </a>
   </li>
  </ul>
</div>
<div class="summary_wrap">
  <div class="summary"><b id="audio_summary">Загрузка музыки</b><span id="audio_actions"></span></div>
</div>
<div id="audio_wrap" class="audio_wrap " style="padding:20px">

<div style="background: #FFFFFF;border: 1px solid #CCCCCC;margin: 0px 15px 15px;padding: 20px 80px;text-align: left;">
<ul class="listing">
<li>
<span>Аудиофайл не должен превышать 10 Мб и должен быть в формате MP3.</span>
</li>
<li>
<span>Аудиофайл не должен нарушать авторские права.</span>
</li>
</ul>

<br />
<br />





<div id='uploader' style='display: none;'>
  <div style='margin-bottom: 10px;'>
    <div style='float: left; font-weight: bold;'>
      <a href='javascript:void(0);' id='uploader_browse' onClick='this.blur()'><img src='./images/uploader_browse.gif' border='0' class='button'>Add Files</a>
    </div>
    <div style='float: left; padding-left: 20px; font-weight: bold;'>
      <a href='javascript:void(0);' id='uploader_upload' onClick='this.blur()'><img src='./images/uploader_upload.gif' border='0' class='button'>Upload Selected Files</a>
    </div>
    <div style='height: 0px; clear: both;'></div>
  </div>
  <div>
    <div>Overall Progress <span class='overall-title'></span></div>
    <img src='./images/uploader_bar.gif' class='progress overall-progress' />
  </div>
  <div style='margin-top: 5px;'>
    <div>File Progress <span class='current-title'></span></div>
    <img src='./images/uploader_bar.gif' class='progress current-progress' />
  </div>
  <div class='uploading-text' style='display: none;'>Upload with <span class='current-rate'></span>/2. Time left: ~<span class='current-timeleft'></span></div>
  <div class='uploaded-text' style='display: none;'>Upload complete!</div>
  <ul id='fileList'></ul>
</div>


<br />
<div id='fallback_link' class='fallback_link' style='display: none;'><a href='javascript:void(0)'>Having trouble uploading files? Click here to use the simple uploader.</a></div>

<div id='fallback'>


  {include file='user_upload.tpl' action='user_music_upload.php' session_id=$session_id upload_token=$upload_token show_uploader=$show_uploader inputs=$inputs file_result=$file_result}
</div><div id="searchTip" style="padding-top:10px">
Вы также можете воспользоваться поиском по уже <a href="search?c[section]=audio"><b>загруженным аудиозаписям</b>
</a>
</div>
  </div>
  </div>


</div></div>
  </div>
</div>

{include file='footer.tpl'}



<table cellpadding='0' cellspacing='0' id="se_debug_window" style="display:none;">
  <tr>
    <td id="se_debug_window_menu" height="1">
      Debug
    </td>
  </tr>
  <tr>
    <td id="se_debug_window_body">
      <div id="se_debug_window_body_container"></div>
    </td>
  </tr>
</table>
<div id="smoothbox_container"></div>