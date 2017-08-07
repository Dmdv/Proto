

{include file='header_top.tpl'}

{include file='header_shapka.tpl'}

{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?19"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?24"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?34"></link><script type="text/javascript" src="/js/al/common.js?528"></script><script type="text/javascript" src="/js/lang0_0.js?4606"></script><script type="text/javascript" src="/js/al/search.js?42"></script><script type="text/javascript" src="/js/lib/ui_controls.js?103"></script><script type="text/javascript" src="/js/lib/selects.js?15"></script><script type="text/javascript" src="/js/al/notifier.js?102"></script>



<div id="page_body" class="fl_r">
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
    <div id="content"><div id="search_content">
  <div class="search_query_wrap clear_fix">
  <div class="search_isearch fl_l">
    <div class="search_input_cont">
      <input type="text" class="text" id="search_query" placeholder="Начните вводить любое слово или имя" autocomplete="off" value="{$search}" />
    </div>
  </div>
  <div id="search_query_reset" class="fl_l" ></div>
  <div class="fl_l search_submit">
    <a href="browse_videos.php?search={$search}"><div class="button_blue"><button id="search_submit" >Поиск</button></div></a>
  </div>
</div>
<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Найдено 4 видеофайла.
  </div>
</div>
<table id="search_results" class="search_results">
  <tr>
  

    <td id="results" class="results video_results">
{section name=video_loop loop=$videos}

      <div class="videos_row clear_fix">
  <div class="img fl_l">
    <a href='{$url->url_create("video", $videos[video_loop].video_author->user_info.user_username, $videos[video_loop].video_id)}'><img src='{if $videos[video_loop].video_thumb}{$videos[video_loop].video_dir}{$videos[video_loop].video_id}_thumb.jpg{else}./images/video_placeholder.gif{/if}' border='0' width='{$setting.setting_video_thumb_width}' height='{$setting.setting_video_thumb_height}'> </a>
  </div>
 {if $videos[video_loop].video_title == ""}{capture assign="video_title"}{lang_print id=589}{/capture}{else}{assign var="video_title" value=$videos[video_loop].video_title}{/if}
  <div class="info fl_l">
    <div class="title"><a href='{$url->url_create("video", $videos[video_loop].video_author->user_info.user_username, $videos[video_loop].video_id)}'>{$video_title|truncate:55:'...':true}</a></div>
    <div class="desc"></div>
    <div class="stats">Просмотры: {$videos[video_loop].video_views}, Коментарии: {$videos[video_loop].total_comments}  </div>
    {section name=full_loop start=0 loop=$videos[video_loop].video_rating_full}
  	      <img src='./images/icons/video_rating_full_small.gif' border='0'>
  	    {/section}
	    {if $videos[video_loop].video_rating_part}<img src='./images/icons/video_rating_part_small.gif' border='0'>{/if}
            {section name=none_loop start=0 loop=$videos[video_loop].video_rating_none}
	      <img src='./images/icons/video_rating_none_small.gif' border='0'>
	    {/section}
  </div>
</div>{/section}
</div>
    </td>
    <td id="filters" class="filters">
      <div id="sections_filter">
      <div id="filter_quick" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('quick', true);">
  Быстрый поиск 
</div><div id="filter_people" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('people', true);">
  Люди 
</div><div id="filter_audio" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('audio', true);">
  Аудиозаписи 
</div><div id="filter_video" class="side_filter cur_section" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('video', true);">
  Видеозаписи
</div><div id="filter_statuses" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('statuses', true);">
  Новости 
</div><div id="filter_groups" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('groups', true);">
  Группы 
</div><div id="filter_events" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('events', true);">
  События 
</div><div id="filter_publics" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('publics', true);">
  Страницы 
</div><div id="filter_apps" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('apps', true);">
  Приложения 
</div><div id="filter_notes" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('notes', true);">
  Заметки 
</div><div id="filter_topics" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('topics', true);">
  Темы 
</div>
      </div>
      <div id="search_filters">
        
  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="minecraft1" />
    <input type="hidden" id="section" name="c[section]" value="video" />
    <div class="no_select filter_open" onclick="searcher.toggleFilter(this, 'sort_filter');" onselectstart="return false">
 Порядок
</div>
<div class="divider2px"></div>
<div style="" class="inner_filter" id="sort_filter">
<div class="control">
<input id="notesSort" name="c[sort]" />
</div>
</div><div class="no_select filter_open" onclick="searcher.toggleFilter(this, 'video_filter');" onselectstart="return false">Качество видео</div>
<div class="divider2px"></div>
<div style="" class="inner_filter" id="video_filter">

<input type="hidden" name="c[hd]" id="hd_only" value="0" />

<div id="c_quality" class="control" style="display:none">
<input id="quality" name="c[quality]" class="text" />
</div>

<input type="hidden" name="c[iphone]" id="iphone" value="0" />

</div>

  </form>
      </div>
      <div id="side_ads_wrap">
      
      </div>
    </td>
  </tr>
</table>
</div></div>
  </div>
</div></div>
    </div>



{include file='footer.tpl'}