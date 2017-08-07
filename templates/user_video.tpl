{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/video.css?57"></link><link type="text/css" rel="stylesheet" href="/css/al/videoview.css?72"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?48"></link><script type="text/javascript" src="/js/lang0_0.js?5315"></script><script type="text/javascript" src="/js/al/video.js?73"></script><script type="text/javascript" src="/js/al/videoview.js?105"></script><script type="text/javascript" src="/js/al/indexer.js?5"></script><script type="text/javascript" src="/js/al/notifier.js?132"></script>  <div id="stl_left"></div><div id="stl_side"></div>
<link href="/css/al/video_edit.css" rel="stylesheet" type="text/css">

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
    <div id="content"><div id="video_search" class="video_search ">
  <a class="video_add_new" onclick="return !showBox('user_video_upload.php?task=youtube')"><span></span>Добавить видеоролик</a>
  <div class="video_loading"></div>
  <div id="video_reset_search" class="video_reset_search" onmouseover="setStyle(this,{literal} {opacity: 1});" onmouseout="setStyle(this, {opacity: 0.6}{/literal});" onclick="Video.searchVideos(false);"></div>
  <form method="POST" action="al_search.php?c[section]=video" name="qsearch">
  <input type="text" id="v_search" class="text video_search_input" placeholder="Поиск по видеозаписям"  />

    </form>
</div>
<div class="summary_wrap">
  <div id="video_summary" class="summary">{if $videos_total != 0}{$videos_total} {include file='sklonenie_videos.tpl}{else}Нет видеозаписей{/if}</div>
</div>
<table class="video_layout " cellspacing="0" cellpadding="0"><tr><td class="main_panel">
<div class="video_list">
{if $videos_total != 0}
{section name=video_loop loop=$videos} <div id="video_rows" class="video_row_cont">  {if $videos[video_loop].video_title == ""}{capture assign="video_title"}{lang_print id=589}{/capture}{else}{assign var="video_title" value=$videos[video_loop].video_title}{/if}<div id="video_row$owner->user_info.user_id}_{$videos[video_loop].video_id}"  class="video_row_cont">

<table class="video_row video_row_first" cellspacing="0" cellpadding="0"><tr>
<td class="video_thumb"><a href="/video40297585_160212581"  onclick="return showVideo('{$videos[video_loop].video_id}_{$owner->user_info.user_id}', 'videos{$owner->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);"><img src="{if $videos[video_loop].video_thumb}{$videos[video_loop].video_dir}{$videos[video_loop].video_id}_thumb.jpg{else}./images/nophoto.gif{/if}"width='130' height='97' /></a></td>
<td class="video_info">
  <div class="video_info_cont">

    <a class="video_name" href="/video{$owner->user_info.user_id}_{$videos[video_loop].video_id}" onclick="return showVideo('{$videos[video_loop].video_id}_{$owner->user_info.user_id}', 'videos{$owner->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);" />{$video_title}</a><br />

    <div class="video_desc">{$videos[video_loop].video_desc|replace:"&#039;":"\&#039;"}</div>

  </div>
</td>
</tr></table></div>{/section}
</div>
</div></div>
<div id="video_search_summary" class="summary_wrap" style="display: none"></div>
<div id="video_search_rows">
</div>

<div>
<div id="not_found" class="video_info_msg " style="display: none;">
  <span class="video_empty">Нет ни одной видеозаписи.</span>
  <span class="video_by_search">По запросу <b><span id="search_ph"></span></b> не найдено ни одного видео.</span>
  <span class="video_empty_album">В этом альбоме ещё нет видеозаписей.</span>
</div>
</div>
<div id="page_end"></div>
</td>
{else}
<div>
<div id="not_found" class="video_info_msg " style="">
<span class="video_empty">
Вы можете хранить неограниченное количество видеофайлов.
<br>
<br>
Для того, чтобы добавить Ваш первый видеоматериал,
<a onclick="return Video.uploadVideoBox();">нажмите сюда</a>
.
</span>
<span class="video_by_search">
<span class="video_empty_album">В этом альбоме ещё нет видеозаписей.</span>
</div>
</div>
<div id="page_end"></div>
</div>
</td>
{/if}
<td class="side_panel">
 <a href='search?c[section]=video' style="text-decoration: none;">
<div id="video_section_filter">
<div id="video_section_all" class="side_filter cur_section">Все видеозаписи</div>
<div id="video_search_options" style="display: none">
  <div class="video_filter_sep"></div>
  <div id="video_section_search" class="side_filter " onmousedown="return nav.change({literal}{'0':'video', section:'search'}{/literal}, event);" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');">Результаты поиска</div>
  <div class="video_addition_options" id="video_addition_options">
    <div class="checkbox fl_l" id="video_duration_option" onclick="checkbox(this); Video.toggleOrder(1);"><div></div>По длительности</div>
    <div class="checkbox fl_l" id="video_hd_option" onclick="checkbox(this); Video.toggleHD(1);"><div></div>Высокое качество</div>
    <div class="checkbox fl_l" id="video_hd2_option" style="display: none;" onclick="checkbox(this); Video.toggleHD(2);"><div></div>HD качество</div>
    <br class="clear" />
  </div>
   </a>
</div>
</div>

</td></tr></table></div>
  </div>
</div></div>
    </div>
{include file='footer.tpl'}
