 {if $ra != 1 AND $al != 1}{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?32"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link>
<link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link>

<script type="text/javascript" src="/js_new/common.js?710"></script>
<script type="text/javascript" src="/js/lang0_0.js?5597"></script>
<script type="text/javascript" src="/js/al/search.js?61"></script>
<script type="text/javascript" src="/js/lib/ui_controls.js?110"></script>
<script type="text/javascript" src="/js/lib/selects.js?22"></script>
<script type="text/javascript" src="/js/al/notifier.js?155"></script>
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
  <div id="search_people_tab" class="search_subtab1 fl_l active" onmousedown="return searcher.switchSection('people', true, event);">
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
    Найденные
  </div>
</div>
<div id="results_wrap">
  <table id="search_table" class="search_table">
  <tr>
    <td id="results" class="results highlight people_results">
    {section name=randoms_loop loop=$randoms}   <div class="people_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/id{$randoms[randoms_loop]->user_info.user_id}"> <img src="{$randoms[randoms_loop]->user_photo('./images/nophoto.gif')}"/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled name"><a href="/id{$randoms[randoms_loop]->user_info.user_id}">{$randoms[randoms_loop]->user_info.user_displayname}</a></div><div class="labeled ">{$randoms[randoms_loop]->user_info.user_status} </div>
    </div>
</div>{/section}</div><a id="show_more_link" onclick="return searcher.showMore();" class="clear">
  <div id="show_more_progress" class="progress"></div>
  <div id="show_more">Показать ещё</div>
</a>
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
if (browser.iphone || browser.ipad || browser.ipod) {
  setStyle(bodyNode, {webkitTextSizeAdjust: 'none'});
}window.lang = extend(window.lang || {}, {
  search_back_to: 'Результаты поиска',
  head_search: 'поиск',
  search_audio_added: 'Добавлено'
});
searcher.init({"section":"people","has_more":true,"offset":40,"q":""});var uiCountry, uiCity;
var cityFilterSelData = {"countries":[["1","Россия"],[2,"Украина"],[3,"Беларусь"],[4,"Казахстан"],[5,"Азербайджан"],[6,"Армения"],[7,"Грузия"],[11,"Кыргызстан"],[15,"Молдова"],[16,"Таджикистан"],[17,"Туркменистан"],[18,"Узбекистан"],[19,"Австралия"],[20,"Австрия"],[21,"Албания"],[22,"Алжир"],[23,"Американское Самоа"],[24,"Ангилья"],[25,"Ангола"],[26,"Андорра"],[27,"Антигуа и Барбуда"],[28,"Аргентина"],[29,"Аруба"],[30,"Афганистан"],[31,"Багамы"],[32,"Бангладеш"],[33,"Барбадос"],[34,"Бахрейн"],[35,"Белиз"],[36,"Бельгия"],[37,"Бенин"],[38,"Бермуды"],[39,"Болгария"],[40,"Боливия"],[41,"Босния и Герцеговина"],[42,"Ботсвана"],[43,"Бразилия"],[44,"Бруней-Даруссалам"],[45,"Буркина-Фасо"],[46,"Бурунди"],[47,"Бутан"],[48,"Вануату"],[49,"Великобритания"],[50,"Венгрия"],[51,"Венесуэла"],[52,"Виргинские острова, Британские"],[53,"Виргинские острова, США"],[54,"Восточный Тимор"],[55,"Вьетнам"],[56,"Габон"],[57,"Гаити"],[58,"Гайана"],[59,"Гамбия"],[60,"Гана"],[61,"Гваделупа"],[62,"Гватемала"],[63,"Гвинея"],[64,"Гвинея-Бисау"],[65,"Германия"],[66,"Гибралтар"],[67,"Гондурас"],[68,"Гонконг"],[69,"Гренада"],[70,"Гренландия"],[71,"Греция"],[72,"Гуам"],[73,"Дания"],[231,"Джибути"],[74,"Доминика"],[75,"Доминиканская Республика"],[76,"Египет"],[77,"Замбия"],[78,"Западная Сахара"],[79,"Зимбабве"],[8,"Израиль"],[80,"Индия"],[81,"Индонезия"],[82,"Иордания"],[83,"Ирак"],[84,"Иран"],[85,"Ирландия"],[86,"Исландия"],[87,"Испания"],[88,"Италия"],[89,"Йемен"],[90,"Кабо-Верде"],[91,"Камбоджа"],[92,"Камерун"],[10,"Канада"],[93,"Катар"],[94,"Кения"],[95,"Кипр"],[96,"Кирибати"],[97,"Китай"],[98,"Колумбия"],[99,"Коморы"],[100,"Конго"],[101,"Конго, демократическая республика"],[102,"Коста-Рика"],[103,"Кот д`Ивуар"],[104,"Куба"],[105,"Кувейт"],[138,"Кюрасао"],[106,"Лаос"],[12,"Латвия"],[107,"Лесото"],[108,"Либерия"],[109,"Ливан"],[110,"Ливийская Арабская Джамахирия"],[13,"Литва"],[111,"Лихтенштейн"],[112,"Люксембург"],[113,"Маврикий"],[114,"Мавритания"],[115,"Мадагаскар"],[116,"Макао"],[117,"Македония"],[118,"Малави"],[119,"Малайзия"],[120,"Мали"],[121,"Мальдивы"],[122,"Мальта"],[123,"Марокко"],[124,"Мартиника"],[125,"Маршалловы Острова"],[126,"Мексика"],[127,"Микронезия, федеративные штаты"],[128,"Мозамбик"],[129,"Монако"],[130,"Монголия"],[131,"Монтсеррат"],[132,"Мьянма"],[133,"Намибия"],[134,"Науру"],[135,"Непал"],[136,"Нигер"],[137,"Нигерия"],[139,"Нидерланды"],[140,"Никарагуа"],[141,"Ниуэ"],[142,"Новая Зеландия"],[143,"Новая Каледония"],[144,"Норвегия"],[145,"Объединенные Арабские Эмираты"],[146,"Оман"],[147,"Остров Мэн"],[148,"Остров Норфолк"],[149,"Острова Кайман"],[150,"Острова Кука"],[151,"Острова Теркс и Кайкос"],[152,"Пакистан"],[153,"Палау"],[154,"Палестинская автономия"],[155,"Панама"],[156,"Папуа - Новая Гвинея"],[157,"Парагвай"],[158,"Перу"],[159,"Питкерн"],[160,"Польша"],[161,"Португалия"],[162,"Пуэрто-Рико"],[163,"Реюньон"],[164,"Руанда"],[165,"Румыния"],[9,"США"],[166,"Сальвадор"],[167,"Самоа"],[168,"Сан-Марино"],[169,"Сан-Томе и Принсипи"],[170,"Саудовская Аравия"],[171,"Свазиленд"],[172,"Святая Елена"],[173,"Северная Корея"],[174,"Северные Марианские острова"],[175,"Сейшелы"],[176,"Сенегал"],[177,"Сент-Винсент"],[178,"Сент-Китс и Невис"],[179,"Сент-Люсия"],[180,"Сент-Пьер и Микелон"],[181,"Сербия"],[182,"Сингапур"],[183,"Сирийская Арабская Республика"],[184,"Словакия"],[185,"Словения"],[186,"Соломоновы Острова"],[187,"Сомали"],[188,"Судан"],[189,"Суринам"],[190,"Сьерра-Леоне"],[191,"Таиланд"],[192,"Тайвань"],[193,"Танзания"],[194,"Того"],[195,"Токелау"],[196,"Тонга"],[197,"Тринидад и Тобаго"],[198,"Тувалу"],[199,"Тунис"],[200,"Турция"],[201,"Уганда"],[202,"Уоллис и Футуна"],[203,"Уругвай"],[204,"Фарерские острова"],[205,"Фиджи"],[206,"Филиппины"],[207,"Финляндия"],[208,"Фолклендские острова"],[209,"Франция"],[210,"Французская Гвиана"],[211,"Французская Полинезия"],[212,"Хорватия"],[213,"Центрально-Африканская Республика"],[214,"Чад"],[230,"Черногория"],[215,"Чехия"],[216,"Чили"],[217,"Швейцария"],[218,"Швеция"],[219,"Шпицберген и Ян Майен"],[220,"Шри-Ланка"],[221,"Эквадор"],[222,"Экваториальная Гвинея"],[223,"Эритрея"],[14,"Эстония"],[224,"Эфиопия"],[226,"Южная Корея"],[227,"Южно-Африканская Республика"],[228,"Ямайка"],[229,"Япония"]],"country":"","cities":[],"city":""};

selectsData.setCountries(cityFilterSelData.countries);
selectsData.setCities(cityFilterSelData.country[0], cityFilterSelData.cities);

uiCity = new CitySelect(ge('city'), ge('cCity'), {
  show: function(el) {
    slide_show(el);
    if (cur.onSearchStep) cur.onSearchStep();
  },
  hide: function(el) {
    slide_hide(el);
    if (cur.onSearchStep) cur.onSearchStep();
  },
  width: 150,
  city: cityFilterSelData.city,
  country: cityFilterSelData.country[0],
  introText: 'Введите название',
  placeholder: 'Выбор города',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Городов не найдено',
  otherCity: 'Другой город',
  maxItemsShown: function(query_length) {
    if (query_length > 6) {
      return 500;
    } else {
      return 300;
    }
    },
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
cur.uiCountry = uiCountry;var uiSchCountry, uiSchCity, uiSchool, uiSchYear, uiSchClass;
var schoolFilterSelData = {"country":"","city":"","school":"","school_class":0};

uiSchYear = new Dropdown(ge('schYear'), [[0,"Год выпуска"],"2018","2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007","2006","2005","2004","2003","2002","2001","2000","1999","1998","1997","1996","1995","1994","1993","1992","1991","1990","1989","1988","1987","1986","1985","1984","1983","1982","1981","1980","1979","1978","1977","1976","1975","1974","1973","1972","1971","1970","1969","1968","1967","1966","1965","1964","1963","1962","1961","1960","1959","1958","1957","1956","1955","1954","1953","1952","1951","1950","1949","1948","1947","1946"], {
  width: 150,
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  onChange: searcher.updResults
});
uiSchClass = new ClassSelect(ge('schClass'), ge('cSchClass'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  placeholder: 'Выбор класса',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  country: schoolFilterSelData.country[0],
  school: schoolFilterSelData.school,
  school_class: schoolFilterSelData.school_class,
  onChange: searcher.updResults
});
uiSchool = new SchoolHintSelect(ge('school'), ge('cSchool'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  school: schoolFilterSelData.school,
  city: schoolFilterSelData.city[0],
  introText: 'Введите название',
  disabledText: 'Выберите регион',
  introCountryText: 'Выберите страну',
  placeholder: 'Выбор школы',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Ничего не найдено',
  disableOnHide: true,
  forceEnableCustom: -1,
  classSelect: uiSchClass,
  schoolYearSelect: uiUniYear,
  onChange: function(value) {
    if (intval(value)) {
      slide_show('cSchYear');
    } else {
      slide_hide('cSchYear');
    }
   searcher.updResults();
  }
});
if (cur.uiCountry) extend(cur.uiCountry.options, {
  schoolSelect: uiSchool,
  classSelect: uiSchClass
});
if (cur.uiCity) extend(cur.uiCity.options, {
  schoolSelect: uiSchool,
  classSelect: uiSchClass
});

legacyPlaceholderSetup('school_spec');
addEvent('school_spec', 'change keydown', searcher.onInputChange);var uiUniCountry, uiUniCity, uiUniversity, uiFaculty, uiChair, uiUniYear, uiEduStatus, uiEduForm;
var uniFilterSelData = {"country":"","city":"","university":0,"faculties":{"university":0,"completed_faculties":1,"faculties":[]},"faculty":0,"chairs":{"faculty":0,"completed_chairs":1,"chairs":[]},"chair":0,"form":0,"status":0};

selectsData.setUniversityInfo(uniFilterSelData.university, uniFilterSelData.faculties);
selectsData.setFacultyInfo(uniFilterSelData.faculty, uniFilterSelData.chairs);

uiUniYear = new Dropdown(ge('uniYear'), [[0,"Год выпуска"],"2018","2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007","2006","2005","2004","2003","2002","2001","2000","1999","1998","1997","1996","1995","1994","1993","1992","1991","1990","1989","1988","1987","1986","1985","1984","1983","1982","1981","1980","1979","1978","1977","1976","1975","1974","1973","1972","1971","1970","1969","1968","1967","1966","1965","1964","1963","1962","1961","1960","1959","1958","1957","1956","1955","1954","1953","1952","1951","1950","1949","1948","1947","1946"], {
  width: 150,
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  onChange: searcher.updResults
});
uiEduForm = new EducationFormSelect(ge('edu_form'), ge('cEduForm'), {
  show: slide_show,
  hide: slide_hide,
  multiselect: false,
  visible: uniFilterSelData.form,
  zeroPlaceholder: true,
  placeholderColor: '#777',
  country: uniFilterSelData.country[0],
  university: uniFilterSelData.university,
  edu_form: uniFilterSelData.form,
  placeholder: 'Форма обучения',
  width: 150,
  onChange: searcher.updResults
});
uiEduStatus = new EducationStatusSelect(ge('edu_status'), ge('cEduStatus'), {
  show: slide_show,
  hide: slide_hide,
  multiselect: false,
  visible: uniFilterSelData.status,
  zeroPlaceholder: true,
  placeholderColor: '#777',
  country: uniFilterSelData.country[0],
  university: uniFilterSelData.university,
  edu_status: uniFilterSelData.status,
  placeholder: 'Выбор статуса',
  width: 150,
  onChange: searcher.updResults
});
uiChair = new ChairSelect(ge('chair'), ge('cChair'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  chair: uniFilterSelData.chair,
  faculty: uniFilterSelData.faculty,
  placeholder: 'Выбор кафедры',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  forceEnableCustom: -1,
  onChange: searcher.updResults
});
uiFaculty = new FacultySelect(ge('faculty'), ge('cFaculty'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  faculty: uniFilterSelData.faculty,
  university: uniFilterSelData.university,
  placeholder: 'Выбор факультета',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  forceEnableCustom: -1,
  chairSelect: uiChair,
  onChange: searcher.updResults
});
uiUniversity = new UniversityHintSelect(ge('university'), ge('cUniversity'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  showMax: 30,
  university: uniFilterSelData.university,
  country: uniFilterSelData.country[0],
  city: uniFilterSelData.city[0],
  introText: 'Введите название',
  placeholder: 'Выбор университета',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Ничего не найдено',
  // forceEnableCustom: -1,
  alwaysVisible: 1,
  facultySelect: uiFaculty,
  eduFormSelect: uiEduForm,
  eduStatusSelect: uiEduStatus,
  uniYearSelect: uiUniYear,
  onChange: function(value) {
    if (intval(value)) {
      slide_show('cUniYear');
    } else {
      slide_hide('cUniYear');
    }
   searcher.updResults();
  }
});
if (cur.uiCountry) extend(cur.uiCountry.options, {
  universitySelect: uiUniversity,
  eduFormSelect: uiEduForm,
  eduStatusSelect: uiEduStatus
});
if (cur.uiCity) extend(cur.uiCity.options, {
  universitySelect: uiUniversity
});function getAgeFromData(max) {
 max = parseInt(max);
 if (!max > 0) max = 80;
 return getRangeData(12, max, 1, 'от ', 'От');
}
function getAgeToData(min) {
 min = parseInt(min);
 if (!min > 0) min = 12;
 return getRangeData(min, 80, 1, 'до ', 'До');
}

function getRangeData(min, max, step, prefix, label) {
 if (min > max) return false;
 var ret = [[0, label]];
 if (step < 0) {
   for (var i = max; i >= min; i += step)
     ret.push([i, prefix + i]);
 } else if (step > 0) {
   for (var i = min; i <= max; i += step)
     ret.push([i, prefix + i]);
 }
 return ret;
}

var uiAgeFrom, uiAgeTo;

uiAgeFrom = new Dropdown(ge('ageFrom'), getAgeFromData(), {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 70,
  selectedItem: '',
  onChange: function(value){
    uiAgeTo.setData(getAgeToData(value));
   searcher.updResults();
  }
});

uiAgeTo = new Dropdown(ge('ageTo'), getAgeToData(), {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 70,
  selectedItem: '',
  onChange: function(value){
    uiAgeFrom.setData(getAgeFromData(value));
   searcher.updResults();
  }
});window.radioBtns['sex'] = {
  els: Array.prototype.slice.apply(geByClass('radiobtn', ge('cSex'))),
  val: 0
}
cur.onSexChanged = function(value) {
  ge('c[sex]').value = value;
  var selectedStatuses = cur.uiStatuses.val();
  var statusesData = (value == 1) ? cur.fmStatuses : cur.mStatuses;
  cur.uiStatuses.setData(statusesData);
  if (selectedStatuses) {
    cur.uiStatuses.clear();
    var arr = selectedStatuses.split(',');
    for (var i = 0; i < arr.length; i++) {
      cur.uiStatuses.selectItem(arr[i]);
    }
  }
  searcher.updResults();
}

var uiStatuses;

var mStatuses = [
  [0, 'Выбор статуса'],
  [1, 'Не женат'],
  [2, 'Есть подруга'],
  [3, 'Помолвлен'],
  [4, 'Женат'],
  [7, 'Влюблён'],
  [5, 'Всё сложно'],
  [6, 'В активном поиске']
];
cur.mStatuses = mStatuses;

var fmStatuses = [
  [0, 'Выбор статуса'],
  [1, 'Не замужем'],
  [2, 'Есть друг'],
  [3, 'Помолвлена'],
  [4, 'Замужем'],
  [7, 'Влюблена'],
  [5, 'Всё сложно'],
  [6, 'В активном поиске']
];
cur.fmStatuses = fmStatuses;

uiStatuses = new Dropdown(ge('status'),
  '' == '1' ? fmStatuses : mStatuses, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});
cur.uiStatuses = uiStatuses;

var onlineCB = new Checkbox(ge('online'), {
  width: 150,
  label: 'сейчас на сайте',
  onChange: searcher.updResults
});
setStyle(onlineCB.container, {paddingTop: '5px'});var uiPolitic, uiPersonalPriority, uiPeoplePriority, uiSmoking, uiAlcohol;

var politicData = [
  [0, 'Политические взгляды'],
  [8, 'Индифферентные'],
  [1, 'Коммунистические'],
  [2, 'Социалистичеcкие'],
  [3, 'Умеренные'],
  [4, 'Либеральные'],
  [5, 'Консервативные'],
  [6, 'Монархические'],
  [7, 'Ультраконсервативные'],
  [9, 'Либертарианские']
];
var lifePriorityData = [
  [0, 'Главное в жизни'],
  [1, 'Семья и дети'],
  [2, 'Карьера и деньги'],
  [3, 'Развлечения и отдых'],
  [4, 'Наука и исследования'],
  [5, 'Совершенствование мира'],
  [6, 'Саморазвитие'],
  [7, 'Красота и искусство'],
  [8, 'Слава и влияние']
];
var peoplePriorityData = [
  [0, 'Главное в людях'],
  [1, 'Ум и креативность'],
  [2, 'Доброта и честность'],
  [3, 'Красота и здоровье'],
  [4, 'Власть и богатство'],
  [5, 'Смелость и упорство'],
  [6, 'Юмор и жизнелюбие']
];
var smokingData = [
  [0, 'Отношение к курению'],
  [1, 'Резко негативное'],
  [2, 'Негативное'],
  [3, 'Компромиссное'],
  [4, 'Нейтральное'],
  [5, 'Положительное']
];
var alcoholData = [
  [0, 'Отношение к алкоголю'],
  [1, 'Резко негативное'],
  [2, 'Негативное'],
  [3, 'Компромиссное'],
  [4, 'Нейтральное'],
  [5, 'Положительное']
];

uiPolitic = new Dropdown(ge('politic'), politicData, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});
uiPersonalPriority = new Dropdown(ge('personal_priority'), lifePriorityData, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});
uiPeoplePriority = new Dropdown(ge('important_in_others'), peoplePriorityData, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});
uiSmoking = new Dropdown(ge('smoking'), smokingData, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});
uiAlcohol = new Dropdown(ge('alcohol'), alcoholData, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  selectedItems: '',
  width: 150,
  onChange: searcher.updResults
});

legacyPlaceholderSetup('religion');
legacyPlaceholderSetup('interests');
addEvent('religion', 'change keydown', searcher.onInputChange);
var uiAddrCountry, uiAddrCity, uiDistrict, uiStation, uiStreet, uiHouse, uiPlace;
var addrFilterSelData = {"countries":[["1","Россия"],[2,"Украина"],[3,"Беларусь"],[4,"Казахстан"],[5,"Азербайджан"],[6,"Армения"],[7,"Грузия"],[11,"Кыргызстан"],[15,"Молдова"],[16,"Таджикистан"],[17,"Туркменистан"],[18,"Узбекистан"],[19,"Австралия"],[20,"Австрия"],[21,"Албания"],[22,"Алжир"],[23,"Американское Самоа"],[24,"Ангилья"],[25,"Ангола"],[26,"Андорра"],[27,"Антигуа и Барбуда"],[28,"Аргентина"],[29,"Аруба"],[30,"Афганистан"],[31,"Багамы"],[32,"Бангладеш"],[33,"Барбадос"],[34,"Бахрейн"],[35,"Белиз"],[36,"Бельгия"],[37,"Бенин"],[38,"Бермуды"],[39,"Болгария"],[40,"Боливия"],[41,"Босния и Герцеговина"],[42,"Ботсвана"],[43,"Бразилия"],[44,"Бруней-Даруссалам"],[45,"Буркина-Фасо"],[46,"Бурунди"],[47,"Бутан"],[48,"Вануату"],[49,"Великобритания"],[50,"Венгрия"],[51,"Венесуэла"],[52,"Виргинские острова, Британские"],[53,"Виргинские острова, США"],[54,"Восточный Тимор"],[55,"Вьетнам"],[56,"Габон"],[57,"Гаити"],[58,"Гайана"],[59,"Гамбия"],[60,"Гана"],[61,"Гваделупа"],[62,"Гватемала"],[63,"Гвинея"],[64,"Гвинея-Бисау"],[65,"Германия"],[66,"Гибралтар"],[67,"Гондурас"],[68,"Гонконг"],[69,"Гренада"],[70,"Гренландия"],[71,"Греция"],[72,"Гуам"],[73,"Дания"],[231,"Джибути"],[74,"Доминика"],[75,"Доминиканская Республика"],[76,"Египет"],[77,"Замбия"],[78,"Западная Сахара"],[79,"Зимбабве"],[8,"Израиль"],[80,"Индия"],[81,"Индонезия"],[82,"Иордания"],[83,"Ирак"],[84,"Иран"],[85,"Ирландия"],[86,"Исландия"],[87,"Испания"],[88,"Италия"],[89,"Йемен"],[90,"Кабо-Верде"],[91,"Камбоджа"],[92,"Камерун"],[10,"Канада"],[93,"Катар"],[94,"Кения"],[95,"Кипр"],[96,"Кирибати"],[97,"Китай"],[98,"Колумбия"],[99,"Коморы"],[100,"Конго"],[101,"Конго, демократическая республика"],[102,"Коста-Рика"],[103,"Кот д`Ивуар"],[104,"Куба"],[105,"Кувейт"],[138,"Кюрасао"],[106,"Лаос"],[12,"Латвия"],[107,"Лесото"],[108,"Либерия"],[109,"Ливан"],[110,"Ливийская Арабская Джамахирия"],[13,"Литва"],[111,"Лихтенштейн"],[112,"Люксембург"],[113,"Маврикий"],[114,"Мавритания"],[115,"Мадагаскар"],[116,"Макао"],[117,"Македония"],[118,"Малави"],[119,"Малайзия"],[120,"Мали"],[121,"Мальдивы"],[122,"Мальта"],[123,"Марокко"],[124,"Мартиника"],[125,"Маршалловы Острова"],[126,"Мексика"],[127,"Микронезия, федеративные штаты"],[128,"Мозамбик"],[129,"Монако"],[130,"Монголия"],[131,"Монтсеррат"],[132,"Мьянма"],[133,"Намибия"],[134,"Науру"],[135,"Непал"],[136,"Нигер"],[137,"Нигерия"],[139,"Нидерланды"],[140,"Никарагуа"],[141,"Ниуэ"],[142,"Новая Зеландия"],[143,"Новая Каледония"],[144,"Норвегия"],[145,"Объединенные Арабские Эмираты"],[146,"Оман"],[147,"Остров Мэн"],[148,"Остров Норфолк"],[149,"Острова Кайман"],[150,"Острова Кука"],[151,"Острова Теркс и Кайкос"],[152,"Пакистан"],[153,"Палау"],[154,"Палестинская автономия"],[155,"Панама"],[156,"Папуа - Новая Гвинея"],[157,"Парагвай"],[158,"Перу"],[159,"Питкерн"],[160,"Польша"],[161,"Португалия"],[162,"Пуэрто-Рико"],[163,"Реюньон"],[164,"Руанда"],[165,"Румыния"],[9,"США"],[166,"Сальвадор"],[167,"Самоа"],[168,"Сан-Марино"],[169,"Сан-Томе и Принсипи"],[170,"Саудовская Аравия"],[171,"Свазиленд"],[172,"Святая Елена"],[173,"Северная Корея"],[174,"Северные Марианские острова"],[175,"Сейшелы"],[176,"Сенегал"],[177,"Сент-Винсент"],[178,"Сент-Китс и Невис"],[179,"Сент-Люсия"],[180,"Сент-Пьер и Микелон"],[181,"Сербия"],[182,"Сингапур"],[183,"Сирийская Арабская Республика"],[184,"Словакия"],[185,"Словения"],[186,"Соломоновы Острова"],[187,"Сомали"],[188,"Судан"],[189,"Суринам"],[190,"Сьерра-Леоне"],[191,"Таиланд"],[192,"Тайвань"],[193,"Танзания"],[194,"Того"],[195,"Токелау"],[196,"Тонга"],[197,"Тринидад и Тобаго"],[198,"Тувалу"],[199,"Тунис"],[200,"Турция"],[201,"Уганда"],[202,"Уоллис и Футуна"],[203,"Уругвай"],[204,"Фарерские острова"],[205,"Фиджи"],[206,"Филиппины"],[207,"Финляндия"],[208,"Фолклендские острова"],[209,"Франция"],[210,"Французская Гвиана"],[211,"Французская Полинезия"],[212,"Хорватия"],[213,"Центрально-Африканская Республика"],[214,"Чад"],[230,"Черногория"],[215,"Чехия"],[216,"Чили"],[217,"Швейцария"],[218,"Швеция"],[219,"Шпицберген и Ян Майен"],[220,"Шри-Ланка"],[221,"Эквадор"],[222,"Экваториальная Гвинея"],[223,"Эритрея"],[14,"Эстония"],[224,"Эфиопия"],[226,"Южная Корея"],[227,"Южно-Африканская Республика"],[228,"Ямайка"],[229,"Япония"]],"country":"","cities":[],"city":"","city_info":{"city":0,"completed_streets":1,"completed_schools":1,"completed_universities":1,"stations":[],"districts":[]},"district":0,"station":null,"street_val":[""],"street":null,"house":[""],"place":[""]};

selectsData.setCountries(addrFilterSelData.countries);
selectsData.setCities(addrFilterSelData.country[0], addrFilterSelData.cities);
selectsData.setCityInfo(addrFilterSelData.city[0], addrFilterSelData.city_info);

uiPlace = new PlaceSelect(ge('place'), ge('cPlace'), {
  multiselect: true,
  show: slide_show,
  hide: slide_hide,
  width: 150,
  place: addrFilterSelData.place,
  street: addrFilterSelData.street,
  city: addrFilterSelData.city[0],
  placeholder: 'Выбор места',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  introText: 'Введите название места',
  noResult: 'Ничего не найдено',
  forceEnableCustom: -1,
  onChange: searcher.updResults
});
uiHouse = new HouseSelect(ge('house'), ge('cHouse'), {
  multiselect: true,
  show: slide_show,
  hide: slide_hide,
  width: 150,
  house: addrFilterSelData.house,
  street: addrFilterSelData.street,
  placeholder: 'Выбор дома',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  introText: 'Введите номер дома',
  noResult: 'Ничего не найдено',
  forceEnableCustom: -1,
  onChange: searcher.updResults
});
uiStreet = new StreetSelect(ge('street'), ge('cStreet'), {
  multiselect: true,
  show: slide_show,
  hide: slide_hide,
  width: 150,
  street: addrFilterSelData.street_val,
  city: addrFilterSelData.city[0],
  introText: 'Введите название',
  placeholder: 'Выбор улицы',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Улиц не найдено',
  placeSelect: uiPlace,
  houseSelect: uiHouse,
  forceEnableCustom: -1,
  onChange: searcher.updResults
});
uiStation = new StationSelect(ge('station'), ge('cStation'), {
  multiselect: true,
  width: 150,
  station: addrFilterSelData.station,
  city: addrFilterSelData.city[0],
  placeholder: 'Выбор станции',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  onChange: searcher.updResults
});
uiDistrict = new DistrictSelect(ge('district'), ge('cDistrict'), {
  width: 150,
  district: addrFilterSelData.district,
  city: addrFilterSelData.city[0],
  placeholder: 'Выбор района',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  onChange: searcher.updResults
});
uiAddrCity = new CitySelect(ge('addrCity'), ge('cAddrCity'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  introText: 'Введите название',
  placeholder: 'Выбор города',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Городов не найдено',
  otherCity: 'Другой город',
  city: addrFilterSelData.city,
  country: addrFilterSelData.country[0],
  districtSelect: uiDistrict,
  stationSelect: uiStation,
  streetSelect: uiStreet,
  placeSelect: uiPlace,
  onChange: searcher.updResults
});
uiAddrCountry = new CountrySelect(ge('addrCountry'), ge('cAddrCountry'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  country: addrFilterSelData.country,
  placeholder: 'Выбор страны',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  autocomplete: 1,
  noDefaultCountry: 1,
  full_list: 'Другие страны',
  citySelect: uiAddrCity,
  onChange: searcher.updResults
});

window.updateMapAddressLocal = function() {
  var mapAddressElements = {
    country:  uiAddrCountry.selectedItems(),
    city:     uiAddrCity.selectedItems(),
    district: uiDistrict.selectedItems(),
    station:  uiStation.selectedItems(),
    street:   uiStreet.selectedItems(),
    house:    uiHouse.selectedItems()
  };
  window.mapAddress = getMapAddress(mapAddressElements);
};

onDomReady(function() { if (window.updateMap) updateMap(); });
  legacyPlaceholderSetup('company');
  legacyPlaceholderSetup('position');
  addEvent('company', 'blur', searcher.updResults);
  addEvent('company', 'keydown', function(event) {
    if (event.keyCode == KEY.ENTER) searcher.updResults(event);
  });
  addEvent('position', 'blur', searcher.updResults);
  addEvent('position', 'keydown', function(event) {
    if (event.keyCode == KEY.ENTER) searcher.updResults(event);
  });var uiMilCountry, uiMilUnit, uiMilYearFrom;
var milFiltersel_data = {"countries":[["1","Россия"],[2,"Украина"],[3,"Беларусь"],[4,"Казахстан"],[5,"Азербайджан"],[6,"Армения"],[7,"Грузия"],[11,"Кыргызстан"],[15,"Молдова"],[16,"Таджикистан"],[17,"Туркменистан"],[18,"Узбекистан"],[19,"Австралия"],[20,"Австрия"],[21,"Албания"],[22,"Алжир"],[23,"Американское Самоа"],[24,"Ангилья"],[25,"Ангола"],[26,"Андорра"],[27,"Антигуа и Барбуда"],[28,"Аргентина"],[29,"Аруба"],[30,"Афганистан"],[31,"Багамы"],[32,"Бангладеш"],[33,"Барбадос"],[34,"Бахрейн"],[35,"Белиз"],[36,"Бельгия"],[37,"Бенин"],[38,"Бермуды"],[39,"Болгария"],[40,"Боливия"],[41,"Босния и Герцеговина"],[42,"Ботсвана"],[43,"Бразилия"],[44,"Бруней-Даруссалам"],[45,"Буркина-Фасо"],[46,"Бурунди"],[47,"Бутан"],[48,"Вануату"],[49,"Великобритания"],[50,"Венгрия"],[51,"Венесуэла"],[52,"Виргинские острова, Британские"],[53,"Виргинские острова, США"],[54,"Восточный Тимор"],[55,"Вьетнам"],[56,"Габон"],[57,"Гаити"],[58,"Гайана"],[59,"Гамбия"],[60,"Гана"],[61,"Гваделупа"],[62,"Гватемала"],[63,"Гвинея"],[64,"Гвинея-Бисау"],[65,"Германия"],[66,"Гибралтар"],[67,"Гондурас"],[68,"Гонконг"],[69,"Гренада"],[70,"Гренландия"],[71,"Греция"],[72,"Гуам"],[73,"Дания"],[231,"Джибути"],[74,"Доминика"],[75,"Доминиканская Республика"],[76,"Египет"],[77,"Замбия"],[78,"Западная Сахара"],[79,"Зимбабве"],[8,"Израиль"],[80,"Индия"],[81,"Индонезия"],[82,"Иордания"],[83,"Ирак"],[84,"Иран"],[85,"Ирландия"],[86,"Исландия"],[87,"Испания"],[88,"Италия"],[89,"Йемен"],[90,"Кабо-Верде"],[91,"Камбоджа"],[92,"Камерун"],[10,"Канада"],[93,"Катар"],[94,"Кения"],[95,"Кипр"],[96,"Кирибати"],[97,"Китай"],[98,"Колумбия"],[99,"Коморы"],[100,"Конго"],[101,"Конго, демократическая республика"],[102,"Коста-Рика"],[103,"Кот д`Ивуар"],[104,"Куба"],[105,"Кувейт"],[138,"Кюрасао"],[106,"Лаос"],[12,"Латвия"],[107,"Лесото"],[108,"Либерия"],[109,"Ливан"],[110,"Ливийская Арабская Джамахирия"],[13,"Литва"],[111,"Лихтенштейн"],[112,"Люксембург"],[113,"Маврикий"],[114,"Мавритания"],[115,"Мадагаскар"],[116,"Макао"],[117,"Македония"],[118,"Малави"],[119,"Малайзия"],[120,"Мали"],[121,"Мальдивы"],[122,"Мальта"],[123,"Марокко"],[124,"Мартиника"],[125,"Маршалловы Острова"],[126,"Мексика"],[127,"Микронезия, федеративные штаты"],[128,"Мозамбик"],[129,"Монако"],[130,"Монголия"],[131,"Монтсеррат"],[132,"Мьянма"],[133,"Намибия"],[134,"Науру"],[135,"Непал"],[136,"Нигер"],[137,"Нигерия"],[139,"Нидерланды"],[140,"Никарагуа"],[141,"Ниуэ"],[142,"Новая Зеландия"],[143,"Новая Каледония"],[144,"Норвегия"],[145,"Объединенные Арабские Эмираты"],[146,"Оман"],[147,"Остров Мэн"],[148,"Остров Норфолк"],[149,"Острова Кайман"],[150,"Острова Кука"],[151,"Острова Теркс и Кайкос"],[152,"Пакистан"],[153,"Палау"],[154,"Палестинская автономия"],[155,"Панама"],[156,"Папуа - Новая Гвинея"],[157,"Парагвай"],[158,"Перу"],[159,"Питкерн"],[160,"Польша"],[161,"Португалия"],[162,"Пуэрто-Рико"],[163,"Реюньон"],[164,"Руанда"],[165,"Румыния"],[9,"США"],[166,"Сальвадор"],[167,"Самоа"],[168,"Сан-Марино"],[169,"Сан-Томе и Принсипи"],[170,"Саудовская Аравия"],[171,"Свазиленд"],[172,"Святая Елена"],[173,"Северная Корея"],[174,"Северные Марианские острова"],[175,"Сейшелы"],[176,"Сенегал"],[177,"Сент-Винсент"],[178,"Сент-Китс и Невис"],[179,"Сент-Люсия"],[180,"Сент-Пьер и Микелон"],[181,"Сербия"],[182,"Сингапур"],[183,"Сирийская Арабская Республика"],[184,"Словакия"],[185,"Словения"],[186,"Соломоновы Острова"],[187,"Сомали"],[188,"Судан"],[189,"Суринам"],[190,"Сьерра-Леоне"],[191,"Таиланд"],[192,"Тайвань"],[193,"Танзания"],[194,"Того"],[195,"Токелау"],[196,"Тонга"],[197,"Тринидад и Тобаго"],[198,"Тувалу"],[199,"Тунис"],[200,"Турция"],[201,"Уганда"],[202,"Уоллис и Футуна"],[203,"Уругвай"],[204,"Фарерские острова"],[205,"Фиджи"],[206,"Филиппины"],[207,"Финляндия"],[208,"Фолклендские острова"],[209,"Франция"],[210,"Французская Гвиана"],[211,"Французская Полинезия"],[212,"Хорватия"],[213,"Центрально-Африканская Республика"],[214,"Чад"],[230,"Черногория"],[215,"Чехия"],[216,"Чили"],[217,"Швейцария"],[218,"Швеция"],[219,"Шпицберген и Ян Майен"],[220,"Шри-Ланка"],[221,"Эквадор"],[222,"Экваториальная Гвинея"],[223,"Эритрея"],[14,"Эстония"],[224,"Эфиопия"],[226,"Южная Корея"],[227,"Южно-Африканская Республика"],[228,"Ямайка"],[229,"Япония"]],"country":""};

selectsData.setCountries(milFiltersel_data.countries);

uiMilCountry = new CountrySelect(ge('milCountry'), ge('cMilCountry'), {
  show: slide_show,
  hide: slide_hide,
  width: 150,
  country: milFiltersel_data.country,
  placeholder: 'Выбор страны',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  autocomplete: 1,
  noDefaultCountry: 1,
  full_list: 'Другие страны',
  onChange: function(value) {
    uiMilUnit.clear();
    if (intval(value)) {
      uiMilUnit.setURL('select_ajax.php?act=a_get_units&country=' + value);
      slide_show(ge('cMilUnit'));
    } else {
      slide_hide(ge('cMilUnit'));
    }
   searcher.updResults();
  }
});
uiMilUnit = new Selector(ge('milUnit'), 'select_ajax.php?act=a_get_units&country=', {
  width: 150,
  multiselect: false,
  dropdown: false,
  introText: 'Введите название',
  placeholder: 'Выбор части',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  noResult: 'Ничего не найдено',
  selectedItems: "",
  onChange: searcher.updResults
});

uiMilYear = new Dropdown(ge('milYearFrom'), [[0,"Год начала службы"],"2011","2010","2009","2008","2007","2006","2005","2004","2003","2002","2001","2000","1999","1998","1997","1996","1995","1994","1993","1992","1991","1990","1989","1988","1987","1986","1985","1984","1983","1982","1981","1980","1979","1978","1977","1976","1975","1974","1973","1972","1971","1970","1969","1968","1967","1966","1965","1964","1963","1962","1961","1960","1959","1958","1957","1956","1955","1954","1953","1952","1951","1950","1949","1948","1947","1946","1945"], {
  width: 150,
  selectedItems: '',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  onChange: searcher.updResults
});

new Checkbox(ge('photo'), {
  width: 150,
  label: 'с фотографией',
  onChange: searcher.updResults
});
new Checkbox(ge('name'), {
  width: 150,
  label: 'только в именах',
  onChange: searcher.updResults
});

legacyPlaceholderSetup('hometown');
addEvent('hometown', 'change keydown', searcher.onInputChange);

var uiBYear, uiBMonth, uiBDay;

function getDays(month, year) {
  var ret = [[0, 'День рождения']], days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], daysCount = 31;

  if (month == '2' && year % 4 == 0) {
    daysCount = 29;
  } else if (month && days[month]){
    daysCount = days[month];
  }
  for (var i = 1; i <= daysCount; i++) {
    ret.push(i);
  }
  return ret;
}

var years = [[0, 'Год рождения']];
for (var i = 1996; i >= 1920; i--) {
  years.push(i);
}
var monthes = [[0, 'Месяц рождения'], [1, 'Январь'], [2, 'Февраль'], [3, 'Март'], [4, 'Апрель'], [5, 'Май'], [6, 'Июнь'], [7, 'Июль'], [8, 'Август'], [9, 'Сентябрь'], [10, 'Октябрь'], [11, 'Ноябрь'], [12, 'Декабрь']];

uiBYear = new Dropdown(ge('bYear'), years, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 150,
  height: 170,
  selectedItem: '',
  onChange: function(value) {
    uiBDay.setData(getDays(uiBMonth.val(), value));
   searcher.updResults();
  }
});
uiBMonth = new Dropdown(ge('bMonth'), monthes, {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 150,
  height: 170,
  selectedItem: '',
  onChange: function(value) {
    uiBDay.setData(getDays(value, uiBYear.val()));
   searcher.updResults();
  }
});
uiBDay = new Dropdown(ge('bDay'), getDays('', ''), {
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 150,
  height: 170,
  selectedItem: '',
  onChange: function(value) {
   searcher.updResults();
  }
});

var langsData = [[0,"Выбор языка"],[-1,"Русский"],[1,"Українська"],[2,"Беларуская (тарашкевiца)"],[3,"English"],[4,"Espa&#241;ol"],[5,"Suomi"],[6,"Deutsch"],[7,"Italiano"],[8,"Български"],[9,"Hrvatski"],[10,"Magyar"],[11,"Српски"],[12,"Portugu&#234;s"],[14,"&#917;&#955;&#955;&#951;&#957;&#953;&#954;&#942;"],[15,"Polski"],[16,"Fran&#231;ais"],[17,"&#54620;&#44397;&#50612;"],[18,"&#27721;&#35821;"],[19,"Lietuvi&#371;"],[20,"&#26085;&#26412;&#35486;"],[21,"&#268;e&#353;tina"],[22,"Eesti"],[23,"Македонски"],[50,"Татарча"],[51,"Баш&#1185;орт"],[52,"Ч&#259;вашла"],[53,"Sloven&#269;ina"],[54,"Rom&#226;n&#259;"],[55,"Norsk"],[56,"Latvie&#353;u"],[57,"Az&#601;rbaycan"],[58,"&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;"],[59,"Shqip"],[60,"Svenska"],[61,"Nederlands"],[62,"T&#252;rkmen"],[63,"&#4325;&#4304;&#4320;&#4311;&#4323;&#4314;&#4312;"],[64,"Dansk"],[65,"O‘zbek"],[66,"Moldoveneasc&#259;"],[67,"Буряад"],[68,"&#3616;&#3634;&#3625;&#3634;&#3652;&#3607;&#3618;"],[69,"Bahasa Indonesia"],[70,"То&#1207;ик&#1251;"],[71,"Sloven&#353;&#269;ina"],[72,"Bosanski"],[73,"Portugu&#234;s brasileiro"],[74,"&#1662;&#1575;&#1585;&#1587;&#1740;"],[75,"Ti&#7871;ng Vi&#7879;t"],[76,"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;"],[77,"&#3523;&#3538;&#3458;&#3524;&#3517;"],[78,"&#2476;&#2494;&#2434;&#2482;&#2494;"],[79,"Tagalog"],[80,"Монгол"],[81,"&#4119;&#4121;&#4140;&#4101;&#4140;"],[82,"T&#252;rk&#231;e"],[83,"&#2344;&#2375;&#2346;&#2366;&#2354;&#2368;"],[84,"&#3749;&#3762;&#3751;"],[85,"&#1575;&#1585;&#1583;&#1608;"],[86,"Bahasa Melayu"],[87,"Кыргыз тили"],[88,"&#2350;&#2352;&#2366;&#2336;&#2368;"],[89,"&#2711;&#2753;&#2716;&#2736;&#2750;&#2724;&#2752; "],[90,"&#1662;&#1606;&#1580;&#1575;&#1576;&#1740;"],[91,"Ирон"],[92,"&#2325;&#2379;&#2306;&#2325;&#2339;&#2368;"],[93,"&#6039;&#6070;&#6047;&#6070;&#6017;&#6098;&#6040;&#6082;&#6042;"],[94,"&#3221;&#3240;&#3277;&#3240;&#3233;"],[95,"Kiswahili"],[96,"&#2980;&#2990;&#3007;&#2996;&#3021;"],[97,"&#1178;аза&#1179;ша"],[98,"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;"],[99,"&#1506;&#1489;&#1512;&#1497;&#1514;"],[101,"Эрзянь кель"],[102,"Адыгэбзэ"],[103,"А&#1191;суа бызш&#1241;а"],[104,"Q&#305;r&#305;mtatarca"],[105,"Саха тыла"],[106,"Адыгабзэ"],[107,"Удмурт"],[108,"Марий йылме"],[109,"Авар мац&#1216;"],[110,"ГIалгIай мотт"],[111,"Къарачай-малкъар тил"],[112,"Нохчийн мотт"],[113,"Эвэды"],[114,"Беларуская"],[115,"Kurd&#238;"],[116,"&#1662;&#1690;&#1578;&#1608;"],[117,"Агъул чIал"],[118,"Лезги чІал"],[119,"&#33274;&#28771;&#35441;"],[120,"&#4768;&#4635;&#4653;&#4763;"],[372,"Хантыйский"],[375,"Коми"],[376,"&#1329;&#1408;&#1381;&#1410;&#1396;&#1407;&#1377;&#1392;&#1377;&#1397;&#1381;&#1408;&#1383;&#1398;"],[386,"&#20013;&#25991; (&#32321;&#39636;)"],[388,"Нанайэ"],[555,"Esperanto"],[666,"Lingua latina"]];

uiLangs = new Dropdown(ge('lang'), langsData, {
  selectedItems: '',
  zeroPlaceholder: true,
  placeholderColor: '#777',
  width: 150,
  onChange: searcher.updResults
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
handlePageParams({"id":40297585,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', 'ae98ae6a5db358622b')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Сегодня<\/a> день рождения <a href=\"\/grishaew\" onclick=\"return nav.go(this, event)\">Leonid Grishaew<\/a>, <a href=\"\/s__a__m__v__e__l\" onclick=\"return nav.go(this, event)\">Самвела Петросяна<\/a>, <a href=\"\/pro100xakep\" onclick=\"return nav.go(this, event)\">Кинана Исмаилова<\/a>, <a href=\"\/maxk1ller\" onclick=\"return nav.go(this, event)\">Максима Беляка<\/a>, <a href=\"\/romchiksuperstar\" onclick=\"return nav.go(this, event)\">Романа Наперковского<\/a>, <a href=\"\/rus.murtazin\" onclick=\"return nav.go(this, event)\">Руслана Муртазина<\/a>, <a href=\"\/id85532708\" onclick=\"return nav.go(this, event)\">Сергея Волосевича<\/a>, <a href=\"\/xockey_11xd\" onclick=\"return nav.go(this, event)\">Даниса Гарифуллина<\/a>, <a href=\"\/kakvozduh\" onclick=\"return nav.go(this, event)\">Васи Васечкина<\/a>, <a href=\"\/id103862345\" onclick=\"return nav.go(this, event)\">Анжелы Курдюмовой<\/a>, <a href=\"\/billyashko\" onclick=\"return nav.go(this, event)\">Сергея Билиенко<\/a>, <a href=\"\/serega_joker\" onclick=\"return nav.go(this, event)\">Сереги Сургута<\/a>.\n    <\/div>\n  <\/div>\n<\/div><div id=\"left_block5_0\" onmouseover=\"leftBlockOver('5_0')\" onmouseout=\"leftBlockOut('5_0')\">\n  <div id=\"left_hide5_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('5_0', '1a8f2c29d81dc248a6')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/friends?w=calendar\" onclick=\"return nav.change({w: 'calendar'})\">Завтра<\/a> состоится встреча <a href=\"\/event29055199\" onclick=\"return nav.go(this, event)\">DEPECHE MODE PART...<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"","level":1,"loc":"search?c%5Bsection%5D=people","nophone":1,"width":791,"width_dec":160,"width_dec_footer":130});addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue40297585","timestamp":"540924738","key":"j2Q1KQbZgAjlMjgp9tX1HGc1fOymKUJ4hvTGsD3pyxqFkGh5lToqdXlN","uid":40297585,"version":9,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"MTg0MTU5","server_url":"http:\/\/q16.queue.vkontakte.ru\/im585","frame_path":"http:\/\/q16.queue.vkontakte.ru\/q_frame.php?6","frame_url":"im585","refresh_url":"http:\/\/vkontakte.ru\/notifier.php","fc":{"version":23,"state":{"clist":{"min":true,"x":-1,"y":0.000000},"tabs":[],"version":21}}});});addEvent(document, 'click', onDocumentClick);
    }
  </script>{/literal}
{/if}
{if $ra == 1}4658<!>ui_controls.css,ui_controls.js,selects.js,common.js,search.css<!>0<!>4250<!>0<!><!json>{literal}{"section":"people","has_more":true,"offset":40,"q":"","summary":"Найденные","script":"var uiCountry, uiCity;\nvar cityFilterSelData = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\",\"cities\":[],\"city\":\"\"};\n\nselectsData.setCountries(cityFilterSelData.countries);\nselectsData.setCities(cityFilterSelData.country[0], cityFilterSelData.cities);\n\nuiCity = new CitySelect(ge('city'), ge('cCity'), {\n  show: function(el) {\n    slide_show(el);\n    if (cur.onSearchStep) cur.onSearchStep();\n  },\n  hide: function(el) {\n    slide_hide(el);\n    if (cur.onSearchStep) cur.onSearchStep();\n  },\n  width: 150,\n  city: cityFilterSelData.city,\n  country: cityFilterSelData.country[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор города',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Городов не найдено',\n  otherCity: 'Другой город',\n  maxItemsShown: function(query_length) {\n    if (query_length > 6) {\n      return 500;\n    } else {\n      return 300;\n    }\n    },\n  onChange: searcher.updResults\n});\ncur.uiCity = uiCity;\n\nuiCountry = new CountrySelect(ge('country'), ge('cCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: cityFilterSelData.country,\n  placeholder: 'Выбор страны',\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: '',\n  citySelect: uiCity,\n  onChange: searcher.updResults\n});\ncur.uiCountry = uiCountry;var uiSchCountry, uiSchCity, uiSchool, uiSchYear, uiSchClass;\nvar schoolFilterSelData = {\"country\":\"\",\"city\":\"\",\"school\":\"\",\"school_class\":0};\n\nuiSchYear = new Dropdown(ge('schYear'), [[0,\"Год выпуска\"],\"2018\",\"2017\",\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\"], {\n  width: 150,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  onChange: searcher.updResults\n});\nuiSchClass = new ClassSelect(ge('schClass'), ge('cSchClass'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  placeholder: 'Выбор класса',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: schoolFilterSelData.country[0],\n  school: schoolFilterSelData.school,\n  school_class: schoolFilterSelData.school_class,\n  onChange: searcher.updResults\n});\nuiSchool = new SchoolHintSelect(ge('school'), ge('cSchool'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  school: schoolFilterSelData.school,\n  city: schoolFilterSelData.city[0],\n  introText: 'Введите название',\n  disabledText: 'Выберите регион',\n  introCountryText: 'Выберите страну',\n  placeholder: 'Выбор школы',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  disableOnHide: true,\n  forceEnableCustom: -1,\n  classSelect: uiSchClass,\n  schoolYearSelect: uiUniYear,\n  onChange: function(value) {\n    if (intval(value)) {\n      slide_show('cSchYear');\n    } else {\n      slide_hide('cSchYear');\n    }\n   searcher.updResults();\n  }\n});\nif (cur.uiCountry) extend(cur.uiCountry.options, {\n  schoolSelect: uiSchool,\n  classSelect: uiSchClass\n});\nif (cur.uiCity) extend(cur.uiCity.options, {\n  schoolSelect: uiSchool,\n  classSelect: uiSchClass\n});\n\nlegacyPlaceholderSetup('school_spec');\naddEvent('school_spec', 'change keydown', searcher.onInputChange);var uiUniCountry, uiUniCity, uiUniversity, uiFaculty, uiChair, uiUniYear, uiEduStatus, uiEduForm;\nvar uniFilterSelData = {\"country\":\"\",\"city\":\"\",\"university\":0,\"faculties\":{\"university\":0,\"completed_faculties\":1,\"faculties\":[]},\"faculty\":0,\"chairs\":{\"faculty\":0,\"completed_chairs\":1,\"chairs\":[]},\"chair\":0,\"form\":0,\"status\":0};\n\nselectsData.setUniversityInfo(uniFilterSelData.university, uniFilterSelData.faculties);\nselectsData.setFacultyInfo(uniFilterSelData.faculty, uniFilterSelData.chairs);\n\nuiUniYear = new Dropdown(ge('uniYear'), [[0,\"Год выпуска\"],\"2018\",\"2017\",\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\"], {\n  width: 150,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  onChange: searcher.updResults\n});\nuiEduForm = new EducationFormSelect(ge('edu_form'), ge('cEduForm'), {\n  show: slide_show,\n  hide: slide_hide,\n  multiselect: false,\n  visible: uniFilterSelData.form,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: uniFilterSelData.country[0],\n  university: uniFilterSelData.university,\n  edu_form: uniFilterSelData.form,\n  placeholder: 'Форма обучения',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiEduStatus = new EducationStatusSelect(ge('edu_status'), ge('cEduStatus'), {\n  show: slide_show,\n  hide: slide_hide,\n  multiselect: false,\n  visible: uniFilterSelData.status,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: uniFilterSelData.country[0],\n  university: uniFilterSelData.university,\n  edu_status: uniFilterSelData.status,\n  placeholder: 'Выбор статуса',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiChair = new ChairSelect(ge('chair'), ge('cChair'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  chair: uniFilterSelData.chair,\n  faculty: uniFilterSelData.faculty,\n  placeholder: 'Выбор кафедры',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiFaculty = new FacultySelect(ge('faculty'), ge('cFaculty'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  faculty: uniFilterSelData.faculty,\n  university: uniFilterSelData.university,\n  placeholder: 'Выбор факультета',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  forceEnableCustom: -1,\n  chairSelect: uiChair,\n  onChange: searcher.updResults\n});\nuiUniversity = new UniversityHintSelect(ge('university'), ge('cUniversity'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  showMax: 30,\n  university: uniFilterSelData.university,\n  country: uniFilterSelData.country[0],\n  city: uniFilterSelData.city[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор университета',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  \/\/ forceEnableCustom: -1,\n  alwaysVisible: 1,\n  facultySelect: uiFaculty,\n  eduFormSelect: uiEduForm,\n  eduStatusSelect: uiEduStatus,\n  uniYearSelect: uiUniYear,\n  onChange: function(value) {\n    if (intval(value)) {\n      slide_show('cUniYear');\n    } else {\n      slide_hide('cUniYear');\n    }\n   searcher.updResults();\n  }\n});\nif (cur.uiCountry) extend(cur.uiCountry.options, {\n  universitySelect: uiUniversity,\n  eduFormSelect: uiEduForm,\n  eduStatusSelect: uiEduStatus\n});\nif (cur.uiCity) extend(cur.uiCity.options, {\n  universitySelect: uiUniversity\n});function getAgeFromData(max) {\n max = parseInt(max);\n if (!max > 0) max = 80;\n return getRangeData(12, max, 1, 'от ', 'От');\n}\nfunction getAgeToData(min) {\n min = parseInt(min);\n if (!min > 0) min = 12;\n return getRangeData(min, 80, 1, 'до ', 'До');\n}\n\nfunction getRangeData(min, max, step, prefix, label) {\n if (min > max) return false;\n var ret = [[0, label]];\n if (step < 0) {\n   for (var i = max; i >= min; i += step)\n     ret.push([i, prefix + i]);\n } else if (step > 0) {\n   for (var i = min; i <= max; i += step)\n     ret.push([i, prefix + i]);\n }\n return ret;\n}\n\nvar uiAgeFrom, uiAgeTo;\n\nuiAgeFrom = new Dropdown(ge('ageFrom'), getAgeFromData(), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 70,\n  selectedItem: '',\n  onChange: function(value){\n    uiAgeTo.setData(getAgeToData(value));\n   searcher.updResults();\n  }\n});\n\nuiAgeTo = new Dropdown(ge('ageTo'), getAgeToData(), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 70,\n  selectedItem: '',\n  onChange: function(value){\n    uiAgeFrom.setData(getAgeFromData(value));\n   searcher.updResults();\n  }\n});window.radioBtns['sex'] = {\n  els: Array.prototype.slice.apply(geByClass('radiobtn', ge('cSex'))),\n  val: 0\n}\ncur.onSexChanged = function(value) {\n  ge('c[sex]').value = value;\n  var selectedStatuses = cur.uiStatuses.val();\n  var statusesData = (value == 1) ? cur.fmStatuses : cur.mStatuses;\n  cur.uiStatuses.setData(statusesData);\n  if (selectedStatuses) {\n    cur.uiStatuses.clear();\n    var arr = selectedStatuses.split(',');\n    for (var i = 0; i < arr.length; i++) {\n      cur.uiStatuses.selectItem(arr[i]);\n    }\n  }\n  searcher.updResults();\n}\n\nvar uiStatuses;\n\nvar mStatuses = [\n  [0, 'Выбор статуса'],\n  [1, 'Не женат'],\n  [2, 'Есть подруга'],\n  [3, 'Помолвлен'],\n  [4, 'Женат'],\n  [7, 'Влюблён'],\n  [5, 'Всё сложно'],\n  [6, 'В активном поиске']\n];\ncur.mStatuses = mStatuses;\n\nvar fmStatuses = [\n  [0, 'Выбор статуса'],\n  [1, 'Не замужем'],\n  [2, 'Есть друг'],\n  [3, 'Помолвлена'],\n  [4, 'Замужем'],\n  [7, 'Влюблена'],\n  [5, 'Всё сложно'],\n  [6, 'В активном поиске']\n];\ncur.fmStatuses = fmStatuses;\n\nuiStatuses = new Dropdown(ge('status'),\n  '' == '1' ? fmStatuses : mStatuses, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\ncur.uiStatuses = uiStatuses;\n\nvar onlineCB = new Checkbox(ge('online'), {\n  width: 150,\n  label: 'сейчас на сайте',\n  onChange: searcher.updResults\n});\nsetStyle(onlineCB.container, {paddingTop: '5px'});var uiPolitic, uiPersonalPriority, uiPeoplePriority, uiSmoking, uiAlcohol;\n\nvar politicData = [\n  [0, 'Политические взгляды'],\n  [8, 'Индифферентные'],\n  [1, 'Коммунистические'],\n  [2, 'Социалистичеcкие'],\n  [3, 'Умеренные'],\n  [4, 'Либеральные'],\n  [5, 'Консервативные'],\n  [6, 'Монархические'],\n  [7, 'Ультраконсервативные'],\n  [9, 'Либертарианские']\n];\nvar lifePriorityData = [\n  [0, 'Главное в жизни'],\n  [1, 'Семья и дети'],\n  [2, 'Карьера и деньги'],\n  [3, 'Развлечения и отдых'],\n  [4, 'Наука и исследования'],\n  [5, 'Совершенствование мира'],\n  [6, 'Саморазвитие'],\n  [7, 'Красота и искусство'],\n  [8, 'Слава и влияние']\n];\nvar peoplePriorityData = [\n  [0, 'Главное в людях'],\n  [1, 'Ум и креативность'],\n  [2, 'Доброта и честность'],\n  [3, 'Красота и здоровье'],\n  [4, 'Власть и богатство'],\n  [5, 'Смелость и упорство'],\n  [6, 'Юмор и жизнелюбие']\n];\nvar smokingData = [\n  [0, 'Отношение к курению'],\n  [1, 'Резко негативное'],\n  [2, 'Негативное'],\n  [3, 'Компромиссное'],\n  [4, 'Нейтральное'],\n  [5, 'Положительное']\n];\nvar alcoholData = [\n  [0, 'Отношение к алкоголю'],\n  [1, 'Резко негативное'],\n  [2, 'Негативное'],\n  [3, 'Компромиссное'],\n  [4, 'Нейтральное'],\n  [5, 'Положительное']\n];\n\nuiPolitic = new Dropdown(ge('politic'), politicData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiPersonalPriority = new Dropdown(ge('personal_priority'), lifePriorityData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiPeoplePriority = new Dropdown(ge('important_in_others'), peoplePriorityData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiSmoking = new Dropdown(ge('smoking'), smokingData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiAlcohol = new Dropdown(ge('alcohol'), alcoholData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\n\nlegacyPlaceholderSetup('religion');\nlegacyPlaceholderSetup('interests');\naddEvent('religion', 'change keydown', searcher.onInputChange);\nvar uiAddrCountry, uiAddrCity, uiDistrict, uiStation, uiStreet, uiHouse, uiPlace;\nvar addrFilterSelData = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\",\"cities\":[],\"city\":\"\",\"city_info\":{\"city\":0,\"completed_streets\":1,\"completed_schools\":1,\"completed_universities\":1,\"stations\":[],\"districts\":[]},\"district\":0,\"station\":null,\"street_val\":[\"\"],\"street\":null,\"house\":[\"\"],\"place\":[\"\"]};\n\nselectsData.setCountries(addrFilterSelData.countries);\nselectsData.setCities(addrFilterSelData.country[0], addrFilterSelData.cities);\nselectsData.setCityInfo(addrFilterSelData.city[0], addrFilterSelData.city_info);\n\nuiPlace = new PlaceSelect(ge('place'), ge('cPlace'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  place: addrFilterSelData.place,\n  street: addrFilterSelData.street,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор места',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  introText: 'Введите название места',\n  noResult: 'Ничего не найдено',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiHouse = new HouseSelect(ge('house'), ge('cHouse'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  house: addrFilterSelData.house,\n  street: addrFilterSelData.street,\n  placeholder: 'Выбор дома',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  introText: 'Введите номер дома',\n  noResult: 'Ничего не найдено',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiStreet = new StreetSelect(ge('street'), ge('cStreet'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  street: addrFilterSelData.street_val,\n  city: addrFilterSelData.city[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор улицы',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Улиц не найдено',\n  placeSelect: uiPlace,\n  houseSelect: uiHouse,\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiStation = new StationSelect(ge('station'), ge('cStation'), {\n  multiselect: true,\n  width: 150,\n  station: addrFilterSelData.station,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор станции',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\nuiDistrict = new DistrictSelect(ge('district'), ge('cDistrict'), {\n  width: 150,\n  district: addrFilterSelData.district,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор района',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\nuiAddrCity = new CitySelect(ge('addrCity'), ge('cAddrCity'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  introText: 'Введите название',\n  placeholder: 'Выбор города',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Городов не найдено',\n  otherCity: 'Другой город',\n  city: addrFilterSelData.city,\n  country: addrFilterSelData.country[0],\n  districtSelect: uiDistrict,\n  stationSelect: uiStation,\n  streetSelect: uiStreet,\n  placeSelect: uiPlace,\n  onChange: searcher.updResults\n});\nuiAddrCountry = new CountrySelect(ge('addrCountry'), ge('cAddrCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: addrFilterSelData.country,\n  placeholder: 'Выбор страны',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: 'Другие страны',\n  citySelect: uiAddrCity,\n  onChange: searcher.updResults\n});\n\nwindow.updateMapAddressLocal = function() {\n  var mapAddressElements = {\n    country:  uiAddrCountry.selectedItems(),\n    city:     uiAddrCity.selectedItems(),\n    district: uiDistrict.selectedItems(),\n    station:  uiStation.selectedItems(),\n    street:   uiStreet.selectedItems(),\n    house:    uiHouse.selectedItems()\n  };\n  window.mapAddress = getMapAddress(mapAddressElements);\n};\n\nonDomReady(function() { if (window.updateMap) updateMap(); });\n  legacyPlaceholderSetup('company');\n  legacyPlaceholderSetup('position');\n  addEvent('company', 'blur', searcher.updResults);\n  addEvent('company', 'keydown', function(event) {\n    if (event.keyCode == KEY.ENTER) searcher.updResults(event);\n  });\n  addEvent('position', 'blur', searcher.updResults);\n  addEvent('position', 'keydown', function(event) {\n    if (event.keyCode == KEY.ENTER) searcher.updResults(event);\n  });var uiMilCountry, uiMilUnit, uiMilYearFrom;\nvar milFiltersel_data = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\"};\n\nselectsData.setCountries(milFiltersel_data.countries);\n\nuiMilCountry = new CountrySelect(ge('milCountry'), ge('cMilCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: milFiltersel_data.country,\n  placeholder: 'Выбор страны',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: 'Другие страны',\n  onChange: function(value) {\n    uiMilUnit.clear();\n    if (intval(value)) {\n      uiMilUnit.setURL('select_ajax.php?act=a_get_units&country=' + value);\n      slide_show(ge('cMilUnit'));\n    } else {\n      slide_hide(ge('cMilUnit'));\n    }\n   searcher.updResults();\n  }\n});\nuiMilUnit = new Selector(ge('milUnit'), 'select_ajax.php?act=a_get_units&country=', {\n  width: 150,\n  multiselect: false,\n  dropdown: false,\n  introText: 'Введите название',\n  placeholder: 'Выбор части',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  selectedItems: \"\",\n  onChange: searcher.updResults\n});\n\nuiMilYear = new Dropdown(ge('milYearFrom'), [[0,\"Год начала службы\"],\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\",\"1945\"], {\n  width: 150,\n  selectedItems: '',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\n\nnew Checkbox(ge('photo'), {\n  width: 150,\n  label: 'с фотографией',\n  onChange: searcher.updResults\n});\nnew Checkbox(ge('name'), {\n  width: 150,\n  label: 'только в именах',\n  onChange: searcher.updResults\n});\n\nlegacyPlaceholderSetup('hometown');\naddEvent('hometown', 'change keydown', searcher.onInputChange);\n\nvar uiBYear, uiBMonth, uiBDay;\n\nfunction getDays(month, year) {\n  var ret = [[0, 'День рождения']], days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], daysCount = 31;\n\n  if (month == '2' && year % 4 == 0) {\n    daysCount = 29;\n  } else if (month && days[month]){\n    daysCount = days[month];\n  }\n  for (var i = 1; i <= daysCount; i++) {\n    ret.push(i);\n  }\n  return ret;\n}\n\nvar years = [[0, 'Год рождения']];\nfor (var i = 1996; i >= 1920; i--) {\n  years.push(i);\n}\nvar monthes = [[0, 'Месяц рождения'], [1, 'Январь'], [2, 'Февраль'], [3, 'Март'], [4, 'Апрель'], [5, 'Май'], [6, 'Июнь'], [7, 'Июль'], [8, 'Август'], [9, 'Сентябрь'], [10, 'Октябрь'], [11, 'Ноябрь'], [12, 'Декабрь']];\n\nuiBYear = new Dropdown(ge('bYear'), years, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n    uiBDay.setData(getDays(uiBMonth.val(), value));\n   searcher.updResults();\n  }\n});\nuiBMonth = new Dropdown(ge('bMonth'), monthes, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n    uiBDay.setData(getDays(value, uiBYear.val()));\n   searcher.updResults();\n  }\n});\nuiBDay = new Dropdown(ge('bDay'), getDays('', ''), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n   searcher.updResults();\n  }\n});\n\nvar langsData = [[0,\"Выбор языка\"],[-1,\"Русский\"],[1,\"Українська\"],[2,\"Беларуская (тарашкевiца)\"],[3,\"English\"],[4,\"Espa&#241;ol\"],[5,\"Suomi\"],[6,\"Deutsch\"],[7,\"Italiano\"],[8,\"Български\"],[9,\"Hrvatski\"],[10,\"Magyar\"],[11,\"Српски\"],[12,\"Portugu&#234;s\"],[14,\"&#917;&#955;&#955;&#951;&#957;&#953;&#954;&#942;\"],[15,\"Polski\"],[16,\"Fran&#231;ais\"],[17,\"&#54620;&#44397;&#50612;\"],[18,\"&#27721;&#35821;\"],[19,\"Lietuvi&#371;\"],[20,\"&#26085;&#26412;&#35486;\"],[21,\"&#268;e&#353;tina\"],[22,\"Eesti\"],[23,\"Македонски\"],[50,\"Татарча\"],[51,\"Баш&#1185;орт\"],[52,\"Ч&#259;вашла\"],[53,\"Sloven&#269;ina\"],[54,\"Rom&#226;n&#259;\"],[55,\"Norsk\"],[56,\"Latvie&#353;u\"],[57,\"Az&#601;rbaycan\"],[58,\"&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;\"],[59,\"Shqip\"],[60,\"Svenska\"],[61,\"Nederlands\"],[62,\"T&#252;rkmen\"],[63,\"&#4325;&#4304;&#4320;&#4311;&#4323;&#4314;&#4312;\"],[64,\"Dansk\"],[65,\"O‘zbek\"],[66,\"Moldoveneasc&#259;\"],[67,\"Буряад\"],[68,\"&#3616;&#3634;&#3625;&#3634;&#3652;&#3607;&#3618;\"],[69,\"Bahasa Indonesia\"],[70,\"То&#1207;ик&#1251;\"],[71,\"Sloven&#353;&#269;ina\"],[72,\"Bosanski\"],[73,\"Portugu&#234;s brasileiro\"],[74,\"&#1662;&#1575;&#1585;&#1587;&#1740;\"],[75,\"Ti&#7871;ng Vi&#7879;t\"],[76,\"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;\"],[77,\"&#3523;&#3538;&#3458;&#3524;&#3517;\"],[78,\"&#2476;&#2494;&#2434;&#2482;&#2494;\"],[79,\"Tagalog\"],[80,\"Монгол\"],[81,\"&#4119;&#4121;&#4140;&#4101;&#4140;\"],[82,\"T&#252;rk&#231;e\"],[83,\"&#2344;&#2375;&#2346;&#2366;&#2354;&#2368;\"],[84,\"&#3749;&#3762;&#3751;\"],[85,\"&#1575;&#1585;&#1583;&#1608;\"],[86,\"Bahasa Melayu\"],[87,\"Кыргыз тили\"],[88,\"&#2350;&#2352;&#2366;&#2336;&#2368;\"],[89,\"&#2711;&#2753;&#2716;&#2736;&#2750;&#2724;&#2752; \"],[90,\"&#1662;&#1606;&#1580;&#1575;&#1576;&#1740;\"],[91,\"Ирон\"],[92,\"&#2325;&#2379;&#2306;&#2325;&#2339;&#2368;\"],[93,\"&#6039;&#6070;&#6047;&#6070;&#6017;&#6098;&#6040;&#6082;&#6042;\"],[94,\"&#3221;&#3240;&#3277;&#3240;&#3233;\"],[95,\"Kiswahili\"],[96,\"&#2980;&#2990;&#3007;&#2996;&#3021;\"],[97,\"&#1178;аза&#1179;ша\"],[98,\"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;\"],[99,\"&#1506;&#1489;&#1512;&#1497;&#1514;\"],[101,\"Эрзянь кель\"],[102,\"Адыгэбзэ\"],[103,\"А&#1191;суа бызш&#1241;а\"],[104,\"Q&#305;r&#305;mtatarca\"],[105,\"Саха тыла\"],[106,\"Адыгабзэ\"],[107,\"Удмурт\"],[108,\"Марий йылме\"],[109,\"Авар мац&#1216;\"],[110,\"ГIалгIай мотт\"],[111,\"Къарачай-малкъар тил\"],[112,\"Нохчийн мотт\"],[113,\"Эвэды\"],[114,\"Беларуская\"],[115,\"Kurd&#238;\"],[116,\"&#1662;&#1690;&#1578;&#1608;\"],[117,\"Агъул чIал\"],[118,\"Лезги чІал\"],[119,\"&#33274;&#28771;&#35441;\"],[120,\"&#4768;&#4635;&#4653;&#4763;\"],[372,\"Хантыйский\"],[375,\"Коми\"],[376,\"&#1329;&#1408;&#1381;&#1410;&#1396;&#1407;&#1377;&#1392;&#1377;&#1397;&#1381;&#1408;&#1383;&#1398;\"],[386,\"&#20013;&#25991; (&#32321;&#39636;)\"],[388,\"Нанайэ\"],[555,\"Esperanto\"],[666,\"Lingua latina\"]];\n\nuiLangs = new Dropdown(ge('lang'), langsData, {\n  selectedItems: '',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  onChange: searcher.updResults\n});","htitle":"Поиск людей","loc":"search?c%5Bname%5D=1&c%5Bsection%5D=people"}{/literal}<!>
<table id="search_table" class="search_table">
  <tr>
    <td id="results" class="results highlight people_results">
   {section name=randoms_loop loop=$randoms}   <div class="people_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/id{$randoms[randoms_loop]->user_info.user_id}"> <img src="{$randoms[randoms_loop]->user_photo('./images/nophoto.gif')}"/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled name"><a href="/id{$randoms[randoms_loop]->user_info.user_id}">{$randoms[randoms_loop]->user_info.user_displayname}</a></div><div class="labeled ">{$randoms[randoms_loop]->user_info.user_status} </div>
    </div>
</div>{/section}</div><a id="show_more_link" onclick="return searcher.showMore();" class="clear">
  <div id="show_more_progress" class="progress"></div>
  <div id="show_more">Показать ещё</div>
</a>
    </td>
    <td id="filters_td" class="filters">
      <div id="search_filters">

  <form id="filter_form" name="filter_form">
    <input type="hidden" id="q" name="c[q]" value="" />
    <input type="hidden" id="section" name="c[section]" value="people" />
    <input type="hidden" id="c[sort]" name="c[sort]" value="" /><div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Регион</div>
</div><div class="inner_filter" id="region_filter">
  <div id="cCountry" class="control">
    <input id="country" name="c[country]" class="text" />
  </div>
  <div id="cCity" class="control" style="display: none">
    <input id="city" name="c[city]" class="text" />
  </div>
</div><div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Школа</div>
</div><div class="inner_filter" id="school_filter">
  <div id="cSchool" class="control" style="">
    <input id="school" name="c[school]" class="text" />
  </div>
  <div id="cSchClass" class="control" style="display: none">
    <input id="schClass" name="c[school_class]" class="text" />
  </div>
  <div id="cSchYear" class="control" style="display: none;">
    <input id="schYear" name="c[school_year]" class="text" />
  </div>
  <div id="cSchSpec" class="control" style="display: none;">
   <input id="school_spec" name="c[school_spec]" class="text" value="" placeholder="Специализация"/>
  </div>
</div><div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Университет</div>
</div><div class="inner_filter" id="uni_filter">
  <div id="cUniversity" class="control">
    <input id="university" name="c[university]" class="text" />
  </div>
  <div id="cFaculty" class="control" style="display: none">
    <input id="faculty" name="c[faculty]" class="text" />
  </div>
  <div id="cChair" class="control" style="display: none">
    <input id="chair" name="c[chair]" class="text" />
  </div>
  <div id="cUniYear" class="control" style="display: none;">
    <input id="uniYear" name="c[uni_year]" class="text" />
  </div>
  <div id="cEduForm" class="control" style="display: none">
    <input id="edu_form" name="c[edu_form]" class="text" />
  </div>
  <div id="cEduStatus" class="control" style="display: none">
    <input id="edu_status" name="c[edu_status]" class="text" />
  </div>
</div><div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Возраст</div>
</div><div class="inner_filter" id="age_filter">
  <div id="cAge" class="control clear_fix">
    <div class="range_to fl_l">
      <input id="ageFrom" name="c[age_from]" class="text" />
    </div>
    <div class="range_sep fl_l"> - </div>
    <div class="range_to fl_l">
      <input id="ageTo" name="c[age_to]" class="text" />
    </div>
  </div>
</div><input type="hidden" id="c[sex]" name="c[sex]" value="" /><div class="noselect clear_fix filter_main sex" onselectstart="return false">
  <div class="text fl_l">Пол</div>
</div><div class="inner_filter">
  <div id="cSex" class="control">
    <div class="radiobtn " onclick="radiobtn(this, 1, 'sex'); cur.onSexChanged(1);"><div></div>Женский</div>
    <div class="radiobtn " onclick="radiobtn(this, 2, 'sex'); cur.onSexChanged(2);"><div></div>Мужской</div>
    <div class="radiobtn on" onclick="radiobtn(this, 0, 'sex'); cur.onSexChanged(0);"><div></div>Любой</div>
  </div>
</div><div class="noselect clear_fix filter_main " onselectstart="return false">
  <div class="text fl_l">Семейное положение</div>
</div><div class="inner_filter" id="marital_filter">
  <div id="cStatus" class="control">
    <input id="status" name="c[status]" class="text" />
  </div>
  <input type="hidden" name="c[online]" id="online" value="0" />
</div><div class="noselect clear_fix filter_shut" onclick="searcher.toggleFilter(this, 'personalFilter');" onselectstart="return false">
 <div class="text fl_l">Убеждения</div>
 <div class="arrow fl_l"><div class="arrow_back"></div></div>
</div>
<div style="display: none" class="inner_filter" id="personalFilter">

<div id="cInterests" class="control" style="display:none">
 <input id="interests" name="c[interests]" class="text" value="" placeholder="Интересы" />
</div>

<div id="cReligion" class="control">
 <input id="religion" name="c[religion]" class="text" value="" placeholder="Религиозные взгляды" />
</div>
<div id="cPolitic" class="control">
 <input id="politic" name="c[politic]" class="text" />
</div>
<div id="cPersonalPriority" class="control">
 <input id="personal_priority" name="c[personal_priority]" class="text" />
</div>
<div id="cImportantInOthers" class="control">
 <input id="important_in_others" name="c[people_priority]" class="text" />
</div>
<div id="cSmoking" class="control">
 <input id="smoking" name="c[smoking]" class="text" />
</div>
<div id="cAlcohol" class="control">
 <input id="alcohol" name="c[alcohol]" class="text" />
</div>

</div><div class="noselect clear_fix filter_shut" onclick="searcher.toggleFilter(this, 'addressFilter');" onselectstart="return false">
 <div class="text fl_l">Места</div>
 <div class="arrow fl_l"><div class="arrow_back"></div></div>
</div>
<div style="display: none" class="inner_filter" id="addressFilter">
<div id="cAddrCountry" class="control">
<input id="addrCountry" name="c[addr_country]" class="text" />
</div>
<div id="cAddrCity" class="control" style="display: none">
 <input id="addrCity" name="c[addr_city]" class="text" />
</div>
<div id="cDistrict" class="control" style="display: none">
 <input id="district" name="c[addr_district]" class="text" />
</div>
<div id="cStation" class="control">
 <input id="station" name="c[addr_station]" class="text" />
</div>
<div id="cStreet" class="control">
 <input id="street" name="c[addr_street]" class="text" />
</div>
<div id="cHouse" class="control">
 <input id="house" name="c[addr_house]" class="text" />
</div>
<div id="cPlace" class="control">
 <input id="place" name="c[addr_place]" class="text" />
</div>
<div id="previewMapPeople" style="border: 1px solid #ccc; margin: 3px 0 0 0; width: 148px; height: 148px; display: none;"></div>
</div><div class="noselect clear_fix filter_shut" onclick="searcher.toggleFilter(this, 'companyFilter');" onselectstart="return false">
 <div class="text fl_l">Работа</div>
 <div class="arrow fl_l"><div class="arrow_back"></div></div>
</div>
<div style="display: none" class="inner_filter" id="companyFilter">
<div id="cCompany" class="control">
 <input id="company" name="c[company]" class="text" value="" placeholder="Работа" />
</div>
<div id="cPosition" class="control">
 <input id="position" name="c[position]" class="text" value="" placeholder="Должность" />
</div>
</div><div class="noselect clear_fix filter_shut" onclick="searcher.toggleFilter(this, 'militaryFilter');" onselectstart="return false">
 <div class="text fl_l">Военная служба</div>
 <div class="arrow fl_l"><div class="arrow_back"></div></div>
</div>
<div style="display: none" class="inner_filter" id="militaryFilter">
<div id="cMilCountry" class="control">
<input id="milCountry" name="c[mil_country]" class="text" />
</div>
<div id="cMilUnit" class="control" style="display:none">
 <input id="milUnit" name="c[mil_unit]" class="text" />
</div>
<div id="cMilYearFrom" class="control">
 <input id="milYearFrom" name="c[mil_year_from]" class="text" />
</div>
</div><div class="noselect clear_fix filter_shut" onclick="searcher.toggleFilter(this, 'extra_filter');" onselectstart="return false">
  <div class="text fl_l">Дополнительно</div>
  <div class="arrow fl_l"><div class="arrow_back"></div></div>
</div><div style="display: none;" class="inner_filter" id="extra_filter">
  <input type="hidden" name="c[photo]" id="photo" value="0" />
  <div id="name_only_filter">
    <input type="hidden" name="c[name]" id="name" value="1" />
  </div>
  <div id="cHometown" class="control" style="display: none">
   <input id="hometown" name="c[hometown]" class="text" value="" placeholder="Родной город"/>
  </div>
  <div id="cBYear" class="control">
    <input id="bYear" name="c[byear]" class="text" />
  </div>
  <div id="cBMonth" class="control">
    <input id="bMonth" name="c[bmonth]" class="text" />
  </div>
  <div id="cBDay" class="control">
    <input id="bDay" name="c[bday]" class="text" />
  </div>
  <div id="cLang" class="control" style="display: none">
   <input id="lang" name="c[lang]" class="text" />
  </div>


</div>
  </form>
      </div>
    </td>
  </tr>
</table><!><!><!>{/if}
{if $al == 1 AND $ra != 1}4658<!>ui_controls.css,ui_controls.js,selects.js,common.js,search.css<!>0<!>4250<!>0<!><!json>{literal}{"section":"people","has_more":true,"offset":40,"q":"","summary":"Найденные","script":"var uiCountry, uiCity;\nvar cityFilterSelData = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\",\"cities\":[],\"city\":\"\"};\n\nselectsData.setCountries(cityFilterSelData.countries);\nselectsData.setCities(cityFilterSelData.country[0], cityFilterSelData.cities);\n\nuiCity = new CitySelect(ge('city'), ge('cCity'), {\n  show: function(el) {\n    slide_show(el);\n    if (cur.onSearchStep) cur.onSearchStep();\n  },\n  hide: function(el) {\n    slide_hide(el);\n    if (cur.onSearchStep) cur.onSearchStep();\n  },\n  width: 150,\n  city: cityFilterSelData.city,\n  country: cityFilterSelData.country[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор города',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Городов не найдено',\n  otherCity: 'Другой город',\n  maxItemsShown: function(query_length) {\n    if (query_length > 6) {\n      return 500;\n    } else {\n      return 300;\n    }\n    },\n  onChange: searcher.updResults\n});\ncur.uiCity = uiCity;\n\nuiCountry = new CountrySelect(ge('country'), ge('cCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: cityFilterSelData.country,\n  placeholder: 'Выбор страны',\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: '',\n  citySelect: uiCity,\n  onChange: searcher.updResults\n});\ncur.uiCountry = uiCountry;var uiSchCountry, uiSchCity, uiSchool, uiSchYear, uiSchClass;\nvar schoolFilterSelData = {\"country\":\"\",\"city\":\"\",\"school\":\"\",\"school_class\":0};\n\nuiSchYear = new Dropdown(ge('schYear'), [[0,\"Год выпуска\"],\"2018\",\"2017\",\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\"], {\n  width: 150,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  onChange: searcher.updResults\n});\nuiSchClass = new ClassSelect(ge('schClass'), ge('cSchClass'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  placeholder: 'Выбор класса',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: schoolFilterSelData.country[0],\n  school: schoolFilterSelData.school,\n  school_class: schoolFilterSelData.school_class,\n  onChange: searcher.updResults\n});\nuiSchool = new SchoolHintSelect(ge('school'), ge('cSchool'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  school: schoolFilterSelData.school,\n  city: schoolFilterSelData.city[0],\n  introText: 'Введите название',\n  disabledText: 'Выберите регион',\n  introCountryText: 'Выберите страну',\n  placeholder: 'Выбор школы',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  disableOnHide: true,\n  forceEnableCustom: -1,\n  classSelect: uiSchClass,\n  schoolYearSelect: uiUniYear,\n  onChange: function(value) {\n    if (intval(value)) {\n      slide_show('cSchYear');\n    } else {\n      slide_hide('cSchYear');\n    }\n   searcher.updResults();\n  }\n});\nif (cur.uiCountry) extend(cur.uiCountry.options, {\n  schoolSelect: uiSchool,\n  classSelect: uiSchClass\n});\nif (cur.uiCity) extend(cur.uiCity.options, {\n  schoolSelect: uiSchool,\n  classSelect: uiSchClass\n});\n\nlegacyPlaceholderSetup('school_spec');\naddEvent('school_spec', 'change keydown', searcher.onInputChange);var uiUniCountry, uiUniCity, uiUniversity, uiFaculty, uiChair, uiUniYear, uiEduStatus, uiEduForm;\nvar uniFilterSelData = {\"country\":\"\",\"city\":\"\",\"university\":0,\"faculties\":{\"university\":0,\"completed_faculties\":1,\"faculties\":[]},\"faculty\":0,\"chairs\":{\"faculty\":0,\"completed_chairs\":1,\"chairs\":[]},\"chair\":0,\"form\":0,\"status\":0};\n\nselectsData.setUniversityInfo(uniFilterSelData.university, uniFilterSelData.faculties);\nselectsData.setFacultyInfo(uniFilterSelData.faculty, uniFilterSelData.chairs);\n\nuiUniYear = new Dropdown(ge('uniYear'), [[0,\"Год выпуска\"],\"2018\",\"2017\",\"2016\",\"2015\",\"2014\",\"2013\",\"2012\",\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\"], {\n  width: 150,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  onChange: searcher.updResults\n});\nuiEduForm = new EducationFormSelect(ge('edu_form'), ge('cEduForm'), {\n  show: slide_show,\n  hide: slide_hide,\n  multiselect: false,\n  visible: uniFilterSelData.form,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: uniFilterSelData.country[0],\n  university: uniFilterSelData.university,\n  edu_form: uniFilterSelData.form,\n  placeholder: 'Форма обучения',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiEduStatus = new EducationStatusSelect(ge('edu_status'), ge('cEduStatus'), {\n  show: slide_show,\n  hide: slide_hide,\n  multiselect: false,\n  visible: uniFilterSelData.status,\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  country: uniFilterSelData.country[0],\n  university: uniFilterSelData.university,\n  edu_status: uniFilterSelData.status,\n  placeholder: 'Выбор статуса',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiChair = new ChairSelect(ge('chair'), ge('cChair'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  chair: uniFilterSelData.chair,\n  faculty: uniFilterSelData.faculty,\n  placeholder: 'Выбор кафедры',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiFaculty = new FacultySelect(ge('faculty'), ge('cFaculty'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  faculty: uniFilterSelData.faculty,\n  university: uniFilterSelData.university,\n  placeholder: 'Выбор факультета',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  forceEnableCustom: -1,\n  chairSelect: uiChair,\n  onChange: searcher.updResults\n});\nuiUniversity = new UniversityHintSelect(ge('university'), ge('cUniversity'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  showMax: 30,\n  university: uniFilterSelData.university,\n  country: uniFilterSelData.country[0],\n  city: uniFilterSelData.city[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор университета',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  \/\/ forceEnableCustom: -1,\n  alwaysVisible: 1,\n  facultySelect: uiFaculty,\n  eduFormSelect: uiEduForm,\n  eduStatusSelect: uiEduStatus,\n  uniYearSelect: uiUniYear,\n  onChange: function(value) {\n    if (intval(value)) {\n      slide_show('cUniYear');\n    } else {\n      slide_hide('cUniYear');\n    }\n   searcher.updResults();\n  }\n});\nif (cur.uiCountry) extend(cur.uiCountry.options, {\n  universitySelect: uiUniversity,\n  eduFormSelect: uiEduForm,\n  eduStatusSelect: uiEduStatus\n});\nif (cur.uiCity) extend(cur.uiCity.options, {\n  universitySelect: uiUniversity\n});function getAgeFromData(max) {\n max = parseInt(max);\n if (!max > 0) max = 80;\n return getRangeData(12, max, 1, 'от ', 'От');\n}\nfunction getAgeToData(min) {\n min = parseInt(min);\n if (!min > 0) min = 12;\n return getRangeData(min, 80, 1, 'до ', 'До');\n}\n\nfunction getRangeData(min, max, step, prefix, label) {\n if (min > max) return false;\n var ret = [[0, label]];\n if (step < 0) {\n   for (var i = max; i >= min; i += step)\n     ret.push([i, prefix + i]);\n } else if (step > 0) {\n   for (var i = min; i <= max; i += step)\n     ret.push([i, prefix + i]);\n }\n return ret;\n}\n\nvar uiAgeFrom, uiAgeTo;\n\nuiAgeFrom = new Dropdown(ge('ageFrom'), getAgeFromData(), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 70,\n  selectedItem: '',\n  onChange: function(value){\n    uiAgeTo.setData(getAgeToData(value));\n   searcher.updResults();\n  }\n});\n\nuiAgeTo = new Dropdown(ge('ageTo'), getAgeToData(), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 70,\n  selectedItem: '',\n  onChange: function(value){\n    uiAgeFrom.setData(getAgeFromData(value));\n   searcher.updResults();\n  }\n});window.radioBtns['sex'] = {\n  els: Array.prototype.slice.apply(geByClass('radiobtn', ge('cSex'))),\n  val: 0\n}\ncur.onSexChanged = function(value) {\n  ge('c[sex]').value = value;\n  var selectedStatuses = cur.uiStatuses.val();\n  var statusesData = (value == 1) ? cur.fmStatuses : cur.mStatuses;\n  cur.uiStatuses.setData(statusesData);\n  if (selectedStatuses) {\n    cur.uiStatuses.clear();\n    var arr = selectedStatuses.split(',');\n    for (var i = 0; i < arr.length; i++) {\n      cur.uiStatuses.selectItem(arr[i]);\n    }\n  }\n  searcher.updResults();\n}\n\nvar uiStatuses;\n\nvar mStatuses = [\n  [0, 'Выбор статуса'],\n  [1, 'Не женат'],\n  [2, 'Есть подруга'],\n  [3, 'Помолвлен'],\n  [4, 'Женат'],\n  [7, 'Влюблён'],\n  [5, 'Всё сложно'],\n  [6, 'В активном поиске']\n];\ncur.mStatuses = mStatuses;\n\nvar fmStatuses = [\n  [0, 'Выбор статуса'],\n  [1, 'Не замужем'],\n  [2, 'Есть друг'],\n  [3, 'Помолвлена'],\n  [4, 'Замужем'],\n  [7, 'Влюблена'],\n  [5, 'Всё сложно'],\n  [6, 'В активном поиске']\n];\ncur.fmStatuses = fmStatuses;\n\nuiStatuses = new Dropdown(ge('status'),\n  '' == '1' ? fmStatuses : mStatuses, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\ncur.uiStatuses = uiStatuses;\n\nvar onlineCB = new Checkbox(ge('online'), {\n  width: 150,\n  label: 'сейчас на сайте',\n  onChange: searcher.updResults\n});\nsetStyle(onlineCB.container, {paddingTop: '5px'});var uiPolitic, uiPersonalPriority, uiPeoplePriority, uiSmoking, uiAlcohol;\n\nvar politicData = [\n  [0, 'Политические взгляды'],\n  [8, 'Индифферентные'],\n  [1, 'Коммунистические'],\n  [2, 'Социалистичеcкие'],\n  [3, 'Умеренные'],\n  [4, 'Либеральные'],\n  [5, 'Консервативные'],\n  [6, 'Монархические'],\n  [7, 'Ультраконсервативные'],\n  [9, 'Либертарианские']\n];\nvar lifePriorityData = [\n  [0, 'Главное в жизни'],\n  [1, 'Семья и дети'],\n  [2, 'Карьера и деньги'],\n  [3, 'Развлечения и отдых'],\n  [4, 'Наука и исследования'],\n  [5, 'Совершенствование мира'],\n  [6, 'Саморазвитие'],\n  [7, 'Красота и искусство'],\n  [8, 'Слава и влияние']\n];\nvar peoplePriorityData = [\n  [0, 'Главное в людях'],\n  [1, 'Ум и креативность'],\n  [2, 'Доброта и честность'],\n  [3, 'Красота и здоровье'],\n  [4, 'Власть и богатство'],\n  [5, 'Смелость и упорство'],\n  [6, 'Юмор и жизнелюбие']\n];\nvar smokingData = [\n  [0, 'Отношение к курению'],\n  [1, 'Резко негативное'],\n  [2, 'Негативное'],\n  [3, 'Компромиссное'],\n  [4, 'Нейтральное'],\n  [5, 'Положительное']\n];\nvar alcoholData = [\n  [0, 'Отношение к алкоголю'],\n  [1, 'Резко негативное'],\n  [2, 'Негативное'],\n  [3, 'Компромиссное'],\n  [4, 'Нейтральное'],\n  [5, 'Положительное']\n];\n\nuiPolitic = new Dropdown(ge('politic'), politicData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiPersonalPriority = new Dropdown(ge('personal_priority'), lifePriorityData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiPeoplePriority = new Dropdown(ge('important_in_others'), peoplePriorityData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiSmoking = new Dropdown(ge('smoking'), smokingData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\nuiAlcohol = new Dropdown(ge('alcohol'), alcoholData, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  selectedItems: '',\n  width: 150,\n  onChange: searcher.updResults\n});\n\nlegacyPlaceholderSetup('religion');\nlegacyPlaceholderSetup('interests');\naddEvent('religion', 'change keydown', searcher.onInputChange);\nvar uiAddrCountry, uiAddrCity, uiDistrict, uiStation, uiStreet, uiHouse, uiPlace;\nvar addrFilterSelData = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\",\"cities\":[],\"city\":\"\",\"city_info\":{\"city\":0,\"completed_streets\":1,\"completed_schools\":1,\"completed_universities\":1,\"stations\":[],\"districts\":[]},\"district\":0,\"station\":null,\"street_val\":[\"\"],\"street\":null,\"house\":[\"\"],\"place\":[\"\"]};\n\nselectsData.setCountries(addrFilterSelData.countries);\nselectsData.setCities(addrFilterSelData.country[0], addrFilterSelData.cities);\nselectsData.setCityInfo(addrFilterSelData.city[0], addrFilterSelData.city_info);\n\nuiPlace = new PlaceSelect(ge('place'), ge('cPlace'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  place: addrFilterSelData.place,\n  street: addrFilterSelData.street,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор места',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  introText: 'Введите название места',\n  noResult: 'Ничего не найдено',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiHouse = new HouseSelect(ge('house'), ge('cHouse'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  house: addrFilterSelData.house,\n  street: addrFilterSelData.street,\n  placeholder: 'Выбор дома',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  introText: 'Введите номер дома',\n  noResult: 'Ничего не найдено',\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiStreet = new StreetSelect(ge('street'), ge('cStreet'), {\n  multiselect: true,\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  street: addrFilterSelData.street_val,\n  city: addrFilterSelData.city[0],\n  introText: 'Введите название',\n  placeholder: 'Выбор улицы',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Улиц не найдено',\n  placeSelect: uiPlace,\n  houseSelect: uiHouse,\n  forceEnableCustom: -1,\n  onChange: searcher.updResults\n});\nuiStation = new StationSelect(ge('station'), ge('cStation'), {\n  multiselect: true,\n  width: 150,\n  station: addrFilterSelData.station,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор станции',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\nuiDistrict = new DistrictSelect(ge('district'), ge('cDistrict'), {\n  width: 150,\n  district: addrFilterSelData.district,\n  city: addrFilterSelData.city[0],\n  placeholder: 'Выбор района',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\nuiAddrCity = new CitySelect(ge('addrCity'), ge('cAddrCity'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  introText: 'Введите название',\n  placeholder: 'Выбор города',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Городов не найдено',\n  otherCity: 'Другой город',\n  city: addrFilterSelData.city,\n  country: addrFilterSelData.country[0],\n  districtSelect: uiDistrict,\n  stationSelect: uiStation,\n  streetSelect: uiStreet,\n  placeSelect: uiPlace,\n  onChange: searcher.updResults\n});\nuiAddrCountry = new CountrySelect(ge('addrCountry'), ge('cAddrCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: addrFilterSelData.country,\n  placeholder: 'Выбор страны',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: 'Другие страны',\n  citySelect: uiAddrCity,\n  onChange: searcher.updResults\n});\n\nwindow.updateMapAddressLocal = function() {\n  var mapAddressElements = {\n    country:  uiAddrCountry.selectedItems(),\n    city:     uiAddrCity.selectedItems(),\n    district: uiDistrict.selectedItems(),\n    station:  uiStation.selectedItems(),\n    street:   uiStreet.selectedItems(),\n    house:    uiHouse.selectedItems()\n  };\n  window.mapAddress = getMapAddress(mapAddressElements);\n};\n\nonDomReady(function() { if (window.updateMap) updateMap(); });\n  legacyPlaceholderSetup('company');\n  legacyPlaceholderSetup('position');\n  addEvent('company', 'blur', searcher.updResults);\n  addEvent('company', 'keydown', function(event) {\n    if (event.keyCode == KEY.ENTER) searcher.updResults(event);\n  });\n  addEvent('position', 'blur', searcher.updResults);\n  addEvent('position', 'keydown', function(event) {\n    if (event.keyCode == KEY.ENTER) searcher.updResults(event);\n  });var uiMilCountry, uiMilUnit, uiMilYearFrom;\nvar milFiltersel_data = {\"countries\":[[\"1\",\"Россия\"],[2,\"Украина\"],[3,\"Беларусь\"],[4,\"Казахстан\"],[5,\"Азербайджан\"],[6,\"Армения\"],[7,\"Грузия\"],[11,\"Кыргызстан\"],[15,\"Молдова\"],[16,\"Таджикистан\"],[17,\"Туркменистан\"],[18,\"Узбекистан\"],[19,\"Австралия\"],[20,\"Австрия\"],[21,\"Албания\"],[22,\"Алжир\"],[23,\"Американское Самоа\"],[24,\"Ангилья\"],[25,\"Ангола\"],[26,\"Андорра\"],[27,\"Антигуа и Барбуда\"],[28,\"Аргентина\"],[29,\"Аруба\"],[30,\"Афганистан\"],[31,\"Багамы\"],[32,\"Бангладеш\"],[33,\"Барбадос\"],[34,\"Бахрейн\"],[35,\"Белиз\"],[36,\"Бельгия\"],[37,\"Бенин\"],[38,\"Бермуды\"],[39,\"Болгария\"],[40,\"Боливия\"],[41,\"Босния и Герцеговина\"],[42,\"Ботсвана\"],[43,\"Бразилия\"],[44,\"Бруней-Даруссалам\"],[45,\"Буркина-Фасо\"],[46,\"Бурунди\"],[47,\"Бутан\"],[48,\"Вануату\"],[49,\"Великобритания\"],[50,\"Венгрия\"],[51,\"Венесуэла\"],[52,\"Виргинские острова, Британские\"],[53,\"Виргинские острова, США\"],[54,\"Восточный Тимор\"],[55,\"Вьетнам\"],[56,\"Габон\"],[57,\"Гаити\"],[58,\"Гайана\"],[59,\"Гамбия\"],[60,\"Гана\"],[61,\"Гваделупа\"],[62,\"Гватемала\"],[63,\"Гвинея\"],[64,\"Гвинея-Бисау\"],[65,\"Германия\"],[66,\"Гибралтар\"],[67,\"Гондурас\"],[68,\"Гонконг\"],[69,\"Гренада\"],[70,\"Гренландия\"],[71,\"Греция\"],[72,\"Гуам\"],[73,\"Дания\"],[231,\"Джибути\"],[74,\"Доминика\"],[75,\"Доминиканская Республика\"],[76,\"Египет\"],[77,\"Замбия\"],[78,\"Западная Сахара\"],[79,\"Зимбабве\"],[8,\"Израиль\"],[80,\"Индия\"],[81,\"Индонезия\"],[82,\"Иордания\"],[83,\"Ирак\"],[84,\"Иран\"],[85,\"Ирландия\"],[86,\"Исландия\"],[87,\"Испания\"],[88,\"Италия\"],[89,\"Йемен\"],[90,\"Кабо-Верде\"],[91,\"Камбоджа\"],[92,\"Камерун\"],[10,\"Канада\"],[93,\"Катар\"],[94,\"Кения\"],[95,\"Кипр\"],[96,\"Кирибати\"],[97,\"Китай\"],[98,\"Колумбия\"],[99,\"Коморы\"],[100,\"Конго\"],[101,\"Конго, демократическая республика\"],[102,\"Коста-Рика\"],[103,\"Кот д`Ивуар\"],[104,\"Куба\"],[105,\"Кувейт\"],[138,\"Кюрасао\"],[106,\"Лаос\"],[12,\"Латвия\"],[107,\"Лесото\"],[108,\"Либерия\"],[109,\"Ливан\"],[110,\"Ливийская Арабская Джамахирия\"],[13,\"Литва\"],[111,\"Лихтенштейн\"],[112,\"Люксембург\"],[113,\"Маврикий\"],[114,\"Мавритания\"],[115,\"Мадагаскар\"],[116,\"Макао\"],[117,\"Македония\"],[118,\"Малави\"],[119,\"Малайзия\"],[120,\"Мали\"],[121,\"Мальдивы\"],[122,\"Мальта\"],[123,\"Марокко\"],[124,\"Мартиника\"],[125,\"Маршалловы Острова\"],[126,\"Мексика\"],[127,\"Микронезия, федеративные штаты\"],[128,\"Мозамбик\"],[129,\"Монако\"],[130,\"Монголия\"],[131,\"Монтсеррат\"],[132,\"Мьянма\"],[133,\"Намибия\"],[134,\"Науру\"],[135,\"Непал\"],[136,\"Нигер\"],[137,\"Нигерия\"],[139,\"Нидерланды\"],[140,\"Никарагуа\"],[141,\"Ниуэ\"],[142,\"Новая Зеландия\"],[143,\"Новая Каледония\"],[144,\"Норвегия\"],[145,\"Объединенные Арабские Эмираты\"],[146,\"Оман\"],[147,\"Остров Мэн\"],[148,\"Остров Норфолк\"],[149,\"Острова Кайман\"],[150,\"Острова Кука\"],[151,\"Острова Теркс и Кайкос\"],[152,\"Пакистан\"],[153,\"Палау\"],[154,\"Палестинская автономия\"],[155,\"Панама\"],[156,\"Папуа - Новая Гвинея\"],[157,\"Парагвай\"],[158,\"Перу\"],[159,\"Питкерн\"],[160,\"Польша\"],[161,\"Португалия\"],[162,\"Пуэрто-Рико\"],[163,\"Реюньон\"],[164,\"Руанда\"],[165,\"Румыния\"],[9,\"США\"],[166,\"Сальвадор\"],[167,\"Самоа\"],[168,\"Сан-Марино\"],[169,\"Сан-Томе и Принсипи\"],[170,\"Саудовская Аравия\"],[171,\"Свазиленд\"],[172,\"Святая Елена\"],[173,\"Северная Корея\"],[174,\"Северные Марианские острова\"],[175,\"Сейшелы\"],[176,\"Сенегал\"],[177,\"Сент-Винсент\"],[178,\"Сент-Китс и Невис\"],[179,\"Сент-Люсия\"],[180,\"Сент-Пьер и Микелон\"],[181,\"Сербия\"],[182,\"Сингапур\"],[183,\"Сирийская Арабская Республика\"],[184,\"Словакия\"],[185,\"Словения\"],[186,\"Соломоновы Острова\"],[187,\"Сомали\"],[188,\"Судан\"],[189,\"Суринам\"],[190,\"Сьерра-Леоне\"],[191,\"Таиланд\"],[192,\"Тайвань\"],[193,\"Танзания\"],[194,\"Того\"],[195,\"Токелау\"],[196,\"Тонга\"],[197,\"Тринидад и Тобаго\"],[198,\"Тувалу\"],[199,\"Тунис\"],[200,\"Турция\"],[201,\"Уганда\"],[202,\"Уоллис и Футуна\"],[203,\"Уругвай\"],[204,\"Фарерские острова\"],[205,\"Фиджи\"],[206,\"Филиппины\"],[207,\"Финляндия\"],[208,\"Фолклендские острова\"],[209,\"Франция\"],[210,\"Французская Гвиана\"],[211,\"Французская Полинезия\"],[212,\"Хорватия\"],[213,\"Центрально-Африканская Республика\"],[214,\"Чад\"],[230,\"Черногория\"],[215,\"Чехия\"],[216,\"Чили\"],[217,\"Швейцария\"],[218,\"Швеция\"],[219,\"Шпицберген и Ян Майен\"],[220,\"Шри-Ланка\"],[221,\"Эквадор\"],[222,\"Экваториальная Гвинея\"],[223,\"Эритрея\"],[14,\"Эстония\"],[224,\"Эфиопия\"],[226,\"Южная Корея\"],[227,\"Южно-Африканская Республика\"],[228,\"Ямайка\"],[229,\"Япония\"]],\"country\":\"\"};\n\nselectsData.setCountries(milFiltersel_data.countries);\n\nuiMilCountry = new CountrySelect(ge('milCountry'), ge('cMilCountry'), {\n  show: slide_show,\n  hide: slide_hide,\n  width: 150,\n  country: milFiltersel_data.country,\n  placeholder: 'Выбор страны',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  autocomplete: 1,\n  noDefaultCountry: 1,\n  full_list: 'Другие страны',\n  onChange: function(value) {\n    uiMilUnit.clear();\n    if (intval(value)) {\n      uiMilUnit.setURL('select_ajax.php?act=a_get_units&country=' + value);\n      slide_show(ge('cMilUnit'));\n    } else {\n      slide_hide(ge('cMilUnit'));\n    }\n   searcher.updResults();\n  }\n});\nuiMilUnit = new Selector(ge('milUnit'), 'select_ajax.php?act=a_get_units&country=', {\n  width: 150,\n  multiselect: false,\n  dropdown: false,\n  introText: 'Введите название',\n  placeholder: 'Выбор части',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  noResult: 'Ничего не найдено',\n  selectedItems: \"\",\n  onChange: searcher.updResults\n});\n\nuiMilYear = new Dropdown(ge('milYearFrom'), [[0,\"Год начала службы\"],\"2011\",\"2010\",\"2009\",\"2008\",\"2007\",\"2006\",\"2005\",\"2004\",\"2003\",\"2002\",\"2001\",\"2000\",\"1999\",\"1998\",\"1997\",\"1996\",\"1995\",\"1994\",\"1993\",\"1992\",\"1991\",\"1990\",\"1989\",\"1988\",\"1987\",\"1986\",\"1985\",\"1984\",\"1983\",\"1982\",\"1981\",\"1980\",\"1979\",\"1978\",\"1977\",\"1976\",\"1975\",\"1974\",\"1973\",\"1972\",\"1971\",\"1970\",\"1969\",\"1968\",\"1967\",\"1966\",\"1965\",\"1964\",\"1963\",\"1962\",\"1961\",\"1960\",\"1959\",\"1958\",\"1957\",\"1956\",\"1955\",\"1954\",\"1953\",\"1952\",\"1951\",\"1950\",\"1949\",\"1948\",\"1947\",\"1946\",\"1945\"], {\n  width: 150,\n  selectedItems: '',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  onChange: searcher.updResults\n});\n\nnew Checkbox(ge('photo'), {\n  width: 150,\n  label: 'с фотографией',\n  onChange: searcher.updResults\n});\nnew Checkbox(ge('name'), {\n  width: 150,\n  label: 'только в именах',\n  onChange: searcher.updResults\n});\n\nlegacyPlaceholderSetup('hometown');\naddEvent('hometown', 'change keydown', searcher.onInputChange);\n\nvar uiBYear, uiBMonth, uiBDay;\n\nfunction getDays(month, year) {\n  var ret = [[0, 'День рождения']], days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], daysCount = 31;\n\n  if (month == '2' && year % 4 == 0) {\n    daysCount = 29;\n  } else if (month && days[month]){\n    daysCount = days[month];\n  }\n  for (var i = 1; i <= daysCount; i++) {\n    ret.push(i);\n  }\n  return ret;\n}\n\nvar years = [[0, 'Год рождения']];\nfor (var i = 1996; i >= 1920; i--) {\n  years.push(i);\n}\nvar monthes = [[0, 'Месяц рождения'], [1, 'Январь'], [2, 'Февраль'], [3, 'Март'], [4, 'Апрель'], [5, 'Май'], [6, 'Июнь'], [7, 'Июль'], [8, 'Август'], [9, 'Сентябрь'], [10, 'Октябрь'], [11, 'Ноябрь'], [12, 'Декабрь']];\n\nuiBYear = new Dropdown(ge('bYear'), years, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n    uiBDay.setData(getDays(uiBMonth.val(), value));\n   searcher.updResults();\n  }\n});\nuiBMonth = new Dropdown(ge('bMonth'), monthes, {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n    uiBDay.setData(getDays(value, uiBYear.val()));\n   searcher.updResults();\n  }\n});\nuiBDay = new Dropdown(ge('bDay'), getDays('', ''), {\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  height: 170,\n  selectedItem: '',\n  onChange: function(value) {\n   searcher.updResults();\n  }\n});\n\nvar langsData = [[0,\"Выбор языка\"],[-1,\"Русский\"],[1,\"Українська\"],[2,\"Беларуская (тарашкевiца)\"],[3,\"English\"],[4,\"Espa&#241;ol\"],[5,\"Suomi\"],[6,\"Deutsch\"],[7,\"Italiano\"],[8,\"Български\"],[9,\"Hrvatski\"],[10,\"Magyar\"],[11,\"Српски\"],[12,\"Portugu&#234;s\"],[14,\"&#917;&#955;&#955;&#951;&#957;&#953;&#954;&#942;\"],[15,\"Polski\"],[16,\"Fran&#231;ais\"],[17,\"&#54620;&#44397;&#50612;\"],[18,\"&#27721;&#35821;\"],[19,\"Lietuvi&#371;\"],[20,\"&#26085;&#26412;&#35486;\"],[21,\"&#268;e&#353;tina\"],[22,\"Eesti\"],[23,\"Македонски\"],[50,\"Татарча\"],[51,\"Баш&#1185;орт\"],[52,\"Ч&#259;вашла\"],[53,\"Sloven&#269;ina\"],[54,\"Rom&#226;n&#259;\"],[55,\"Norsk\"],[56,\"Latvie&#353;u\"],[57,\"Az&#601;rbaycan\"],[58,\"&#1344;&#1377;&#1397;&#1381;&#1408;&#1381;&#1398;\"],[59,\"Shqip\"],[60,\"Svenska\"],[61,\"Nederlands\"],[62,\"T&#252;rkmen\"],[63,\"&#4325;&#4304;&#4320;&#4311;&#4323;&#4314;&#4312;\"],[64,\"Dansk\"],[65,\"O‘zbek\"],[66,\"Moldoveneasc&#259;\"],[67,\"Буряад\"],[68,\"&#3616;&#3634;&#3625;&#3634;&#3652;&#3607;&#3618;\"],[69,\"Bahasa Indonesia\"],[70,\"То&#1207;ик&#1251;\"],[71,\"Sloven&#353;&#269;ina\"],[72,\"Bosanski\"],[73,\"Portugu&#234;s brasileiro\"],[74,\"&#1662;&#1575;&#1585;&#1587;&#1740;\"],[75,\"Ti&#7871;ng Vi&#7879;t\"],[76,\"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;\"],[77,\"&#3523;&#3538;&#3458;&#3524;&#3517;\"],[78,\"&#2476;&#2494;&#2434;&#2482;&#2494;\"],[79,\"Tagalog\"],[80,\"Монгол\"],[81,\"&#4119;&#4121;&#4140;&#4101;&#4140;\"],[82,\"T&#252;rk&#231;e\"],[83,\"&#2344;&#2375;&#2346;&#2366;&#2354;&#2368;\"],[84,\"&#3749;&#3762;&#3751;\"],[85,\"&#1575;&#1585;&#1583;&#1608;\"],[86,\"Bahasa Melayu\"],[87,\"Кыргыз тили\"],[88,\"&#2350;&#2352;&#2366;&#2336;&#2368;\"],[89,\"&#2711;&#2753;&#2716;&#2736;&#2750;&#2724;&#2752; \"],[90,\"&#1662;&#1606;&#1580;&#1575;&#1576;&#1740;\"],[91,\"Ирон\"],[92,\"&#2325;&#2379;&#2306;&#2325;&#2339;&#2368;\"],[93,\"&#6039;&#6070;&#6047;&#6070;&#6017;&#6098;&#6040;&#6082;&#6042;\"],[94,\"&#3221;&#3240;&#3277;&#3240;&#3233;\"],[95,\"Kiswahili\"],[96,\"&#2980;&#2990;&#3007;&#2996;&#3021;\"],[97,\"&#1178;аза&#1179;ша\"],[98,\"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;\"],[99,\"&#1506;&#1489;&#1512;&#1497;&#1514;\"],[101,\"Эрзянь кель\"],[102,\"Адыгэбзэ\"],[103,\"А&#1191;суа бызш&#1241;а\"],[104,\"Q&#305;r&#305;mtatarca\"],[105,\"Саха тыла\"],[106,\"Адыгабзэ\"],[107,\"Удмурт\"],[108,\"Марий йылме\"],[109,\"Авар мац&#1216;\"],[110,\"ГIалгIай мотт\"],[111,\"Къарачай-малкъар тил\"],[112,\"Нохчийн мотт\"],[113,\"Эвэды\"],[114,\"Беларуская\"],[115,\"Kurd&#238;\"],[116,\"&#1662;&#1690;&#1578;&#1608;\"],[117,\"Агъул чIал\"],[118,\"Лезги чІал\"],[119,\"&#33274;&#28771;&#35441;\"],[120,\"&#4768;&#4635;&#4653;&#4763;\"],[372,\"Хантыйский\"],[375,\"Коми\"],[376,\"&#1329;&#1408;&#1381;&#1410;&#1396;&#1407;&#1377;&#1392;&#1377;&#1397;&#1381;&#1408;&#1383;&#1398;\"],[386,\"&#20013;&#25991; (&#32321;&#39636;)\"],[388,\"Нанайэ\"],[555,\"Esperanto\"],[666,\"Lingua latina\"]];\n\nuiLangs = new Dropdown(ge('lang'), langsData, {\n  selectedItems: '',\n  zeroPlaceholder: true,\n  placeholderColor: '#777',\n  width: 150,\n  onChange: searcher.updResults\n});","htitle":"Поиск людей","loc":"search?c%5Bname%5D=1&c%5Bsection%5D=people"}{/literal}<!>

    <td id="results" class="results highlight people_results">
   {section name=randoms_loop loop=$randoms}   <div class="people_row three_col_row clear_fix">
  <div class="img fl_l">
    <a href="/id{$randoms[randoms_loop]->user_info.user_id}"> <img src="{$randoms[randoms_loop]->user_photo('./images/nophoto.gif')}"/> </a>
  </div>
  <div class="info fl_l">
    <div class="labeled name"><a href="/id{$randoms[randoms_loop]->user_info.user_id}" >{$randoms[randoms_loop]->user_info.user_displayname}</a></div><div class="labeled ">{$randoms[randoms_loop]->user_info.user_status} </div>
    </div>
</div>{/section}</div><a id="show_more_link" onclick="return searcher.showMore();" class="clear">
  <div id="show_more_progress" class="progress"></div>
  <div id="show_more">Показать всех</div>
</a>
    </td>
<!><!><!>{/if}