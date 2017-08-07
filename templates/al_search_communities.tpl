 {if $ra != 1 AND $al != 1}{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<body onresize="onBodyResize()" class="is_rtl">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>
<link rel="stylesheet" type="text/css" href="/css/al/common.css?277" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="/css/al/search.css?37"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?27"></link>
<link type="text/css" rel="stylesheet" href="/css/al/notifier.css?54"></link>
<script type="text/javascript" src="/js/loader_nav8119_0.js"></script>
<script type="text/javascript" src="/js_new/common1.js"></script><script type="text/javascript" src="/js/lang0_0.js?5891"></script><script type="text/javascript" src="/js/al/search.js?66"></script><script type="text/javascript" src="/js/lib/ui_controls.js?112"></script><script type="text/javascript" src="/js/lib/selects.js?22"></script><script type="text/javascript" src="/js/al/notifier.js?159"></script>
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
</div><div id="search_communities_tab" class="search_subtab1 fl_l active" onmousedown="return searcher.switchSection('communities', true, event);">
  <div class="search_subtab2">
    Сообщества
  </div>
</div><div id="search_audio_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('audio', true, event);">
  <div class="search_subtab2">
    Аудиозаписи
  </div>
</div><div id="search_video_tab" class="search_subtab1 fl_l " onmousedown="return searcher.switchSection('video', true, event);">
  <div class="search_subtab2">
    Видеозаписи
  </div>
</div>
</div>
  <div id="filters"></div>
</div>
<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Популярные сообщества
  </div>
</div>
<div id="results_wrap">
  <table id="search_table" class="search_table">
  <tr>
    <td id="results" class="results highlight communities_results">
        {section name=group_loop loop=$groups}<div class="groups_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)"> <img src="{$groups[group_loop].group->group_photo("./images/nophoto.gif", TRUE)}" border='0' width='90' height='90'/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled title"><a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)">{$groups[group_loop].group->group_info.group_title}</a></div><div class="labeled "> {$groups[group_loop].group->group_info.group_desc|strip_tags|truncate:300:"...":true}</div><div class="labeled "><span style="font-size:60%"> </span>Участники: {$groups[group_loop].group_members}</div>
    </div>
</div>{/section}

</div>
    </td>

  </tr>
</table>
</div>
</div></div>
  </div>
</div></div>
    </div>


{include file='footer.tpl'}
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
searcher.init({"section":"communities","has_more":true,"offset":20,"q":""});window.radioBtns['type'] = {
  els: Array.prototype.slice.apply(geByClass('radiobtn', ge('cType'))),
  val: 0
}
cur.onTypeChanged = function(el, value) {
  radiobtn(el, value, 'type');
  ge('c[type]').value = value;
  if (value == 3) {
    slide_show('events_filters');
    ge('all_events').value = 1 - intval(ge('future').value);
  } else {
    slide_hide('events_filters');
    ge('all_events').value = 0;
  }
  searcher.updResults();
}
var uiCountry, uiCity;
var cityFilterSelData = {"countries":null,"country":"","cities":[],"city":""};

selectsData.setCountries(cityFilterSelData.countries);
selectsData.setCities(cityFilterSelData.country[0], cityFilterSelData.cities);

uiCity = new CitySelect(ge('city'), ge('cCity'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  city: cityFilterSelData.city,
  country: cityFilterSelData.country[0],
  introText: 'Введите название',
  placeholder: 'Выбор города',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Городов не найдено',
  otherCity: 'Другой город',
  onChange: searcher.updResults
});
cur.uiCity = uiCity;

uiCountry = new CountrySelect(ge('country'), ge('cCountry'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  country: cityFilterSelData.country,
  placeholder: 'Выбор страны',
  placeholderColor: '#777',
  autocomplete: 1,
  noDefaultCountry: 1,
  full_list: '',
  citySelect: uiCity,
  onChange: searcher.updResults
});
cur.uiCountry = uiCountry;new Checkbox(ge('future'), {
  width: 150,
  label: 'только предстоящие',
  onChange: function(value) {
    ge('all_events').value = 1 - intval(value);
    searcher.updResults();
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
window.tsHintsEnabled = 1;
zNav([], {});
handlePageParams({"id":40297585,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', 'ae98ae6a5db358622b')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> день рождения <a href=\"\/id468204\" onclick=\"return nav.go(this, event)\">Альбины Бориковой<\/a>, <a href=\"\/id3359273\" onclick=\"return nav.go(this, event)\">Леночки Мошниковой<\/a>, <a href=\"\/id4818569\" onclick=\"return nav.go(this, event)\">Lena Perova<\/a>, <a href=\"\/id5515245\" onclick=\"return nav.go(this, event)\">Леночки Щиголевой<\/a>, <a href=\"\/id6013644\" onclick=\"return nav.go(this, event)\">Лизы Мироновой<\/a>, <a href=\"\/id6317231\" onclick=\"return nav.go(this, event)\">Елены Новичковой<\/a>, <a href=\"\/id6527259\" onclick=\"return nav.go(this, event)\">Ковалевы иры<\/a>, <a href=\"\/id6843103\" onclick=\"return nav.go(this, event)\">Елены Савенко<\/a>, <a href=\"\/id7807326\" onclick=\"return nav.go(this, event)\">Dakota Cress<\/a>, <a href=\"\/id9958620\" onclick=\"return nav.go(this, event)\">Елены Бирюковой<\/a>, <a href=\"\/id11395875\" onclick=\"return nav.go(this, event)\">Лены Атаулиной<\/a>, <a href=\"\/id11865508\" onclick=\"return nav.go(this, event)\">Olesya Kov<\/a>, <a href=\"\/id12745588\" onclick=\"return nav.go(this, event)\">Леры Гавриловой<\/a>, <a href=\"\/id13372484\" onclick=\"return nav.go(this, event)\">sania tanc<\/a>, <a href=\"\/id13929227\" onclick=\"return nav.go(this, event)\">Елены Козловой<\/a>, <a href=\"\/id15671886\" onclick=\"return nav.go(this, event)\">Алены Ивашко<\/a>, <a href=\"\/id15980732\" onclick=\"return nav.go(this, event)\">Aitins Life<\/a>, <a href=\"\/osokinsasha\" onclick=\"return nav.go(this, event)\">Александра Osokin<\/a>, <a href=\"\/maydzeedyn\" onclick=\"return nav.go(this, event)\">Алексея Савонова<\/a>, <a href=\"\/id19430396\" onclick=\"return nav.go(this, event)\">Ira Zoy<\/a>, <a href=\"\/id19452968\" onclick=\"return nav.go(this, event)\">Алеси Герман<\/a>, <a href=\"\/id20213862\" onclick=\"return nav.go(this, event)\">Елизаветы Дроновой<\/a>, <a href=\"\/id20574652\" onclick=\"return nav.go(this, event)\">lencyk lencyk<\/a>, <a href=\"\/id21400979\" onclick=\"return nav.go(this, event)\">Леночки Бендриченко<\/a>, <a href=\"\/id22037436\" onclick=\"return nav.go(this, event)\">Лены Косаренко<\/a>, <a href=\"\/id22792779\" onclick=\"return nav.go(this, event)\">Машуси Лесниковой<\/a>, <a href=\"\/id22831741\" onclick=\"return nav.go(this, event)\">Lesи Юрьевой<\/a>, <a href=\"\/id24014802\" onclick=\"return nav.go(this, event)\">Леночки Новоселовой<\/a>, <a href=\"\/id24543149\" onclick=\"return nav.go(this, event)\">Хорошаи девочки<\/a>, <a href=\"\/id25173498\" onclick=\"return nav.go(this, event)\">Лены Лениной<\/a>, <a href=\"\/id25233706\" onclick=\"return nav.go(this, event)\">Веселисы Кокаревой<\/a>, <a href=\"\/id25433078\" onclick=\"return nav.go(this, event)\">Лены Мартыновой<\/a>, <a href=\"\/id25439189\" onclick=\"return nav.go(this, event)\">Lesya Sahatskaya<\/a>, <a href=\"\/id26454697\" onclick=\"return nav.go(this, event)\">Анны Ковалик<\/a>, <a href=\"\/id27033156\" onclick=\"return nav.go(this, event)\">Ленуси Максимовой<\/a>, <a href=\"\/id27152194\" onclick=\"return nav.go(this, event)\">Ленуськи Румянцевой<\/a>, <a href=\"\/id27471270\" onclick=\"return nav.go(this, event)\">Инны Беляевой<\/a>, <a href=\"\/id27717695\" onclick=\"return nav.go(this, event)\">Олеси Пахомовой<\/a>, <a href=\"\/id27803771\" onclick=\"return nav.go(this, event)\">Леночки Хлебниковой<\/a>, <a href=\"\/id27913392\" onclick=\"return nav.go(this, event)\">Леси Ершовой<\/a>, <a href=\"\/id27961190\" onclick=\"return nav.go(this, event)\">Леночки Горячевой<\/a>, <a href=\"\/id28439014\" onclick=\"return nav.go(this, event)\">Елены Фокиной<\/a>, <a href=\"\/id28684028\" onclick=\"return nav.go(this, event)\">Лены Григорьевой<\/a>, <a href=\"\/id28709158\" onclick=\"return nav.go(this, event)\">Кати Фирсовой<\/a>, <a href=\"\/id29048448\" onclick=\"return nav.go(this, event)\">леси чернычко<\/a>, <a href=\"\/id29125383\" onclick=\"return nav.go(this, event)\">Елены Шакиной<\/a>, <a href=\"\/id29778317\" onclick=\"return nav.go(this, event)\">Лены Данилевич<\/a>, <a href=\"\/id30068965\" onclick=\"return nav.go(this, event)\">Леночки Карповой<\/a>, <a href=\"\/id30080942\" onclick=\"return nav.go(this, event)\">Ирки Шариной<\/a>, <a href=\"\/id30385824\" onclick=\"return nav.go(this, event)\">Виктории Лёскиной<\/a>, <a href=\"\/id32635582\" onclick=\"return nav.go(this, event)\">Elena Karpova<\/a>, <a href=\"\/id32766634\" onclick=\"return nav.go(this, event)\">Леночки Панковой<\/a>, <a href=\"\/id33134188\" onclick=\"return nav.go(this, event)\">Лены Смирновой<\/a>, <a href=\"\/id33353880\" onclick=\"return nav.go(this, event)\">Елены Зуевой<\/a>, <a href=\"\/id33838095\" onclick=\"return nav.go(this, event)\">Сюзан Пусечки<\/a>, <a href=\"\/id34053820\" onclick=\"return nav.go(this, event)\">Елены Аксеновны<\/a>, <a href=\"\/id34180686\" onclick=\"return nav.go(this, event)\">Люды Кремовой<\/a>, <a href=\"\/id35472378\" onclick=\"return nav.go(this, event)\">Елены Шапенковой<\/a>, <a href=\"\/id36013041\" onclick=\"return nav.go(this, event)\">Леры Козловой<\/a>, <a href=\"\/id36570520\" onclick=\"return nav.go(this, event)\">Lera Kozlova<\/a>, <a href=\"\/id36695604\" onclick=\"return nav.go(this, event)\">Леры Козловой<\/a>, <a href=\"\/id36943994\" onclick=\"return nav.go(this, event)\">Лєнусічки Івановой<\/a>, <a href=\"\/id37182168\" onclick=\"return nav.go(this, event)\">Олеси Суровцовой<\/a>, <a href=\"\/id37214038\" onclick=\"return nav.go(this, event)\">Елены Сафоновой<\/a>, <a href=\"\/id37403608\" onclick=\"return nav.go(this, event)\">Фатимы Левановой<\/a>, <a href=\"\/id37610891\" onclick=\"return nav.go(this, event)\">Ани Рудневой<\/a>, <a href=\"\/id37636539\" onclick=\"return nav.go(this, event)\">Lerochka Girl<\/a>, <a href=\"\/id37764583\" onclick=\"return nav.go(this, event)\">Полинки Лесковой<\/a>, <a href=\"\/id38194350\" onclick=\"return nav.go(this, event)\">Лены Васиной<\/a>, <a href=\"\/id38621354\" onclick=\"return nav.go(this, event)\">Машки Паномаренко<\/a>, <a href=\"\/id39094718\" onclick=\"return nav.go(this, event)\">Лены Рыбаковой<\/a>, <a href=\"\/id39239400\" onclick=\"return nav.go(this, event)\">Елены Легковой<\/a>, <a href=\"\/id39439325\" onclick=\"return nav.go(this, event)\">Лены Дроновой<\/a>, <a href=\"\/id39465918\" onclick=\"return nav.go(this, event)\">Lera Kozlova<\/a>, <a href=\"\/id40009907\" onclick=\"return nav.go(this, event)\">Леси Иль<\/a>, <a href=\"\/id41409690\" onclick=\"return nav.go(this, event)\">Взлом Почты<\/a>, <a href=\"\/id41609379\" onclick=\"return nav.go(this, event)\">Олеси Бандерас<\/a>, <a href=\"\/id41675336\" onclick=\"return nav.go(this, event)\">Ленуси Чабановой<\/a>, <a href=\"\/id42019955\" onclick=\"return nav.go(this, event)\">Лейсан Закировой<\/a>, <a href=\"\/id42532006\" onclick=\"return nav.go(this, event)\">Олеси Якушевой<\/a>, <a href=\"\/id42863535\" onclick=\"return nav.go(this, event)\">Лены Николаевой<\/a>, <a href=\"\/id43313375\" onclick=\"return nav.go(this, event)\">Lerka Kozlova<\/a>, <a href=\"\/id44714167\" onclick=\"return nav.go(this, event)\">Елены Зинченко<\/a>, <a href=\"\/id45163103\" onclick=\"return nav.go(this, event)\">Лерочки Козловой<\/a>, <a href=\"\/id45271187\" onclick=\"return nav.go(this, event)\">Лены Андрейкиной<\/a>, <a href=\"\/id47205466\" onclick=\"return nav.go(this, event)\">Лены Гуляевой<\/a>, <a href=\"\/id47348865\" onclick=\"return nav.go(this, event)\">Rinel Alekcsandrov<\/a>, <a href=\"\/id47646224\" onclick=\"return nav.go(this, event)\">Алины Фроловой<\/a>, <a href=\"\/id48193371\" onclick=\"return nav.go(this, event)\">Fallen Finer<\/a>, <a href=\"\/id48338301\" onclick=\"return nav.go(this, event)\">Леси Штимак<\/a>, <a href=\"\/id48400995\" onclick=\"return nav.go(this, event)\">Леры Мягковой<\/a>, <a href=\"\/id49342931\" onclick=\"return nav.go(this, event)\">Лены Воропаевой<\/a>, <a href=\"\/id50903055\" onclick=\"return nav.go(this, event)\">Леры Козловой<\/a>, <a href=\"\/id51289893\" onclick=\"return nav.go(this, event)\">Лерочки Козловой<\/a>, <a href=\"\/id51342197\" onclick=\"return nav.go(this, event)\">Лены Трохимец<\/a>, <a href=\"\/id55553058\" onclick=\"return nav.go(this, event)\">Артёма Гузя<\/a>, <a href=\"\/id70098688\" onclick=\"return nav.go(this, event)\">Аньки Супер<\/a>, <a href=\"\/id78121575\" onclick=\"return nav.go(this, event)\">Леночки ***<\/a>, <a href=\"\/smoke_hole_smoke\" onclick=\"return nav.go(this, event)\">Alexei Zinin<\/a>, <a href=\"\/id82959820\" onclick=\"return nav.go(this, event)\">Ольги Прошиной<\/a>, <a href=\"\/id84754960\" onclick=\"return nav.go(this, event)\">Лизы Рыженковой<\/a>, <a href=\"\/orb1on\" onclick=\"return nav.go(this, event)\">Лёшки Шадрина<\/a>, <a href=\"\/id89889636\" onclick=\"return nav.go(this, event)\">Юлии Соколовой<\/a>, <a href=\"\/id91463084\" onclick=\"return nav.go(this, event)\">Надежды Самариной<\/a>, <a href=\"\/id.andilevkoevgen\" onclick=\"return nav.go(this, event)\">Евгения Андилевко<\/a>, <a href=\"\/id101120768\" onclick=\"return nav.go(this, event)\">Igors Vlasenko<\/a>, <a href=\"\/id107413274\" onclick=\"return nav.go(this, event)\">Игоря Бурковского<\/a>, <a href=\"\/id107909651\" onclick=\"return nav.go(this, event)\">Саши Федоровой<\/a>, <a href=\"\/id118911024\" onclick=\"return nav.go(this, event)\">Олеси Овчинниковой<\/a>, <a href=\"\/id119263750\" onclick=\"return nav.go(this, event)\">Светланы Подусенко<\/a>, <a href=\"\/id123095734\" onclick=\"return nav.go(this, event)\">Себастьян Рагнар<\/a>, <a href=\"\/id126748434\" onclick=\"return nav.go(this, event)\">Полины Черниниловой<\/a>, <a href=\"\/id130358398\" onclick=\"return nav.go(this, event)\">Юлии Щербаковой<\/a>, <a href=\"\/id133108088\" onclick=\"return nav.go(this, event)\">Яны Мельниченко<\/a>, <a href=\"\/id133500838\" onclick=\"return nav.go(this, event)\">Иннки Романовой<\/a>, <a href=\"\/eurows\" onclick=\"return nav.go(this, event)\">Айдар Шагадатов<\/a>, <a href=\"\/id140564419\" onclick=\"return nav.go(this, event)\">Юли Альбертовны<\/a>, <a href=\"\/id140565950\" onclick=\"return nav.go(this, event)\">Люси Сидоровой<\/a>, <a href=\"\/id140566258\" onclick=\"return nav.go(this, event)\">Барбары Котенни<\/a>, <a href=\"\/id140567337\" onclick=\"return nav.go(this, event)\">Екатерины Пушкаревой<\/a>, <a href=\"\/id140660922\" onclick=\"return nav.go(this, event)\">Марины Киселек<\/a>, <a href=\"\/id140662665\" onclick=\"return nav.go(this, event)\">Лены Марковны<\/a>, <a href=\"\/id140665279\" onclick=\"return nav.go(this, event)\">Иры Лаптевой<\/a>, <a href=\"\/id140666465\" onclick=\"return nav.go(this, event)\">Кати Монаковой<\/a>, <a href=\"\/id140671886\" onclick=\"return nav.go(this, event)\">Вики Минаевой<\/a>, <a href=\"\/id140673252\" onclick=\"return nav.go(this, event)\">Vika Lisova<\/a>.\n    <\/div>\n  <\/div>\n<\/div><div id=\"left_block5_0\" onmouseover=\"leftBlockOver('5_0')\" onmouseout=\"leftBlockOut('5_0')\">\n  <div id=\"left_hide5_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('5_0', '1a8f2c29d81dc248a6')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> состоятся встречи <a href=\"\/mk_artspb\" onclick=\"return nav.go(this, event)\">Проект &quot;Рисовать..<\/a>, <a href=\"\/event17937940\" onclick=\"return nav.go(this, event)\">11.02.12 (Суббота..<\/a>, <a href=\"\/event23145382\" onclick=\"return nav.go(this, event)\">11 февраля - DISC..<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"","level":1,"loc":"search?c%5Bsection%5D=communities&c%5Bsort%5D=1","nophone":1,"width":791,"width_dec":160,"width_dec_footer":130});addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue40297585","timestamp":"1829512706","key":"2zkRkOhsIYRAdSgIBjNth1uZgLiWB0kOtKSWTV7OmFgMoeZEpdE1JP23","uid":40297585,"version":9,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"NzM0MDMw","server_url":"http:\/\/q45.queue.vk.com\/im585","frame_path":"http:\/\/q45.queue.vk.com\/q_frame.php?6","frame_url":"im585","refresh_url":"http:\/\/vk.com\/notifier.php","fc":{"version":23,"state":{"clist":{"min":true,"x":-1,"y":0.000000,"onlines":false},"tabs":[],"version":23}}});});addEvent(document, 'click', onDocumentClick);
    }
  </script>{/literal}
{/if}
{if $ra == 1}
4658<!>ui_controls.css,ui_controls.js,selects.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"communities","has_more":true,"offset":20,"q":"sadf","summary":"Найденные сообщества","script":"window.radioBtns['type'] = {\n  els: Array.prototype.slice.apply(geByClass('radiobtn', ge('cType'))),\n  val: 0\n}\ncur.onTypeChanged = function(el, value) {\n  radiobtn(el, value, 'type');\n  ge('c[type]').value = value;\n  if (value == 3) {\n    slide_show('events_filters');\n    ge('all_events').value = 1 - intval(ge('future').value);\n  } else {\n    slide_hide('events_filters');\n    ge('all_events').value = 0;\n  }\n  searcher.updResults();\n}\nvar uiCountry, uiCity;\nvar cityFilterSelData = {\"countries\":null,\"country\":\"\",\"cities\":[],\"city\":\"\"};\n\nselectsData.setCountries(cityFilterSelData.countries);\nselectsData.setCities(cityFilterSelData.country[0], cityFilterSelData.cities);\n\nuiCity = new CitySelect(ge('city'), ge('cCity'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  city: cityFilterSelData.city,\n  country: cityFilterSelData.country[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор города',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Городов не найдено',\n  otherCity: 'Другой город',\n  onChange: searcher.updResults\n});\ncur.uiCity = uiCity;\n\nuiCountry = new CountrySelect(ge('country'), ge('cCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: cityFilterSelData.country,\n  placeholder: 'Выбор страны',\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: '',\n  citySelect: uiCity,\n  onChange: searcher.updResults\n});\ncur.uiCountry = uiCountry;new Checkbox(ge('future'), {\n  width: 150,\n  label: 'только предстоящие',\n  onChange: function(value) {\n    ge('all_events').value = 1 - intval(value);\n    searcher.updResults();\n  }\n});","htitle":"Поиск сообществ по запросу sadf","{/literal}{$search}{literal}":"search?c%5Bq%5D={/literal}{$search}{literal}&c%5Bsection%5D=communities"}{/literal}<!><table id="search_table" class="search_table">
  <tr>
    <td id="results" class="results highlight communities_results">
    {section name=group_loop loop=$groups}<div class="groups_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)"> <img src="{$groups[group_loop].group->group_photo("./images/nophoto.gif", TRUE)}" border='0' width='90' height='90'/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled title"><a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)">{$groups[group_loop].group->group_info.group_title}</a></div><div class="labeled "> {$groups[group_loop].group->group_info.group_desc|strip_tags|truncate:300:"...":true}</div><div class="labeled "><span style="font-size:60%"> </span>Участники: {$groups[group_loop].group_members}</div>
    </div>
</div>{/section}</div>
    </td>
    <td id="filters_td" class="filters">
      <div id="search_filters">

  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="sadf" />
    <input type="hidden" id="section" name="c[section]" value="communities" />
    <div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Тип сообщества</div>
</div><input type="hidden" id="c[type]" name="c[type]" value="" /><div class="inner_filter">
  <div id="cType" class="control">
    <div class="radiobtn on" onclick="cur.onTypeChanged(this, 0);"><div></div>Любой</div>
    <div class="radiobtn " onclick="cur.onTypeChanged(this, 1);"><div></div>Группа</div>
    <div class="radiobtn " onclick="cur.onTypeChanged(this, 2);"><div></div>Страница</div>
    <div class="radiobtn " onclick="cur.onTypeChanged(this, 3);"><div></div>Встреча</div>
  </div>
</div><div class="noselect clear_fix filter_main city" onselectstart="return false">
  <div class="text fl_l">Регион</div>
</div><div class="inner_filter" id="city_filter">
  <div id="cCountry" class="control">
    <input id="country" name="c[country]" class="text" />
  </div>
  <div id="cCity" class="control" style="display: none">
    <input id="city" name="c[city]" class="text" />
  </div>
</div><div id="events_filters" style="display: none;">
  <div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Дополнительно</div>
</div>
  <div class="inner_filter" id="events_filter">
    <input type="hidden" name="c[all]" id="all_events" value="0" />
    <input type="hidden" name="future" id="future" value="1" />
  </div>
</div>
  </form>
      </div>
    </td>
  </tr>
</table><!><!><!>{/if}
{if $al == 1 AND $ra != 1}
4658<!>ui_controls.css,ui_controls.js<!>0<!>4250<!>0<!><!json>{literal}{"section":"communities","has_more":true,"offset":20,"summary":"Найденные сообщества","script":"","htitle":"Поиск сообществ по запросу {/literal}{$search}{literal}","loc":"search?c%5Bq%5D={/literal}{$search}{literal}&c%5Bsection%5D=communities"}{/literal}<!>
  {section name=group_loop loop=$groups}<div class="groups_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)"> <img src="{$groups[group_loop].group->group_photo("./images/nophoto.gif", TRUE)}" border='0' width='90' height='90'/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled title"><a href="/club{$groups[group_loop].group->group_info.group_id}" onclick="return nav.go(this, event)">{$groups[group_loop].group->group_info.group_title}</a></div><div class="labeled "> {$groups[group_loop].group->group_info.group_desc|strip_tags|truncate:300:"...":true}</div><div class="labeled "><span style="font-size:60%"> </span>Участники: {$groups[group_loop].group_members}</div>
    </div>
</div>{/section}

</div>
</a><!><!><!>{/if}