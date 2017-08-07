{if $ajax_page != 1}{include file='header_top.tpl'}

{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
{/if}
  
<link type="text/css" rel="stylesheet" href="/css/al/search.css?19"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?34"></link><script type="text/javascript" src="/js/al/common.js?526"></script><script type="text/javascript" src="/js/lang0_0.js?4597"></script><script type="text/javascript" src="/js/al/search.js?42"></script><script type="text/javascript" src="/js/al/notifier.js?100"></script>
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
      <input type="text" class="text" id="search_query" placeholder="Начните вводить любое слово или имя" autocomplete="off" value="" />
    </div>
  </div>
  <div id="search_query_reset" class="fl_l" ></div>
  <div class="fl_l search_submit">
    <div class="button_blue"><button id="search_submit" onclick="window.searcher.updResults(true);"/>Поиск</button></div>
  </div>
</div>
<div style="display: none; padding: 10px 10px 0px;"><div id="market_is_closing" style="padding: 10px; line-height: 130%; background: #F7F7F7; border: 1px solid #DAE1E8">
</div></div>
<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Поиск
  </div>
</div>

<table id="search_results" class="search_results">
  <tr>
    <td id="results" class="results quick_results">
{if $randoms|@count > 0} 
				 {section name=randoms_loop loop=$randoms max=10}
      <a class="sub_item " href="/id{$randoms[randoms_loop]->user_info.user_id}">
  <div class="s_photo fl_l"><img src="{$randoms[randoms_loop]->user_photo('./images/nophoto.gif')}"width='100' border='0' /></div>
  <div class="s_title s_wide fl_l">
    {$randoms[randoms_loop]->user_info.user_fname} {$randoms[randoms_loop]->user_info.user_lname}
    <div></div>
  </div>
</a>

      {/section}
    {/if}
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
</div><div id="filter_ads" class="side_filter" onmouseover="addClass(this, 'side_filter_over');" onmouseout="removeClass(this, 'side_filter_over');" onclick="searcher.switchSection('ads', true);">
  Объявления 
</div>
      </div>
      <div id="search_filters">
        
  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="" />
    <input type="hidden" id="section" name="c[section]" value="quick" />
    

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


  <div class="progress" id="global_prg"></div>
 {include file='footer.tpl'}