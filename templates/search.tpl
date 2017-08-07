{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?19"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?34"></link><script type="text/javascript" src="/js/al/common.js?526"></script><script type="text/javascript" src="/js/lang0_0.js?4601"></script><script type="text/javascript" src="/js/al/search.js?42"></script><script type="text/javascript" src="/js/al/notifier.js?100"></script>


{* JAVASCRIPT TO AUTOFOCUS ON SEARCH FIELD *}
{literal}
<script type="text/javascript">
<!-- 
  window.addEvent('load', function(){ $('search_text').focus(); });
//-->
</script>
{/literal}

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
<form action='brows_music.php' name='search_form' method='post'>
      <input type="text" class="text" id="search_query" name='search_text' placeholder="Начните вводить любое слово или имя" autocomplete="off" value="{$search_text}" />
  
</div>
  </div>
  <div id="search_query_reset" class="fl_l" ></div>
  <div class="fl_l search_submit"><input type='hidden' name='task' value='dosearch'>
    <input type='hidden' name='t' value='0'>
    <div class="button_blue"><button id="search_submit">Поиск</button></div>

  </div>
</div>
</form>  

<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
   Поиск
  </div>
</div>
<table id="search_results" class="search_results">
  <tr>
 
    <td id="results" class="results quick_results">
 {section name=result_loop loop=$results}



      <a class="sub_item " href="/{$results[result_loop].result_id}" onclick="return nav.go(this, event);">
  <div class="s_photo fl_l"><img src="{$results[result_loop].result_icon}" /></div>
  <div class="s_title s_wide fl_l">
  {capture assign='result_title'}{lang_sprintf id=$results[result_loop].result_name 1=$results[result_loop].result_name_1}{/capture}
   {$result_title|truncate:40:"...":true}

    <div>{if $results[result_loop].result_online == 1}ВСети{/if}</div>

        {cycle name="clear_cycle" values=",<div style='clear: both; height: 0px;'></div>"}
  </div>
</a>


{/section}
    </td>
    <td id="filters" class="filters">
      <div id="sections_filter">
      <div id="filter_quick" class="side_filter cur_section" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('quick', true);">
  Быстрый поиск 
</div><div id="filter_people" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('people', true);">
  Люди 
</div><div id="filter_audio" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('audio', true);">
  Аудиозаписи 
</div><div id="filter_video" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('video', true);">
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
{literal}<script>
onDomReady(function(){
  placeholderSetup('quickquery');
  if(browser.chrome)ge('quickquery').style.width = (17 + ge('quickquery').offsetWidth)+'px';
  var gotoAudioSearch = function(e) {
   if (!e) return true;
   if (e.keyCode != 13) {
    return true;
   }
   var qi = ge('quickquery').value;
   if (!qi.length) {
    return false;
   }
   window.location = base_domain+'gsearch.php?section=audio&q='+qi+'';
  }
  addEvent('quickquery', 'keypress', gotoAudioSearch);
});
</script>
{/literal}