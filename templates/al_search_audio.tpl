{if $ra != 1 AND $al != 1}{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<script type="text/javascript" src="http://s1.vceti.net/js/common.js?753"></script>{literal}
<script type="text/javascript">
function addAudio(id,aid) {
  if (ge('addaudio'+id).shown != 1) {
   show(ge('addaudio'+id));
         var ajaxAudios = new Ajax();
         ajaxAudios.onDone = function(ajaxAudios, responseText){
             ge('addaudio'+id).innerHTML = "<div>"+responseText+"</div>";
    ge('addaudio'+id).shown = 1;
         };
         ajaxAudios.post('/music_add_ajax.php', {
             'aid': aid
         });
         ge('addaudio'+id).innerHTML = "<div><img valign='middle' src='/images/upload.gif'></div>";
        }
}
</script>{/literal}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?32"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link><script type="text/javascript" src="/js/al/common.js?710"></script><script type="text/javascript" src="/js/lang0_0.js?5578"></script><script type="text/javascript" src="/js/al/search.js?61"></script><script type="text/javascript" src="/js/lib/ui_controls.js?110"></script><script type="text/javascript" src="/js/al/notifier.js?155"></script>
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
        <input type="text" class="text" id="search_query" placeholder="Начните вводить любое имя, название или слово" autocomplete="off" value="" />
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
</div><div id="search_audio_tab" class="search_subtab1 fl_l active" onmousedown="return searcher.switchSection('audio', true, event);">
  <div class="search_subtab2">
    Аудиозаписи
  </div>
</div><div id="search_video_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('video', true, event);">
  <div class="search_subtab2">
    Видеозаписи
  </div>
</div>
</div>
  <div id="filters">  
  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="{$search}" />
    <input type="hidden" id="section" name="c[section]" value="audio" />
    <input type="hidden" id="c[sort]" name="c[sort]" value="" />
  </form></div>
</div>
<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Популярные аудиозаписи
  </div>
</div>
<div id="results_wrap">
  <div id="results" class="results highlight audio_results">
    {section name=browse_music_list_loop loop=$browse_music_list}
    {assign var='media_dir' value=$url->url_userdir($browse_music_list[browse_music_list_loop].user_id)}
    {assign var='media_path' value="`$media_dir``$browse_music_list[browse_music_list_loop].music_id`.`$browse_music_list[browse_music_list_loop].music_ext`"} <div class="audios_row clear_fix" onmouseover="addClass(this, 'over');" onmouseout="removeClass(this, 'over');">
  <div class="audio" id="audio{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
  <table cellspacing="0" cellpadding="0" width="100%">
    <tr>
      <td>
        <a onclick="playAudioNew('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}')"><div class="play_new" id="play{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}"></div></a>
        <input type="hidden" id="audio_info{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" value="/uploads_user/1000/{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}/{$browse_music_list[browse_music_list_loop].music_id}.mp3" />
        
      </td>
      <td class="info">
        <div class="duration fl_r" onmousedown="if (window.audioPlayer) audioPlayer.switchTimeFormat('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}', event);">4:41</div>
        <div class="audio_title_wrap"><b><a href="/search?c[section]=audio&c[q]={$browse_music_list[browse_music_list_loop].music_title}" onclick="return nav.go(this, event);">{$browse_music_list[browse_music_list_loop].music_title}</a></b> <span class="user">(<a href='id{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}'>{$browse_music_list[browse_music_list_loop].music_uploader->user_displayname}</a>)</span></div>
      </td>
      <td class="actions">  <div style="width:19px;"></div></td>
    </tr>
  </table>
  <div class="player_wrap">
    <div id="line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="playline"><div></div></div>
    <div id="player{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="player" ondragstart="return false;" onselectstart="return false;">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top" id="audio_tr{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
          <td style="width:100%;padding:0px;position:relative;">
            <div id="audio_white_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_white_line" onmousedown="audioPlayer.prClick(event);"></div>
            <div id="audio_load_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_load_line" onmousedown="audioPlayer.prClick(event);"><!-- --></div>
            <div id="audio_progress_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_progress_line" onmousedown="audioPlayer.prClick(event);">
              <div id="audio_pr_slider{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_pr_slider"><!-- --></div>
            </div>
          </td>
          <td id="audio_vol{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" style="position: relative;"></td>
     <td class="play_btn">
		<div id="addaudio{$musiclist[music_loop].music_id}" style="width: 50;">
			<a class="addAudioLink" href="javascript: addAudio({$musiclist[music_loop].music_id}, {$musiclist[music_loop].music_id});">Добавить</a>
		</div>
     </td>
		  </tr>
      </table>
    </div>
  </div>
</div>
  <div class="repeat_wrap"><div onmouseover="showTooltip(this, {literal}{text: 'Повторять эту композицию', showdt: 200}{/literal})" id="repeat{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>
</div>     
    {/section} 
</div>
</div>
</div>
</div></div>
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
searcher.init({"section":"audio","has_more":true,"offset":200,"q":""});var filterTypes = [[0,"Вся музыка"],[1,"Зарубежная музыка"]];
if (cur.typeDD) {
  re(cur.typeDD.container);
}
cur.typeDD = new DropdownMenu(filterTypes, {
  target: ge('search_type_dd'),
  value: 0,
  fadeSpeed: 0,
  onSelect: function(event) {
    cur.topType = event.target.index || 0;
    searcher.switchSection('audio');
  }
});cur.audioTop = 1;var ads = "";
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
handlePageParams({"id":40297585,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', 'ae98ae6a5db358622b')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> день рождения <a href=\"\/vitalico_morales\" onclick=\"return nav.go(this, event)\">Виталика Моралеса<\/a>, <a href=\"\/demyanov_max\" onclick=\"return nav.go(this, event)\">Макса Демьянова<\/a>, <a href=\"\/vzlomstranic\" onclick=\"return nav.go(this, event)\">Ксении Бессмертных<\/a>, <a href=\"\/rb_maloy\" onclick=\"return nav.go(this, event)\">Ильдара Самитова<\/a>, <a href=\"\/id23264704\" onclick=\"return nav.go(this, event)\">Йы Епты<\/a>, <a href=\"\/hey.smile\" onclick=\"return nav.go(this, event)\">Алексея Игошина<\/a>, <a href=\"\/wtfnedway\" onclick=\"return nav.go(this, event)\">Антона Орлова<\/a>, <a href=\"\/denis_komyshev\" onclick=\"return nav.go(this, event)\">Дениса Комышева<\/a>, <a href=\"\/id51210386\" onclick=\"return nav.go(this, event)\">Its Taw<\/a>, <a href=\"\/skript25\" onclick=\"return nav.go(this, event)\">Андрея Ковгана<\/a>, <a href=\"\/id88664732\" onclick=\"return nav.go(this, event)\">Татьяны Тарасовой<\/a>, <a href=\"\/pasha_pioner\" onclick=\"return nav.go(this, event)\">Павла Пионерского<\/a>, <a href=\"\/id133022111\" onclick=\"return nav.go(this, event)\">Никиты Лукьянова<\/a>.\n    <\/div>\n  <\/div>\n<\/div><div id=\"left_block5_0\" onmouseover=\"leftBlockOver('5_0')\" onmouseout=\"leftBlockOut('5_0')\">\n  <div id=\"left_hide5_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('5_0', '1a8f2c29d81dc248a6')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> состоится встреча <a href=\"\/event29390214\" onclick=\"return nav.go(this, event)\">Кино<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"","level":1,"loc":"search?c%5Bsection%5D=audio","nophone":1,"width":791,"width_dec":160,"width_dec_footer":130});addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue40297585","timestamp":"69431824","key":"rD5EFhAMfI6xwKrnXVSzPI51q6g490y3GC5GpdEfcWAqf2h_eL9UULE9","uid":40297585,"version":9,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"Mjk2MzAy","server_url":"http:\/\/q43.queue.vkontakte.ru\/im585","frame_path":"http:\/\/q43.queue.vkontakte.ru\/q_frame.php?6","frame_url":"im585","refresh_url":"http:\/\/vkontakte.ru\/notifier.php","fc":{"version":23,"state":{"clist":{"min":true,"x":-1,"y":0.000000},"tabs":[],"version":21}}});});addEvent(document, 'click', onDocumentClick);
    }
	
function addAudio(id,aid) {
  if (ge('addaudio'+id).shown != 1) {
   show(ge('addaudio'+id));
         var ajaxAudios = new Ajax();
         ajaxAudios.onDone = function(ajaxAudios, responseText){
             ge('addaudio'+id).innerHTML = "<div>"+responseText+"</div>";
    ge('addaudio'+id).shown = 1;
         };
         ajaxAudios.post('/music_add_ajax.php', {
             'aid': aid
         });
         ge('addaudio'+id).innerHTML = "<div><img valign='middle' src='/images/upload.gif'></div>";
        }
}
  </script>{/literal}


{include file='footer.tpl'}
{/if}
{if $ra == 1}
4658<!>ui_controls.css,ui_controls.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"audio","has_more":true,"offset":200,"q":"","summary":"Популярные аудиозаписи<span class=\"divider\">|<\/span><span><a href=\"search?c[section]=audio&rec=1\" onclick=\"return searcher.switchAudioTop(1);\">Рекомендации<\/a><\/span><a id=\"search_type_dd\" class=\"dd_link fl_r\">Вся музыка<\/a>","script":"var filterTypes = [[0,\"Вся музыка\"],[1,\"Зарубежная музыка\"]];\nif (cur.typeDD) {\n  re(cur.typeDD.container);\n}\ncur.typeDD = new DropdownMenu(filterTypes, {\n  target: ge('search_type_dd'),\n  value: 0,\n  fadeSpeed: 0,\n  onSelect: function(event) {\n    cur.topType = event.target.index || 0;\n    searcher.switchSection('audio');\n  }\n});cur.audioTop = 1;","htitle":"Поиск аудиозаписей","loc":"search?c%5Bsection%5D=audio&c%5Btop%5D=1"}{/literal}<!><div id="results" class="results highlight video_results">

    {section name=browse_music_list_loop loop=$browse_music_list}
    {assign var='media_dir' value=$url->url_userdir($browse_music_list[browse_music_list_loop].user_id)}
    {assign var='media_path' value="`$media_dir``$browse_music_list[browse_music_list_loop].music_id`.`$browse_music_list[browse_music_list_loop].music_ext`"} <div class="audios_row clear_fix" onmouseover="addClass(this, 'over');" onmouseout="removeClass(this, 'over');">
  <div class="audio" id="audio{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
  <table cellspacing="0" cellpadding="0" width="100%">
    <tr>
      <td>
        <a onclick="playAudioNew('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}')"><div class="play_new" id="play{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}"></div></a>
        <input type="hidden" id="audio_info{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" value="/uploads_user/1000/{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}/{$browse_music_list[browse_music_list_loop].music_id}.mp3" />
        
      </td>
      <td class="info">
        <div class="duration fl_r" onmousedown="if (window.audioPlayer) audioPlayer.switchTimeFormat('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}', event);">4:41</div>
        <div class="audio_title_wrap"><b><a href="/search?c[section]=audio&c[q]={$browse_music_list[browse_music_list_loop].music_title}" onclick="return nav.go(this, event);">{$browse_music_list[browse_music_list_loop].music_title}</a></b> <span class="user">(<a href='id{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}'>{$browse_music_list[browse_music_list_loop].music_uploader->user_displayname}</a>)</span></div>
      </td>
      <td class="actions">  <div style="width:19px;"></div></td>
    </tr>
  </table>
  <div class="player_wrap">
    <div id="line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="playline"><div></div></div>
    <div id="player{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="player" ondragstart="return false;" onselectstart="return false;">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top" id="audio_tr{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
          <td style="width:100%;padding:0px;position:relative;">
            <div id="audio_white_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_white_line" onmousedown="audioPlayer.prClick(event);"></div>
            <div id="audio_load_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_load_line" onmousedown="audioPlayer.prClick(event);"><!-- --></div>
            <div id="audio_progress_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_progress_line" onmousedown="audioPlayer.prClick(event);">
              <div id="audio_pr_slider{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_pr_slider"><!-- --></div>
            </div>
          </td>
          <td id="audio_vol{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" style="position: relative;"></td>
     <td class="play_btn">
		<div id="addaudio{$musiclist[music_loop].music_id}" style="width: 50;">
			<a class="addAudioLink" href="javascript: addAudio({$musiclist[music_loop].music_id}, {$musiclist[music_loop].music_id});">Добавить</a>
		</div>
     </td> 
 </tr>
      </table>
    </div>
  </div>
</div>
  <div class="repeat_wrap"><div onmouseover="showTooltip(this, {literal}{text: 'Повторять эту композицию', showdt: 200}{/literal})" id="repeat{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>
</div>     
    {/section} 
</div>
</div><!><!>  
 <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="" />
    <input type="hidden" id="section" name="c[section]" value="audio" />
    <input type="hidden" id="c[sort]" name="c[sort]" value="" />
  </form><!>{/if}
{if $al == 1 AND $ra != 1}
4658<!>ui_controls.css,ui_controls.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"audio","has_more":true,"offset":200,"summary":"Найденные аудиозаписи<a id=\"search_sort_dd\" class=\"dd_link fl_r\"><\/a>","script":"var filterTypes = [[0,\"По популярности\"],[1,\"По длительности\"]];\nif (cur.sortDD) {\n  re(cur.sortDD.container);\n}\ncur.sortDD = new DropdownMenu(filterTypes, {\n  target: ge('search_sort_dd'),\n  value: 0,\n  fadeSpeed: 0,\n  onSelect: function(event) {\n    if (event) searcher.switchFilter('sort', event.target.index || 0);\n  }\n});","htitle":"Поиск аудиозаписей по запросу {/literal}{$search}","loc":"search?c%5Bq%5D={$seacrh}&c%5Bsection%5D=audio"{literal}}{/literal}<!>
    {section name=browse_music_list_loop loop=$browse_music_list}
    {assign var='media_dir' value=$url->url_userdir($browse_music_list[browse_music_list_loop].user_id)}
    {assign var='media_path' value="`$media_dir``$browse_music_list[browse_music_list_loop].music_id`.`$browse_music_list[browse_music_list_loop].music_ext`"} <div class="audios_row clear_fix" onmouseover="addClass(this, 'over');" onmouseout="removeClass(this, 'over');">
  <div class="audio" id="audio{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
  <table cellspacing="0" cellpadding="0" width="100%">
    <tr>
      <td>
        <a onclick="playAudioNew('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}')"><div class="play_new" id="play{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}"></div></a>
        <input type="hidden" id="audio_info{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" value="/uploads_user/1000/{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}/{$browse_music_list[browse_music_list_loop].music_id}.mp3" />
        
      </td>
      <td class="info">
        <div class="duration fl_r" onmousedown="if (window.audioPlayer) audioPlayer.switchTimeFormat('{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}', event);">4:41</div>
        <div class="audio_title_wrap"><b><a href="/search?c[section]=audio&c[q]={$browse_music_list[browse_music_list_loop].music_title}" onclick="return nav.go(this, event);">{$browse_music_list[browse_music_list_loop].music_title}</a></b> <span class="user">(<a href='id{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}'>{$browse_music_list[browse_music_list_loop].music_uploader->user_displayname}</a>)</span></div>
      </td>
      <td class="play_btn">
		<div id="addaudio{$musiclist[music_loop].music_id}" style="width: 50;">
			<a class="addAudioLink" href="javascript: addAudio({$musiclist[music_loop].music_id}, {$musiclist[music_loop].music_id});">Добавить</a>
		</div>
     </td>
    </tr>
  </table>
  <div class="player_wrap">
    <div id="line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="playline"><div></div></div>
    <div id="player{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="player" ondragstart="return false;" onselectstart="return false;">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top" id="audio_tr{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}">
          <td style="width:100%;padding:0px;position:relative;">
            <div id="audio_white_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_white_line" onmousedown="audioPlayer.prClick(event);"></div>
            <div id="audio_load_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_load_line" onmousedown="audioPlayer.prClick(event);"><!-- --></div>
            <div id="audio_progress_line{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_progress_line" onmousedown="audioPlayer.prClick(event);">
              <div id="audio_pr_slider{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="audio_pr_slider"><!-- --></div>
            </div>
          </td>
          <td id="audio_vol{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" style="position: relative;"></td>
     <td class="play_btn">
		<div id="addaudio{$musiclist[music_loop].music_id}" style="width: 50;">
			<a class="addAudioLink" href="javascript: addAudio({$musiclist[music_loop].music_id}, {$musiclist[music_loop].music_id});">Добавить</a>
		</div>
     </td>
		  </tr>
      </table>
    </div>
  </div>
</div>
  <div class="repeat_wrap"><div onmouseover="showTooltip(this, {literal}{text: 'Повторять эту композицию', showdt: 200}{/literal})" id="repeat{$browse_music_list[browse_music_list_loop].music_uploader->user_info.user_id}_{$browse_music_list[browse_music_list_loop].music_id}" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>
</div>     
    {/section} 
</div>
</a><!><!><!>{/if}