{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
{include file='header_top.tpl'}


<link rel="stylesheet" href="/css/rustyle.css?15" type="text/css">

<link rel='stylesheet' href='/css/profile.css' type='text/css'>

<link rel="stylesheet" href="/css/photos2.css?35" type="text/css" />
<script type="text/javascript" src="/js/photo.js?19"></script>


<script type="text/javascript" src="./include/js/mootools12-min.js"></script>


 <div id="pageBody" class="pageBody">

  <div id="wrapH">
  <div id="wrapHI">
   <div id="header">
    <h1><a href='/id{$owner->user_info.user_id}'>{$owner->user_displayname}</a> &#187 мои альбомы &#187; {$album_info.album_title}</h1>
   </div>
  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">

{* SET MEDIA PATH *}
{assign var='media_dir' value=$url->url_userdir($owner->user_info.user_id)}
{assign var='media_path' value="`$media_dir``$media_info.media_id`.`$media_info.media_ext`"}


{* DISPLAY IMAGE *}
{if $media_info.media_ext == "jpg" ||
    $media_info.media_ext == "jpeg" ||
    $media_info.media_ext == "gif" ||
    $media_info.media_ext == "png" ||
    $media_info.media_ext == "bmp"}
  {assign var='file_src' value="<img src='`$media_path`' id='media_photo' border='0'>"}
  {assign var='is_image' value=true}

{* DISPLAY AUDIO *}
{elseif $media_info.media_ext == "mp3" ||
        $media_info.media_ext == "mp4" ||
        $media_info.media_ext == "wav"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=1000142}</a> ]{/capture}
  {assign var='file_src' value="<a href='`$media_path`'><img src='./images/icons/album_audio_big.gif' border='0'></a>"}
  {assign var='is_image' value=false}

{* DISPLAY WINDOWS VIDEO *}
{elseif $media_info.media_ext == "mpeg" ||
	$media_info.media_ext == "mpg" ||
	$media_info.media_ext == "mpa" ||
	$media_info.media_ext == "avi" ||
	$media_info.media_ext == "ram" ||
	$media_info.media_ext == "rm"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=1000143}</a> ]{/capture}
  {assign var='file_src' value="
    <object id='video'
      classid='CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6'
      type='application/x-oleobject'>
      <param name='url' value='`$media_path`'>
      <param name='sendplaystatechangeevents' value='True'>
      <param name='autostart' value='true'>
      <param name='autosize' value='true'>
      <param name='uimode' value='mini'>
      <param name='playcount' value='9999'>
    </OBJECT>
  "}
  {assign var='is_image' value=false}

{* DISPLAY QUICKTIME FILE *}
{elseif $media_info.media_ext == "mov" ||
	$media_info.media_ext == "moov" ||
	$media_info.media_ext == "movie" ||
	$media_info.media_ext == "qtm" ||
	$media_info.media_ext == "qt"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=1000143}</a> ]{/capture}
  {assign var='file_src' value="
    <embed src='`$media_path`' controller='true' autosize='1' scale='1' width='550' height='350'>
  "}
  {assign var='is_image' value=false}

{* EMBED FLASH FILE *}
{elseif $media_info.media_ext == "swf"}
  {assign var='file_src' value="
	<object width='350' height='250' classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' id='myMovieName'>
	  <param name=movie value=$media_path>
	  <param name=quality value=high>
	  <param name=bgcolor value=#FFFFFF>
	  <embed src=$media_path quality=high bgcolor=#FFFFFF width='350' height='250' name='myMovieName' align='' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer'>
	  </embed>
	</object>
  "}
  {assign var='is_image' value=false}

{* DISPLAY UNKNOWN FILETYPE *}
{else}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=1000144}</a> ]{/capture}
  {assign var='file_src' value="<a href='`$media_path`'><img src='./images/icons/file_big.gif' border='0'></a>"}
  {assign var='is_image' value=false}
{/if}


{* ASSIGN INDICES *}
{assign var="current_index" value=$media_info.media_id|array_search:$media_keys}
{capture assign="previous_index"}{if $current_index == 0}{math equation="x-1" x=$media|@count}{else}{math equation="x-1" x=$current_index}{/if}{/capture}
{capture assign="next_index"}{if $current_index+1 == $media|@count}0{else}{math equation="x+1" x=$current_index}{/if}{/capture}
{capture assign="current_num"}{math equation="x+1" x=$current_index}{/capture}



{literal}
<script>var this_id=1; var ph=[["42329_109580", "./uploads_user/43000/42329/109580_thumb.jpg", "./uploads_user/43000/42329/109580.jpg"],["42329_112054", "./uploads_user/43000/42329/112054_thumb.jpg", "./uploads_user/43000/42329/112054.jpg"]]; var last_page = 0; var watched_uid = 0</script>

{/literal}
<div class="bar clearFix summaryBar">
<div class="summary">Фотография <span id='cur_num'>{$current_num}</span> из {$media|@count}</span></div>

<ul class='pageList pagePhoto'><li><a id="prevp" href='photo{$owner->user_info.user_id}_{$media_keys.$previous_index}'>&larr;</a></li><li><a id='nextp' href='photo{$owner->user_info.user_id}_{$media_keys.$next_index}'>&rarr;</a></li></ul>
</div>
{literal}
<script language="JavaScript">
function hideBox(){}
function hide_tagging_ui(){}
function initElements(){}
function processTagCoords(){}
function tagShowAddEvent(){}

pic1= new Image(32,8);
pic1.src="./images/upload.gif";
var tag_coords = [];
var prev_caption = "";
var cur_photo = "42329_109580";
var showing_photo;
var start_photo = "42329_109580";
</script>
{/literal}
<!--
<div id="tagframe" style="display: none">
 <div id="tagframeinside" onmousedown="frameMouseDown(event);" onmouseup="frameMouseUp()"></div>
</div>
-->
<div id="photomsgwrap"></div>
<div id="photoborder" class="clearfix" style='padding-bottom: 0; border-bottom: 0;' onMouseOut="if(tagger)tagger.checkTagHide(event);" onMouseOuta="currentTagArea = null; tagtimerID = setTimeout(function(){literal}{hide('tagname');currentTagArea = null;}{/literal}, 100);">
<div id="photoareaouter" onclick="nextPhoto();">


<div id="photoarea">


<div id="tagbox"><img id="tagboxspy" galleryimg="no" /></div>
<div id="tagframe">
<img id="tagframespy" galleryimg="no"/>
</div>
<div id="nw" class="tagframehandle"></div>
<div id="n" class="tagframehandle"></div>
<div id="ne" class="tagframehandle"></div>
<div id="w" class="tagframehandle"></div>
<div id="e" class="tagframehandle"></div>
<div id="sw" class="tagframehandle"></div>
<div id="s" class="tagframehandle"></div>
<div id="se" class="tagframehandle"></div>





  <a href='photo{$owner->user_info.user_id}_{$media_keys.$next_index}'>
<div id="fadedphoto"></div>
<span id="tagname" onMouseMove="cancelEvent(event);return false;" onMouseMovea="clearTimeout(tagtimerID);clearTimeout(tagtimerID-1);return cancelEvent(event);" onMouseOuta="currentTagArea = null; tagtimerID = setTimeout(function(){literal}{hide('tagname');}{/literal}, 100);"></span>
<div id="tagset"></div>
<span id="myphotolink">
    {* CREATE WRAPPER DIV *}
 <div  id="myphoto" galleryimg="no">

      {* DISPLAY FILE/IMAGE *}
      {$file_src}

    </div></a>
</span>

{literal}<script>
var preload_img = new Image(1,1);
if (ph[this_id]) {preload_img.src = ph[this_id][2];}
 else if (ph[0]) {preload_img.src = ph[0][2];}
</script>{/literal}


</div></div>

   <div id="selector" style="display: none; z-index: 5;">


   <div id="nameLabel"><div id="nameInner">Впишите имя</div></div>
   <div id="whitePanel">
    <input class="inputText" id="name" autocomplete="off" size=20 onkeyup="tagger.refineSelector(event);">
    <label id="userlistlabel">или выберите друга:</label>
   </div>
   <div id="userlist"><div id="selectorFriendsCont" style="margin: 4px;"><div style="width: 100%; text-align: center"><img src="images/upload.gif"></div></div></div>
   <div class="buttons">
    <table id="selector_buttons" border=0 width="100%"><tr><td class="hm">

    <a href="javascript:tagger.submitInput(ge('name').value);"><div class="tag"><div class="tagLine">Добавить</div></div></a>
    </td><td class="hm">
    <a href="javascript:tagger.endTagging();"><div class="cancel"><div class="cancelLine">Отмена</div></div></a>
    </td></table>
   <div id="selector_progressbar" align="center" style="display: none"><img src="/images/progressbar.gif"></div>
   </div>
   </div>
</div>


{literal}<script>
addEvent(window, 'load', function(){
	tagger.create('42329_109580', []);
	addEvent(document, 'keydown', photoKeydown);
});
</script>{/literal}

<div id="photoborder" class="clearfix">
	<div id="photocaptionleft" style='position: relative'>
		<span id='ph_overlay'></span>
		<div id="photoLocation">
			<span class="text">Отправитель:</span>
			<div id='author_in'><a class="memLink" href="/id{$owner->user_info.user_id}">{$owner->user_displayname}</a></div>

		</div>

		<span id="photocaption_wrap"></span>
		<div id="phototags_wrap"><div id="phototags"></div></div>
		<div class="clearFix">
<link type="text/css" rel="stylesheet" href="/css/al/photos.css?37"></link><link type="text/css" rel="stylesheet" href="/css/al/photos_add.css?10"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/privacy.css?28"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?47"></link><script type="text/javascript" src="/js/al/common.js?628"></script><script type="text/javascript" src="/js/lang0_0.js?5145"></script><script type="text/javascript" src="/js/al/photos.js?41"></script><script type="text/javascript" src="/js/al/upload.js?42"></script><script type="text/javascript" src="/js/al/sorter.js?15"></script><script type="text/javascript" src="/js/al/photos_add.js?14"></script><script type="text/javascript" src="/js/lib/ui_controls.js?108"></script><script type="text/javascript" src="/js/al/privacy.js?50"></script><script type="text/javascript" src="/js/al/qsorter.js?8"></script><script type="text/javascript" src="/js/al/notifier.js?127"></script>

			<link type="text/css" rel="stylesheet" href="/css/al/profile.css?102"></link><link type="text/css" rel="stylesheet" href="/css/al/page.css?200"></link><link type="text/css" rel="stylesheet" href="/css/al/photoview.css?60"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?47"></link><script type="text/javascript" src="/js/al/common.js?628"></script><script type="text/javascript" src="/js/lang0_0.js?5143"></script><script type="text/javascript" src="/js/al/profile.js?99"></script><script type="text/javascript" src="/js/al/page.js?264"></script><script type="text/javascript" src="/js/al/photoview.js?134"></script><script type="text/javascript" src="/js/al/notifier.js?127"></script>

<div id="pv_date_wrap" class="fl_l"></div>		</div>
	</div>

</div>
		<script type="text/javascript">maxTagCount = 35;</script>

<div id="photoinfo" style='position: relative'>
	<span id='pr_overlay'></span>
	<div id="photoactions_container">
	<div id="photoactions">



		<div id="rotating"></div>
</div>

	<div id="actionMessage42329_109580" style="display:none;"></div>
	</div>
	<div id="photocomment">
<div id="photocomment">
			{section name=comment_loop loop=$comments}
<div id="comm{$comments[comment_loop].comment_id}" class="comment">
  <div class="body">
    <a href="/id$comments[comment_loop].comment_author->user_info.user_id}" class="userpic">
    	<img src="http://vcs2.vseti.by/u371607/c0_9867.jpg">
    </a>
	  <div class="justComment">
	    <div class="header">
	    	<a class="memLink" href="/id{$comments[comment_loop].comment_author->user_info.user_id}">{$comments[comment_loop].comment_author->user_info.user_fname} {$comments[comment_loop].comment_author->user_info.user_lname}</a><br>
	    	<small></small>
	    </div>
	    <div class="text">{$comments[comment_loop].comment_body}</div>
	    <div class="actions">
				<img id="action_progress23111023" src="images/upload.gif" />
					<a href="mail.php?act=write&to=371607">Сообщение</a>
									<span class="divider">|</span><a href="" onclick="editComment(371607,23111023); return false;">Редактировать</a>
													<span class="divider">|</span><a href="#" onclick="deleteComment(371607,23111023); return false;">Удалить</a>
							</div>
		</div>
	</div>
</div>

{/section}
		&nbsp;<div id='commentsBody'>


	<div class="separator"></div></div>
	</div>
	<div id="commenterror"></div>


 </form></div>
	<br clear="both">
</div>{literal}<script type="text/javascript">
function switchToSlow() {
  setCookie('remixnotajaxphotos', 1, 14);
  var hash = window.location.hash;
  var index = hash.indexOf('photo');
  if (index) {
    window.location.href = 'http://' + window.location.host + '/' + hash.substr(index).replace('/', '');
  } else {
    window.location.href = 'http://' + window.location.host + window.location.pathname;
  }
}
</script>{/literal}


   </div>
  </div>
  </div>


</div>

{include file="footer.rpl"}