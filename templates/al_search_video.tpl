{if $ra != 1 AND $al != 1}{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?32"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link><script type="text/javascript" src="/js/al/common.js?710"></script><script type="text/javascript" src="/js/lang0_0.js?5564"></script><script type="text/javascript" src="/js/al/search.js?61"></script><script type="text/javascript" src="/js/lib/ui_controls.js?110"></script><script type="text/javascript" src="/js/al/notifier.js?152"></script> 
<body onresize="onBodyResize()" class="is_rtl">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

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
    <div id="content"><div id="search_content">
  <div id="search_query_wrap" class="wide clear_fix">
  <div class="clear_fix">
    <div class="search_isearch fl_l" onclick="event.cancelBubble = true;">
      <div class="search_input_cont">
        <input type="text" class="text" id="search_query" placeholder="Начните вводить любое имя, название или слово" autocomplete="on" value="" />
      </div>
    </div>
    <div id="search_query_reset" class="fl_l" ></div>
    <div id="search_query_progress" class="fl_l" ></div>
    <div class="fl_r search_submit">
      <div class="button_blue button_wide"><button id="search_submit" onclick="window.searcher.updResults(true);"/>Поиск</button></div>
    </div>
  </div>
  <div id="search_section_tabs" style="">
  <div id="search_people_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('people', true, event);">
  <div class="search_subtab2">
    Люди
  </div>
</div><div id="search_communities_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('communities', true, event);">
  <div class="search_subtab2">
    Сообщества
  </div>
</div><div id="search_audio_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('audio', true, event);">
  <div class="search_subtab2">
    Аудиозаписи
  </div>
</div><div id="search_video_tab" class="search_subtab1 fl_l active" onmousedown="return searcher.switchSection('video', true, event);">
  <div class="search_subtab2">
    Видеозаписи
  </div>
</div>
</div>

  <div id="filters">  
  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="" />
    <input type="hidden" id="section" name="c[section]" value="video" />
    <input type="hidden" id="c[hd]" name="c[hd]" value="" /><input type="hidden" id="c[sort]" name="c[sort]" value="2" />
  </form></div>
</div>
<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Найденные видеозаписи
  </div>
</div>
<div id="results_wrap">
  <div id="results" class="results video_results">
  <div id="no_results" class="">Введите критерии поиска</div>
</div>
</div>

</div>
</div>
</div></div>
  </div>
</div>
 
  {literal}<script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
if (browser.iphone || browser.ipad || browser.ipod) {
  setStyle(bodyNode, {webkitTextSizeAdjust: 'none'});
}window.lang = extend(window.lang || {}, {
  search_back_to: 'Результаты поиска',
  head_search: 'поиск',
  search_audio_added: 'Добавлено'
});
searcher.init({"section":"video","has_more":true,"offset":80,"q":"{/literal}{$search}{literal}"});var filterTypes = [[2,"По релевантности"],[0,"По дате добавления"],[1,"По длительности"]];
if (cur.sortDD) {
  re(cur.sortDD.container);
}
cur.sortDD = new DropdownMenu(filterTypes, {
  target: ge('search_sort_dd'),
  value: 2,
  fadeSpeed: 0,
  onSelect: function(event) {
    if (event) searcher.switchFilter('sort', event.target.index || 0);
  }
});var ads = "";
if (ge('left_ads')) ge('left_ads').innerHTML = ads;
toggle(ge('left_ads'), !!ads);
if (1) {
  hide('support_link_td');
}
var ts_input = ge('ts_input'), oldFF = browser.mozilla && parseInt(browser.version) < 8;
if (browser.mozilla && !oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
placeholderSetup(ts_input, {back: false, reload: true});
if (browser.opera || browser.msie || oldFF) {
  setStyle(ts_input, {padding: (vk.rtl ? '3px 22px 4px 4px' : '3px 4px 4px 22px')});
}
if (browser.chrome) {
  setStyle(ts_input, {padding: (vk.rtl ? '4px 23px 3px 2px' : '4px 3px 3px 23px')});
}
TopSearch.init();
if (browser.msie8 || browser.msie7) {
  var st = {border: '1px solid #a6b6c6'};
  if (hasClass(ge('ts_wrap'), 'vk')) {
    if (vk.rtl) st.left = '1px';
    else st.right = '0px';
  } else {
    if (vk.rtl) st.right = '146px';
    else st.left = '146px';
  }
  setStyle(ge('ts_cont_wrap'), st);
}
window.tsHintsEnabled = 0;
zNav([], {});
handlePageParams({"id":40297585,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', 'ae98ae6a5db358622b')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> день рождения <a href=\"\/scoch1\" onclick=\"return nav.go(this, event)\">Евгения Фадеева<\/a>, <a href=\"\/id27298707\" onclick=\"return nav.go(this, event)\">Лилии Аглиуллиной<\/a>, <a href=\"\/twinkaa\" onclick=\"return nav.go(this, event)\">Владислава Романова<\/a>, <a href=\"\/id33985271\" onclick=\"return nav.go(this, event)\">Sasuke Дёни<\/a>, <a href=\"\/semochkin_vasya\" onclick=\"return nav.go(this, event)\">Васи Сёмочкина<\/a>, <a href=\"\/lera2leracom\" onclick=\"return nav.go(this, event)\">Валерии Козловой<\/a>, <a href=\"\/idleraleracom\" onclick=\"return nav.go(this, event)\">Валерии Козловой<\/a>, <a href=\"\/id116736437\" onclick=\"return nav.go(this, event)\">Кирилла Крутских<\/a>, <a href=\"\/id121098706\" onclick=\"return nav.go(this, event)\">Артёма Шанченко<\/a>, <a href=\"\/id134278142\" onclick=\"return nav.go(this, event)\">Женька Будника<\/a>, <a href=\"\/id138026198\" onclick=\"return nav.go(this, event)\">Руслана Карташова<\/a>.\n    <\/div>\n  <\/div>\n<\/div><div id=\"left_block5_0\" onmouseover=\"leftBlockOver('5_0')\" onmouseout=\"leftBlockOut('5_0')\">\n  <div id=\"left_hide5_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('5_0', '1a8f2c29d81dc248a6')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> состоится встреча <a href=\"\/event32703076\" onclick=\"return nav.go(this, event)\">Скачать лучшую кн...<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"","level":1,"loc":"search?c%5Bq%5D=supernatural&c%5Bsection%5D=video&c%5Bsort%5D=2","nophone":1,"width":791,"width_dec":160,"width_dec_footer":130});addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue40297585","timestamp":"210128532","key":"2lQpdVP456nZo21mn6OeqTgk9jo3Mu94VaavlkR41JLM23PSQ_JAt2_B","uid":40297585,"version":9,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"NjI2MDE=","server_url":"http:\/\/q48.queue.vkontakte.ru\/im585","frame_path":"http:\/\/q48.queue.vkontakte.ru\/q_frame.php?6","frame_url":"im585","refresh_url":"http:\/\/vkontakte.ru\/notifier.php","fc":{"version":22,"state":{"clist":{"min":true,"x":-1,"y":0.000000},"tabs":[],"version":21}}});});addEvent(document, 'click', onDocumentClick);
    }
  </script>{/literal}
{include file='footer.tpl'}
{/if}
{if $ra == 1}4658<!>ui_controls.css,ui_controls.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"video","has_more":false,"offset":0,"q":"","summary":"Ничего не найдено","script":"","htitle":"Поиск видеозаписей","loc":"search?c%5Bsection%5D=video"}{/literal}<!><div id="results_wrap">
<div class="summary_wrap clear_fix">

  {section name=video_loop loop=$videos max=10000}

<div class="videos_row clear_fix">
  <div class="img fl_l">
    <a class="image_div"  href="video30871390_91514185?noiphone" onclick="return showVideo('{$videos[video_loop].video_id}_{$videos[video_loop].video_author->user_info.user_id}', 'videos{$videos[video_loop].video_author->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);"> <img src="{if $videos[video_loop].video_thumb}{$videos[video_loop].video_dir}{$videos[video_loop].video_id}_thumb.jpg{else}./images/video_placeholder.gif{/if}"  width='128' height='100'/> </a>
   
  </div>
  <div class="info fl_l">
    <div class="title"><a  href="video30871390_91514185?noiphone" onclick="return showVideo('{$videos[video_loop].video_id}_{$videos[video_loop].video_author->user_info.user_id}', 'videos{$videos[video_loop].video_author->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);"><span class="match">{$videos[video_loop].video_title}</span></a></div>
    <div class="stats">Просмотры: {$videos[video_loop].video_views}, Коментарии: {$videos[video_loop].total_comments}</div>
    
    
  </div>
</div>






{/section}
</div>
</div><!><!>  
  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="" />
    <input type="hidden" id="section" name="c[section]" value="video" />
    <input type="hidden" id="c[hd]" name="c[hd]" value="" /><input type="hidden" id="c[sort]" name="c[sort]" value="2" />
  </form><!>{/if}
{if $al == 1 AND $ra != 1}4658<!>ui_controls.css,ui_controls.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"video","has_more":true,"offset":80,"summary":"Найденные видеозаписи<span style=\"font-size:60%\"> <\/span><a class=\"video_hd_link\" href=\"\/#\" onclick=\"searcher.switchFilter('hd', 1); return false\"><\/a><a id=\"search_sort_dd\" class=\"dd_link fl_r\"><\/a>","script":"var filterTypes = [[2,\"По релевантности\"],[0,\"По дате добавления\"],[1,\"По длительности\"]];\nif (cur.sortDD) {\n  re(cur.sortDD.container);\n}\ncur.sortDD = new DropdownMenu(filterTypes, {\n  target: ge('search_sort_dd'),\n  value: 2,\n  fadeSpeed: 0,\n  onSelect: function(event) {\n    if (event) searcher.switchFilter('sort', event.target.index || 0);\n  }\n});","htitle":"Поиск видеозаписей по запросу а","loc":"search?c%5Bq%5D=%D0%B0&c%5Bsection%5D=video&c%5Bsort%5D=2"}{/literal}<!>{section name=video_loop loop=$videos max=10000}
<div class="videos_row clear_fix">
  <div class="img fl_l">
    <a class="image_div"  href="video30871390_91514185?noiphone" onclick="return showVideo('{$videos[video_loop].video_id}_{$videos[video_loop].video_author->user_info.user_id}', 'videos{$videos[video_loop].video_author->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);"> <img src="{if $videos[video_loop].video_thumb}{$videos[video_loop].video_dir}{$videos[video_loop].video_id}_thumb.jpg{else}./images/video_placeholder.gif{/if}"  width='128' height='100'/> </a>
  </div>
  <div class="info fl_l">
    <div class="title"><a  href="video30871390_91514185?noiphone" onclick="return showVideo('{$videos[video_loop].video_id}_{$videos[video_loop].video_author->user_info.user_id}', 'videos{$videos[video_loop].video_author->user_info.user_id}', {literal}{autoplay: 1}{/literal}, event);"><span class="match">{$videos[video_loop].video_title}</span></a></div>
    <div class="stats">Просмотры: {$videos[video_loop].video_views}, Коментарии: {$videos[video_loop].total_comments}</div>
  </div>
</div>
{/section}</div>
</a><!><!><!>{/if}