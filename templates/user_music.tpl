{include file='header_top.tpl'}
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
    <div id="content"><div id="audio">
<div id="audio_search" class="audio_search clear_fix">
  <div class="fl_l">
  <form method="POST" action="al_search.php?c[section]=audio" name="qsearch">
<input placeholder="Поиск по композициям и исполнителям"  id="s_search" type="text" class="s_search text" value="" />
</form>
</div>

<div class="search_progress fl_l"></div>
<div id="audio_query_reset" class="search_reset fl_l"></div><a href='user_music_upload.php' class="audio_add_new fl_r"><span class="fl_l"></span>Добавить аудиозапись</a>
</div>
<div class="summary_wrap">
  <div class="summary"><b id="audio_summary">{if $music_total == 0}В списке нет аудиозаписей{else}В списке {$music_total} {include file='sklonenie_audio.tpl'}{/if}</b></div>
</div>
<div id="audio_wrap" class="audio_wrap ">
<table class="audio_table" cellspacing="0" cellpadding="0">
  <tr>
    <td id="main_panel" class="main_panel">
	{if $music_total == 0}
	<div id="audios_list" class="audio_list">
<div id="initial_list">
<div id="not_found" class="info_msg">
Здесь Вы можете хранить Ваши аудиозаписи.
<br>
Для того, чтобы загрузить Вашу первую аудиозапись,
<a href="user_music_upload.php">нажмите здесь</a>
.
</div>
</div>
{else}
      <div id="audios_list" class="audio_list">
        <div id="initial_list"> {assign var='media_dir' value=$url->url_userdir($user->user_info.user_id)}
    {section name=music_loop loop=$musiclist}
      {assign var='media_path' value="`$media_dir``$musiclist[music_loop].music_id`.`$musiclist[music_loop].music_ext`"}<div class="audio fl_l" id="audio{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" onmouseover="addClass(this, 'over');" onmouseout="removeClass(this, 'over');">
  <div class="repeat_wrap"><div onmouseover="showTooltip(this,{literal} {text: 'Повторять эту композицию', showdt: 200}{/literal})" id="repeat{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>
  <div class="fl_l">
  <a name="{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}"></a>
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td class="play_btn">
        <a onclick="playAudioNew('{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}')"><div class="play_new" id="play{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}"></div></a>

        <input type="hidden" id="audio_info{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" value="/uploads_user/1000/{$owner->user_info.user_id}/{$musiclist[music_loop].music_id}.mp3" />
      </td>
      <td class="info">
        <div class="duration fl_r"></div>
        <div class="title_wrap"><b><a href="/search?c[q]=Nelly&c[section]=audio" onclick="if (checkEvent(event)) return; Audio.selectPerformer(event, 'Nelly'); return false">{$musiclist[music_loop].music_title}</a></b><span class="user"></span></div>
      </td>
	  
	  {if $owner->user_info.user_username != $user->user_info.user_username}
     <td class="play_btn">
		<div id="addaudio{$musiclist[music_loop].music_id}" style="width: 50;">
			<a class="addAudioLink" href="javascript: addAudio({$musiclist[music_loop].music_id}, {$musiclist[music_loop].music_id});">Добавить</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
     </td>
	  {/if}
    </tr> 
  </table>
  <div class="player_wrap">
    <div id="line{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="playline"><div></div></div>
    <div id="player{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="player" ondragstart="return false;" onselectstart="return false;">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="top" id="audio_tr{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}">
          <td style="width:100%;padding:0px;position:relative;">
            <div id="audio_white_linev{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="audio_white_line" onmousedown="audioPlayer.prClick(event);"></div>

            <div id="audio_load_line{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="audio_load_line" onmousedown="audioPlayer.prClick(event);"><!-- --></div>
            <div id="audio_progress_line{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="audio_progress_line" onmousedown="audioPlayer.prClick(event);">
              <div id="audio_pr_slider{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="audio_pr_slider"><!-- --></div>
            </div>
          </td>
          <td id="audio_vol{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" style="position: relative;"></td>
        </tr>
      </table>
    </div>

  </div>
  <div id="lyrics{$owner->user_info.user_id}_{$musiclist[music_loop].music_id}" class="lyrics"></div>
  </div>

</div>{/section}

</div></div>
        <a id="more_link" onclick="Audio.showRows()" class="more fl_l" style="display: none;">
          <div id="show_more_progress" class="progress"></div>
          <div id="show_more" class="show_more">
              Показать больше аудиозаписей
          </div>

        </a>
        <div class="audio_search_results">
          <div id="audio_search_wrap" class="summary_wrap">
            <div id="audio_search_summary" class="summary"></div>
          </div>
          <div id="search_list" class="search_list"></div>
        </div>
        <div id="search_preload" class="audio_preload"></div>
        <a id="s_more_link" onclick="Audio.loadRows()" class="search more fl_l" style="display: none;">

          <div id="s_show_more_progress" class="progress"></div>
          <div id="s_show_more" class="show_more">
              Показать больше аудиозаписей
          </div>
        </a>
        <div class="audio_bottom"></div>
      </div>
      <div id="page_end"></div>
    </td>
{/if}
    <td id="side_panel" class="side_panel" style="">
          <a href='search?c[section]=audio' style="text-decoration: none;">
      <div id="album_filters">
      <div id="album0" class="audio_filter_selected">Все аудиозаписи</div>
      </div>      </a>
      <div id="audio_friends" style="display: block;">
        <div class="audio_friends_more_separator">


  </div>
</div>
      </div>
      <div class="audio_search_filters" id="audio_search_filters">
  <div class="audio_search_filter">
    <input type="hidden" id="audio_sort_filter" value="2"/>
  </div>
  <div class="audio_search_filter">

    <input type="hidden" id="audio_lyrics_filter" value="0" />
  </div>
</div>
    </td>
  </tr>
</table>
</div>

</div></div>
  </div>
</div></div>
    </div>

 {literal} <script type="text/javascript">
    if (parent && parent != window && (browser.msie || browser.opera || browser.mozilla || browser.chrome || browser.safari || browser.iphone)) {
      document.getElementsByTagName('body')[0].innerHTML = '';
    } else {
      domReady();
      updateMoney(0);
gSearch.init();
if (window.qArr && qArr[5]) qArr[5] = [5, "по товарам", "", "goods", 0x00000100];
cur.lang = extend(cur.lang || {}, {
  audio_title_search: 'Поиск аудиозаписей по запросу {q}' || 'Аудио',
  audio_N_recs: ["","%s аудиозапись","%s аудиозаписи","%s аудиозаписей"]
});
Audio.init({"id":52174980,"gid":0,"oid":52174980,"album_id":0,"has_more":0,"audiosPerPage":50,"shownAudios":50,"canEditGroup":0,"isPublic":0,"toUsersProfile":"","q":"","audio_id":0,"edit":0,"audioFriend":90234953,"isAudioFriend":false,"shownFriends":[90234953,56454788,47364479,147582038,141872255,134426867,47859898,136437752,147759732,143394046],"allAudiosIndex":"all","htitle":"Аудиозаписи Алёшки Коробкова"}, function(audio) {
var aid = audio[0]+'_'+audio[1];
var audioAdd = '';
var add_hash = (cur.hashes) ? cur.hashes.add_hash : '';
var delete_hash = (cur.hashes) ? cur.hashes.delete_hash : '';
var claim = 0;
var claimed = false;
if (audio[11] && parseInt(audio[11])) {
  claimed = true;
  claim = (parseInt(audio[11]) > 0 ? parseInt(audio[11]) : 0);
}
if (audio[9] && parseInt(audio[9]) && !claimed) {
  audioAdd = '<div class="fl_l" style="width:31px;height:21px;">\
<div class="audio_add" id="audio_add'+aid+'" onmouseover="addClass(this, \'over\'); showTooltip(this, {text: \'Добавить в мои аудиозаписи\'});" onmouseout="removeClass(this, \'over\');" onclick="Audio.addShareAudio(this, '+audio[1]+', '+audio[0]+', \''+add_hash+'\');"></div>\
</div>';
}
var performer = audio[5].split('<span>').join('').split('</span>').join('').replace(/&#39;/g, "\\&#39;");
var author = audio[10] ? '('+audio[10]+')' : '';

var lyricsLink = (audio[7] && parseInt(audio[7])) ? '<a href=\"\" onclick=\"Audio.showLyrics(\''+aid+'\','+audio[7]+');return false;\">'+audio[6]+'</a>' : audio[6];

if (claimed) {
  return '<div class="audio fl_l" id="audio'+aid+'" onmouseover="addClass(this, \'over\');" onmouseout="removeClass(this, \'over\');">\
    <div class="repeat_wrap"><div onmouseover="showTooltip(this, {text: \'Повторять эту композицию\', showdt: 200})" id="repeat'+aid+'" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>\
    <div class="fl_l">\
    <a name="'+aid+'"></a>\
    <table cellspacing="0" cellpadding="0">\
      <tr>\
        <td class="play_btn">\
          <a onclick="showAudioClaimWarning(52174980,'+audio[1]+',\''+delete_hash+'\','+claim+',\''+performer+' - '+audio[6]+'\'); return false;"><div class="play_new" id="play'+aid+'"></div></a>\
        </td>\
        <td class="info">\
          <div class="duration fl_r">'+audio[4]+'</div>\
          <div class="title_wrap"><b><a href="/search?c[q]='+performer+'&c[section]=audio" onclick="if (checkEvent(event)) return; Audio.selectPerformer(event, \''+performer+'\'); return false">'+audio[5]+'</a></b> - <span class="title">'+lyricsLink+' </span><span class="user">'+author+'</span></div>\
        </td>\
      </tr>\
    </table>\
    <div class="player_wrap">\
      <div id="line'+aid+'" class="playline"><div></div></div>\
    </div>\
    <div id="lyrics'+aid+'" class="lyrics"></div>\
    </div>\
  </div>';
}
return '<div class="audio fl_l" id="audio'+aid+'" onmouseover="addClass(this, \'over\');" onmouseout="removeClass(this, \'over\');">\
  <div class="repeat_wrap"><div onmouseover="showTooltip(this, {text: \'Повторять эту композицию\', showdt: 200})" id="repeat'+aid+'" class="fl_r repeat" onclick="audioPlayer.toggleRepeat()"></div></div>\
  <div class="fl_l">\
  <a name="'+aid+'"></a>\
  <table cellspacing="0" cellpadding="0">\
    <tr>\
      <td class="play_btn">\
        <a onclick="playAudioNew(\''+aid+'\')"><div class="play_new" id="play'+aid+'"></div></a>\
        <input type="hidden" id="audio_info'+aid+'" value="'+audio[2]+','+audio[3]+'" />\
      </td>\
      <td class="info">\
        <div class="duration fl_r">'+audio[4]+'</div>\
        <div class="title_wrap"><b><a href="/search?c[q]='+performer+'&c[section]=audio" onclick="if (checkEvent(event)) return; Audio.selectPerformer(event, \''+performer+'\'); return false">'+audio[5]+'</a></b> - <span class="title">'+lyricsLink+' </span><span class="user">'+author+'</span></div>\
      </td>\
    </tr>\
  </table>\
  <div class="player_wrap">\
    <div id="line'+aid+'" class="playline"><div></div></div>\
    <div id="player'+aid+'" class="player" ondragstart="return false;" onselectstart="return false;">\
      <table width="100%" border="0" cellpadding="0" cellspacing="0">\
        <tr valign="top" id="audio_tr'+aid+'">\
          <td style="width:100%;padding:0px;position:relative;">\
            <div id="audio_white_line'+aid+'" class="audio_white_line" onmousedown="audioPlayer.prClick(event);"></div>\
            <div id="audio_load_line'+aid+'" class="audio_load_line" onmousedown="audioPlayer.prClick(event);"><!-- --></div>\
            <div id="audio_progress_line'+aid+'" class="audio_progress_line" onmousedown="audioPlayer.prClick(event);">\
              <div id="audio_pr_slider'+aid+'" class="audio_pr_slider"><!-- --></div>\
            </div>\
          </td>\
          <td id="audio_vol'+aid+'" style="position: relative;"></td>\
        </tr>\
      </table>\
    </div>\
  </div>\
  <div id="lyrics'+aid+'" class="lyrics"></div>\
  </div>\
  '+audioAdd+'\
</div>';
});var sortTypes = [[2,"По популярности"],[1,"По длительности"]];
new Dropdown(ge('audio_sort_filter'), sortTypes, {
  width: 155,
  selectedItems: '2',
  onChange: Audio.changeSearchFilters
});
new Checkbox(ge('audio_lyrics_filter'), {
  width: 155,
  label: 'только с текстом',
  onChange: Audio.changeSearchFilters
});
cur.allTitle = 'У Вас {audios_count}';;setTimeout(function() {  try {    var elem = ge(String.fromCharCode.apply(null,[118,107,98,95,97,100,118]));    if (elem) {      ajax.post('/al_profile.php', {act: 'pro'}, {onDone: function() {}, onFail: function() { return true; }});    }  } catch (e) {}}, 5000);
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
if (browser.msie8) {
  var st = {border: '1px solid #a6b6c6'};
  if (vk.rtl) st.left = '1px';
  else st.right = '0px';
  setStyle(ge('ts_cont_wrap'), st);
}
    }
  </script>{/literal}
{include file='footer.tpl'}