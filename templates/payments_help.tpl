{include file='header_top.tpl'}
 {include file='header_shapka.tpl'}
 {include file='header_menu.tpl'}

<!--link rel='stylesheet' href='http://s1.vceti.net/css/dialog2.css' type='text/css' /-->
<link rel='stylesheet' href='http://s1.vceti.net/css/rustylex.css' type='text/css' />
<script src="http://s1.vceti.net/js/common.js"></script><link rel="stylesheet" href="http://s1.vceti.net/css/payments.css?6" type="text/css" />
<link rel="stylesheet" href="http://s1.vceti.net/css/rate.css?1" type="text/css" />
<link rel="stylesheet" href="http://s1.vceti.net/css/box.css" type="text/css" />
<link rel="stylesheet" href="http://s1.vceti.net/css/wiki.css" type="text/css" />
<link rel="stylesheet" href="http://s1.vceti.net/css/datepicker.css" type="text/css" />
<script type="text/javascript" src="http://s1.vceti.net/js/lang0_1000.js"></script>
<link rel="shortcut icon" href="http://vceti.net/images/favicon.ico" />




                                   	{literal}
                                   	<style>
/*
 New input buttons with gradient
*/
.button_blue, .button_gray {
  text-align: center;
  border-radius: 2px;
  -moz-border-radius: 2px;
  -khtml-border-radius: 2px;
  -webkit-border-radius: 2px;
  display: inline-block;
  *display: inline;
  position: relative;
  zoom: 1;
}
.box_controls .button_blue, .box_controls .button_gray {
  margin: 2px 5px;
}
.button_blue button, .button_gray button {
  border: 1px solid;
  background: none;
  font-size: 11px;
  margin: 0px;
  cursor: pointer;
  white-space: nowrap;
  outline: none;
  padding: 4px 14px 4px;
  *padding: 5px 15px 3px;
  font-family: tahoma, verdana, arial, sans-serif, Lucida Sans;
  overflow: visible;
}
.button_wide {
  display: block;
}
.button_wide button {
  width: 100%;
}

.button_blue button::-moz-focus-inner,
.button_gray button::-moz-focus-inner {
  border: 0;
}

.button_blue {
  border: 1px solid #45688E;
  background: #5D81A7;
}
.button_blue button {
  border-top-color: #789ABF;
  border-bottom-color: #5980A9;
  border-left-color: #5980A9;
  border-right-color: #5980A9;
  color: #FFF;
  text-shadow:0 1px 0 #45688E;
  *border: 0;
  background: url(/images/button_vk.png) #6181a6 repeat-x top;
  background-position: 0px -16px;
  *background-position: 0px -16px;
}
.button_blue button:hover {
 background-position: 0px -8px;
}
.button_blue button:active {
  background: #5e80a5;
  border: 1px solid #5e80a5;
  position:relative;
}
.button_gray {
  border: 1px solid #b3b3b3;
  background: #e0e0e0;
}
.button_gray button {
 border-top-color: #ffffff;
 border-bottom-color: #e5e5e5;
 border-left-color: #e7e7e7;
 border-right-color: #e7e7e7;
 color: #444;
 text-shadow:0 1px 0 #ffffff;
 *border: 0;
 background: url(/images/button_vk.png) #dddddd repeat-x top;
 background-position: 0px -54px;
}
.button_gray button:hover {
 background-position: 0px -46px;
}
.button_gray button:active {
  background: #dcdcdc;
  border: 1px solid #dcdcdc;
  position:relative;
}
.button_lock {
  background: url('/images/upload_inv.gif') center no-repeat;
  position: absolute;
  width: 100%;
  height: 100%;
}
.button_gray .button_lock {
  background: url('/images/upload.gif') center no-repeat;
}

#side_back_link {
  padding: 8px 9px 8px 20px;
  background: #FFF url(/images/backlink.gif?3) no-repeat left -30px;
  display: none;
  opacity: 0;
  filter: alpha(opacity=0);
  z-index: 400;
}
#top_back_link {
  padding-left: 20px;
  background: url(/images/backlink.gif?3) no-repeat left -84px;
  font-weight: normal;
  width: 220px;
  overflow: hidden;
  display: none;
}
#side_back_link.back {
  background-position: left -30px;
  padding-left: 18px;
}
#side_back_link:hover {
  text-decoration: none;
}

.photo .userpic {
  border-radius: 4px;
}
</style>



                                   	<style>
	.numlist{
		list-style-type:none;
		padding-left:30px;
		margin:5px 0 8px;
	}
	.numlist li{
		display:inline;
		margin-right:10px;
	}
	b {
		white-space: nowrap;
	}

  .smsInfoTable {
 border:1px solid #BDC7D8;
 vertical-align:top;
 margin-bottom:20px;
 margin-top:10px;
}
.smsInfoTable td {
 padding:3px 5px;
}
.smsInfoTable th {
 padding:3px 5px;
 font-weight: normal;
 background-color:#F8F9FB;
 border-bottom:1px solid #BDC7D8;
}

.checkbox_on, .checkbox_off {
background:transparent url(/images/icons/check.gif) no-repeat scroll 0 0;
height:14px;
overflow:hidden;
width:15px;
}
.checkbox_on {
background-position:0 -14px;
}
.td_checkbox {
  width: 20px;
}
.td_label {
  line-height: 140%;
  padding: 3px 5px;
}

#descTable td {
  cursor: pointer;
}

#reportForm .caption {
width:170px;
text-align:right;
padding:1px 10px 5px 0;
vertical-align:middle;
}
#reportForm .value {
padding:2px 0;
}

#reportForm input[type="text"] {
  width:190px;
  height:15px;
}

#reportWarn {
border: 1px solid #DAE1E8;
padding: 5px 10px;
margin-top:10px;
background: #F7F7F7;
font-size: 9px;
}

#af {
border: 1px solid rgb(214, 221, 230);
padding: 6px 10px;
line-height: 150%;
background-color: rgb(238, 240, 243);
margin-bottom: 10px;
}

#af_votes {
line-height:150%;
background-color: #EEF0F3;
border: 1px solid #D6DDE6;
padding: 10px 15px;
margin-bottom:10px;
}
</style>
             {/literal}


    <div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="">

    <h1>Помощь</h1>

   </div>
  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">

    	<ul class="flatTabs">
<li class="flatTab"><a href="payments.php">Покупка голосов</a></li>
<li class="flatTabOn"><a href="payments_help.php">Помощь</a></li>
</ul>
<div id="rateHelp" style="padding-top: 15px;">

<a name="Для чего нужны Голоса?"></a><div class="wikiHeader">Для чего нужны Голоса?</div> Голоса необходимы для того, чтобы иметь возможность дарить другим пользователям подарки, поднимать им рейтинг, а также устанавливать спецэффекты на фотографию. Без ограничений при помощи Голосов эти функции быстро теряют смысл. <br><br>

<a name="Для чего нужен рейтинг?"></a><div class="wikiHeader">Для чего нужен рейтинг?</div> Рейтинг необходим для того, чтобы <b>ВКонтакте</b> мог получить информацию о том, в каком порядке выводить участников при поиске, в списках друзей, друзей онлайн, в группах и встречах. Мы не беремся вычислять значимость того или иного участника для сообщества, поэтому предлагаем пользователям сделать это самим - при помощи непрекращающегося глобального голосования. Похожей практики мы придерживаемся при сортировке событий. <br><br>

<a name="На что именно влияет рейтинг?"></a><div class="wikiHeader">На что именно влияет рейтинг?</div> Рейтинг влияет на то, на каком месте находится Ваша страница во всех списках друзей. Он также определяет, попадет ли Ваш профиль в число <b>6</b> "друзей онлайн" на страницах Ваших друзей. По умолчанию списки друзей и друзей онлайн всегда сортируются по рейтингу. <b>6</b> участников, которые выводятся в графе "<b>Участники</b>" на титульных страницах групп или встреч, также составляются из числа тех, кто состоит в данной группе или идет на данную встречу и при этом обладает максимальным рейтингом. Помимо этого, рейтинг влияет на порядок вывода Вашей страницы при любом поисковом запросе. <br><br>

<a name="Почему сортировка по рейтингу не всегда точная?"></a><div class="wikiHeader">Почему сортировка по рейтингу не всегда точная?</div> Наша система использует кеширование, поэтому результаты поисковых запросов могут меняться с некоторой задержкой. При больших поисковых запросах, например, при поиске по крупному вузу или городу, система некоторое время выводит приблизительные результаты и не всегда с первого раза определяет точный порядок в соответствии с рейтингом. Чем меньше результат поискового запроса, тем больше вероятность, что сортировка будет верна с первой попытки. Например, поиск по школе или кафедре с вероятностью <b>99%</b> даст верную сортировку по рейтингу после первого же запроса. <br><br>

<a name="Из чего, помимо полученных голосов, составляется мой рейтинг?"></a><div class="wikiHeader">Из чего, помимо полученных голосов, составляется мой рейтинг?</div> Вы можете набрать рейтинг до <b>100%</b>, просто заполняя Вашу страницу. Обычно на Вашей странице отмечается, какую информацию Вы можете указать, чтобы ее заполненность достигла <b>100%</b>. Детальную статистику о том, каких полей недостает у Вас на странице, можно также найти в разделе <a href="http://vceti.net/rate.php">Статистика</a> при нажатии на полоску рейтинга под Вашей фотографией. <br><br>

<a name="Набрал высокий рейтинг, но при сортировке я - последний. В чем дело?"></a><div class="wikiHeader">Набрал высокий рейтинг, но при сортировке я - последний. В чем дело?</div> Такое может происходить только по одной причине - Вы не указали Ваше имя и фамилию в соответствующих графах, либо используете постороннюю картинку вместо Вашей фотографии. По правилам <b>ВКонтакте</b> такие страницы могут выводиться в конце результатов поиска как нерелевантные, потому что они не соответствуют духу и изначальной цели ресурса.
</div>

</div>
</div>
</div>

</div>

 {include file='footer.tpl'}