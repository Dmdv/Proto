{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/photos.css?37"></link><link type="text/css" rel="stylesheet" href="/css/al/photos_add.css?10"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/privacy.css?28"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?47"></link><script type="text/javascript" src="/js/al/common.js?628"></script><script type="text/javascript" src="/js/lang0_0.js?5145"></script><script type="text/javascript" src="/js/al/photos.js?41"></script><script type="text/javascript" src="/js/al/upload.js?42"></script><script type="text/javascript" src="/js/al/sorter.js?15"></script><script type="text/javascript" src="/js/al/photos_add.js?14"></script><script type="text/javascript" src="/js/lib/ui_controls.js?108"></script><script type="text/javascript" src="/js/al/privacy.js?50"></script><script type="text/javascript" src="/js/al/qsorter.js?8"></script><script type="text/javascript" src="/js/al/notifier.js?127"></script>

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
    <div id="content"><div class="t_bar photos_tabs clear_fix">
  <ul class="t0">{if $owner->user_info.user_username == $user->user_info.user_username}<li class="t_r"><a href="user_album_edit.php?album_id={$album_info.album_id}">Редактировать альбом</a></li><li class="">
  <a href="/albums{$user->user_info.user_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Все фотографии</nobr></b>
  </a>
</li>{/if}

<li class="active_link">
  <a href="/album.php?user_id={$owner->user_info.user_id}&album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>{$album_info.album_title}</nobr></b>
  </a>
</li><li id="photo_add_tab" class="" style="display: none;"><a>
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Добавление фотографий</nobr></b>
  </a>
</li></ul>
</div><div class="photos_album_page">
 
  </div><div class="photos_album_page">
  {if $owner->user_info.user_username == $user->user_info.user_username}<div id="photos_upload_area_wrap" style="position: relative;">
  <a id="photos_upload_area" title="Вы можете перетащить файлы прямо на эту страницу." href="user_album_upload.php?album_id={$album_info.album_id}">
    <div class="photos_upload_area_upload">
      <span id="photo_upload_area_label" class="photos_upload_area_img">
        Добавить фотографии в альбом
      </span>
    </div>
    <div class="photos_upload_area_drop">
      Отпустите, чтобы начать загрузку.
    </div>
  </a>
<input id="photos_upload_input" class="file" type="file" size="28" onchange="photos.onUploadSelect(this.files);" multiple="true" name="photo" style="visibility: hidden; position: absolute;"/>
</div>{/if}
{if $total_files == 0}

<div id="photos_container" class="clear_fix">
<div class="photos_no_content"> В этом альбоме ещё нет фотографий </div>
</div>
{else}

  <div id="photos_container" class="clear_fix">{section name=files_loop loop=$files}{assign var='file_dir' value=$url->url_userdir($files[files_loop].media_author->user_info.user_id)}{assign var='file_src' value="`$file_dir``$files[files_loop].media_id`_thumb.jpg"}<div class="photo_row" id="photo_row{$owner->user_info.user_id}_{$files[files_loop].media_id}"><a href="/photo{$owner->user_info.user_id}_{$files[files_loop].media_id}" onclick="if (cur.cancelClick) return (cur.cancelClick = false); return showPhoto('{$owner->user_info.user_id}_{$files[files_loop].media_id}', 'album{$owner->user_info.user_id}_{$album_info.album_id}', {literal}{img: this, root: 1}{/literal}, event)">
  <img src="{$file_src}" />
</a><a class="bg">&nbsp;</a></div>{/section}</div>
  <a id="photos_load_more" onclick="photos.load()" style="display: none"><span>Показать больше фотографий</span>
    <div id="photos_more_progress" class="progress"></div>
  </a>
</div></div>
{/if}
  </div>
</div></div>
    </div>


    

    <div class="clear"></div>

  <div class="progress" id="global_prg"></div>

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
}if (!photos.checkHtml5Uploader() && browser.flash > 9 && !(browser.msie && !browser.msie8 && !browser.msie9)) {
//if (browser.flash > 9) {
  var area = ge('photos_upload_area'),
      el = ce('div', {innerHTML: '<div id="lite_photo_uploader" style="position: absolute; height: 100%; width: 100%; cursor: pointer;"></div>'}).firstChild;
  area.parentNode.insertBefore(el, area);
  cur.initFlashLite = function() {
    cur = extend(cur, {
      uplCont: ge('photos_add_cont'),
      uplBox: ge('photos_add_cont')
    });

    cur.uploaderLang = {"button_browse":"Выберите файл","photos_save_X_photos":["","Сохранить <b>%s<\/b> выбранную фотографию","Сохранить <b>%s<\/b> выбранных фотографий","Сохранить <b>%s<\/b> выбранных фотографий"],"photos_add_uploading":"Фотография загружается","photos_add_uploading_X":"Загружается 1 фотография из %s","photos_add_uploaded_X":["","Загружена %s фотография из {count}","Загружено %s фотографии из {count}","Загружено %s фотографий из {count}"],"photos_add_upload_finish":"Завершение загрузки..","photos_add_error":"Не удалось загрузить изображение","photos_add_saved":["","Фотография успешно загружена.","Фотографии успешно загружены.","Фотографии успешно загружены."]};
    cur.flashLiteUrl = 'user_album_upload.php&task=doupload&album_id={$album_info.album_id}';
    cur.flashLiteVars = {"oid":40297585,"aid":130903228,"gid":0,"mid":40297585,"hash":"02d1ecbcd715532e31806eaaee8f7d97","rhash":"d62507f1bf63a563f45d838cf2c78617","act":"do_add"};
    cur.flashLiteOptions = {
      file_name: 'photo',

      file_size_limit: 1024*1024*25, // 5Mb
      file_types_description: 'Image files (*.jpg, *.png, *.gif)',
      file_types: '*.jpg;*.JPG;*.png;*.PNG;*.gif;*.GIF;*.bmp;*.BMP',

      lang: cur.uploaderLang,

      onUploadStart: PhotosAdd.onUploadStart,
      onUploadProgress: PhotosAdd.onUploadProgress,
      onUploadComplete: PhotosAdd.onUploadComplete,
      onUploadCompleteAll: PhotosAdd.onUploadCompleteAll,

      clear: 1,
      type: 'photo',
      max_attempts: 3,
      server: 10425,
      error: 1,
      error_hash: '79217df243b1d109d52aca30827d7e13',
      dropbox: bodyNode,
      dragEl: bodyNode,
      visibleDropbox: true,
      //photoBox: ge('photos_add_box'),
      multiple: true,
      multi_progress: true,
      multi_sequence: true,
      max_files: 500,
      file_match: '\.(gif|jpg|png|bmp|jpeg)$',
      flash_lite: 1
    }

    cur.uplId = Upload.init('lite_photo_uploader', cur.flashLiteUrl, cur.flashLiteVars, cur.flashLiteOptions);
  };

  cur.flash_lite = true;
  cur.initFlashLite();

  cur.flashAddBar = '<div class="photos_add_bar_cont">\
    <div id="photos_add_bar">\
      <div class="photos_add_bar_shadow"></div>\
      <div class="photos_add_bar_wrap photos_add_area_drop"><div>\
        Отпустите, чтобы начать загрузку.\
      </div></div>\
      <div id="photos_add_bar_progress" class="photos_add_bar_wrap">\
        <div id="photos_add_p_line"><div id="photos_add_p_inner"></div></div>\
        <div id="photos_add_p_text"></div>\
      </div>\
      <div id="photos_add_bar_form" class="photos_add_bar_wrap">\
        <div id="photos_add_select_button" class="button_blue" style="position: relative;"><button id="photos_flash_add_button">Загрузить ещё фотографии</button></div>\
        <div id="photos_add_more_info">Вы можете выбрать <b>несколько</b> фотографий.</div>\
        <div id="photos_movedd_container" class="fl_l"><input id="photos_move_dd" name="photos_move_dd" type="hidden" /><span id="privacy_edit_photos_move"></span></div>\
      </div>\
    </div>\
  </div>';
  cur.flashAddWrap = '<div id="photos_add_wrap" class="photos_add_wrap">\
    <div id="photos_add_cont" class="photos_add_cont">\
      <div id="photos_add_error"></div>\
        <div id="photos_add_list"></div>\
        <div class="photos_go_to_album">\
          <a href="/album40297585_130903228"><div class="button_blue"><button>Перейти к альбому</button></div></a>\
        </div>\
      </div>\
    </div>\
  </div>';
  cur.flashAddSummary = '=)<span class="divide">|</span><span><a href="/album40297585_130903228" onclick="return nav.go(this, event)">Вернуться к альбому</a></span>';

  cur.photoData = {};

  var albums = [[0," - Альбом фотографии - "],[130903228,"=)"],[126496880,"Лето 2010"]];
  extend(cur, {
    album: '40297585_130903228',
    albums: albums,
    onPrivacyChanged: photos.privacy
  });

  if (albums.length < 15) {
    cur.privacyPhotoMove = true;
    var albumsArr = {};
    for (var i in albums) {
      if (albums[i][0] && albums[i][0] != "0") {
        albumsArr[albums[i][0]] = albums[i][1];
      }
    }
    cur.privacy = {
      'photos_move': [130903228, 1],
      'photos_move_types': albumsArr
    };
  }

  cur.lang = extend(cur.lang || {}, {
    photos_privacy_description: 'Описание'
  });
}extend(cur, {
  offset: 40,
  count: 10,
  moreFrom: 'album40297585_130903228',
  moreOpts: undefined
});

cur.lang = extend(cur.lang || {}, {
  photos_deleting_album: 'Удаление альбома',
  photos_sure_del_album: 'Вы уверены, что хотите удалить альбом?'
});

if (vk.version) {
  addEvent(window, 'load', photos.initScroll);
} else {
  photos.initScroll();
}
var preload = [80,""];

ajax.preload(cur.moreFrom, extend({offset: cur.offset, part: 1}, cur.moreOpts || {}), preload);

photos.registerDragZone({
  on: function() {
    addClass(ge('photos_upload_area'), 'photos_upload_area_enter');
  },
  un: function() {
    removeClass(ge('photos_upload_area'), 'photos_upload_area_enter');
  },
  drop: function(files) {
    photos.onUploadSelect(files);
  }
});cur.cansort = 1; qsorter.init('photos_container', {onReorder: photos.reorderPhotos, xsize: 4, width: 149, height: 116 + (browser.msie8 ? 2 : 0)});
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
handlePageParams({"id":40297585,"leftblocks":"<div id=\"left_block3_0\" onmouseover=\"leftBlockOver('3_0')\" onmouseout=\"leftBlockOut('3_0')\">\n  <div id=\"left_hide3_0\" class=\"left_hide\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"leftBlockHide('3_0', 'ae98ae6a5db358622b')\"><\/div>\n  <div class=\"left_box attention\">\n    <h4>Напоминание<\/h4>\n    <div>\n       <a href=\"\/events?tab=calendar\" onclick=\"return nav.go(this, event)\">Сегодня<\/a> день рождения <a href=\"\/id2130914\" onclick=\"return nav.go(this, event)\">Сергея Булаха<\/a>, <a href=\"\/vk_art\" onclick=\"return nav.go(this, event)\">Артура Исмагилова<\/a>, <a href=\"\/id19856153\" onclick=\"return nav.go(this, event)\">Ирины Ремнёвой<\/a>, <a href=\"\/elecktro06\" onclick=\"return nav.go(this, event)\">Ильшата Фатхуллина<\/a>, <a href=\"\/id73387466\" onclick=\"return nav.go(this, event)\">Влада 4онки<\/a>, <a href=\"\/id79802714\" onclick=\"return nav.go(this, event)\">Ильи Клюева<\/a>, <a href=\"\/id_sasori_furri\" onclick=\"return nav.go(this, event)\">Хины Албан<\/a>, <a href=\"\/mr.super\" onclick=\"return nav.go(this, event)\">Александра Зойдберга<\/a>, <a href=\"\/idsolovev_ilya\" onclick=\"return nav.go(this, event)\">Ильи Соловьева<\/a>.\n    <\/div>\n  <\/div>\n<\/div>","leftads":"<div id=\"ad_hide_mask_ad_0\" class=\"ad_hide_mask_new\" style=\"display: none; \"><div class=\"ad_info_new\">Данное объявление больше не будет Вам показываться.<\/div><\/div>\n<a href=\"\/away.php?to=QxscBkBxC1VwdAlbXnZUBhBBBkYUeQBEGQJhEhMNbAtCLAJ7X3pnWB8QbiQ6MQ0rHjsEfhEle0onOXtENwA\/FUxdDhwEen0lS3pIZiATAw0aD0sGGBNURhY8bz0Kd39mIhYDK201NUFBeUYgG35vGSMXah0hAVVVRi5TelAVdUMeCEFxFgUIQ2EOMHwaHn4rOE1HYBswDS05G0wFJCwyY20hRwARKHRWDksAJX0VK10uAXIUS3xJQ0AXdjAhCFNSDRokVh87ZDglD35cMiMpBgc-\" class=\"ad_box_new\" style=\"\" id=\"ad_box_ad_0\" onmouseover=\"leftBlockOver('_ad_0')\" onmouseout=\"leftBlockOut('_ad_0')\" target=\"_blank\">\n<div id=\"left_hide_ad_0\" class=\"left_hide_new\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"cancelEvent(event); return leftAdBlockHide('_ad_0', '\/away.php?to=QRscBkBxC1VwdAlbXnZUBhBBWhdIclERTwdmRUwNY1JCLwV7X3pnWB8QbiQ6MQ0rHjsEfhEle0onOXtENwA\/FUxdDhwEen0lS3pIZiATAw0aD0sGGBNURhY8bz0Kd39mIhYDK201NUFBeUYgG35vGSMXah0hAVVVRi5TelAVdUMeCEFxFgUIQ2EOMHwaHn4rOE1HYBswDS05G0wFJCwyY20hRwARKHRWDksAJX0VK10uAXIUS3xJQ0AXdjAhCFNSDRokVh87ZDglD35cMiMpBgc-');\"><\/div>\n<div id=\"ad_title\" class=\"ad_title_new\">Мир в огне 2<\/div>\n<div class=\"ad_domain_new\">Приложение<\/div>\n<span>\n  <div id=\"pr_image\" style=\"position: relative;\">\n    <img src=\"http:\/\/cs9517.vkontakte.ru\/u53098737\/75628422\/s_30da3c5319x:001.jpg\" style=\"\" \/>\n    <div id=\"ads_play_btn\" style=\"display: none;\"><\/div>\n  <\/div>\n<\/span>\n<div id=\"ad_desc\" class=\"ad_desc_new\" style=\"\">Армии на марше&#33; Мир ждет нового хозяина&#33;<\/div>\n<\/a>\n<div id=\"ad_hide_mask_ad_1\" class=\"ad_hide_mask_new\" style=\"display: none; \"><div class=\"ad_info_new\">Данное объявление больше не будет Вам показываться.<\/div><div class=\"ad_complain_new\">\n  <span class=\"ad_complain_info_new\">Если Вы считаете содержание данного объявления оскорбительным,<\/span>\n  <span class=\"ad_complain_link_new\" onclick=\"reportAd(1876034, this); return false;\">сообщите нам.<\/span>\n<\/div><\/div>\n<a href=\"\/away.php?to=QxscBkBxC1VwdAlbXnRWABJBWEUTcgIUHFhpQkhbaFcUf1B6X1wVXj8AYjAWHV5UAyRJSXMpXx0EA0pqOyYXBW8*MAMkNwIIR2VtWyY0awYBNHIAIhcCV0JcbjgyDgBiTCBkE3k*bAIED1YyHkFcdAAQTQ0DAVRMXxMgZUEocydEFQsKCCBhQkEtMH0VAgk6PFBeVAc5SSEJKktaLBg*d2g*VxIHLUpIIAs\/FXotbl0lHnAzRUVbcRwvcgsCFVwtLgNTBFUBCxYiO3lyMAR6Bgc-\" class=\"ad_box_new\" style=\"\" id=\"ad_box_ad_1\" onmouseover=\"leftBlockOver('_ad_1')\" onmouseout=\"leftBlockOut('_ad_1')\" target=\"_blank\">\n<div id=\"left_hide_ad_1\" class=\"left_hide_new\" onmouseover=\"leftBlockOver(this)\" onmouseout=\"leftBlockOut(this)\" onclick=\"cancelEvent(event); return leftAdBlockHide('_ad_1', '\/away.php?to=QRscBkBxC1VwdAlbXnRWABJBD0pBcVcVT1IxRBlfOVUTLgImX1wVXj8AYjAWHV5UAyRJSXMpXx0EA0pqOyYXBW8*MAMkNwIIR2VtWyY0awYBNHIAIhcCV0JcbjgyDgBiTCBkE3k*bAIED1YyHkFcdAAQTQ0DAVRMXxMgZUEocydEFQsKCCBhQkEtMH0VAgk6PFBeVAc5SSEJKktaLBg*d2g*VxIHLUpIIAs\/FXotbl0lHnAzRUVbcRwvcgsCFVwtLgNTBFUBCxYiO3lyMAR6Bgc-');\"><\/div>\n<div id=\"ad_title\" class=\"ad_title_new\">Любовь с первого взгляда.<\/div>\n<div class=\"ad_domain_new\">insearchofincredible.com<\/div>\n<span>\n  <div id=\"pr_image\" style=\"position: relative;\">\n    <img src=\"http:\/\/cs11262.vkontakte.ru\/u102800884\/75628422\/s_ebb34c0a44x:001.jpg\" style=\"\" \/>\n    <div id=\"ads_play_btn\" style=\"display: none;\"><\/div>\n  <\/div>\n<\/span>\n<div id=\"ad_desc\" class=\"ad_desc_new\" style=\"\">ASUS ZENBOOK™ - невероятный Ultrabook™<\/div>\n<\/a>\n<div class=\"ad_help_link\" id=\"ad_help_link\">\n  <a href=\"\/ads?section=target\">Что это?<\/a>\n<\/div>","loc":"album40297585_130903228","width":791,"width_dec":160,"width_dec_footer":130});showBackLink('/mistik31', 'Ярослав Косухин');addEvent(window, 'load', function() {Notifier.init({"queue_id":"events_queue40297585","timestamp":"1702599181","key":"qM1vhGYI4Ssv0TvIr_km9nHuIojpd8_tmyoHsdwmtIOyNvNZ_c6RGiJj","uid":40297585,"version":7,"flash_url":"\/swf\/queue_transport.swf","debug":false,"instance_id":"MTg4MQ==","server_url":"http:\/\/q87.queue.vkontakte.ru\/im585","frame_path":"http:\/\/q87.queue.vkontakte.ru\/q_frame.php?4","frame_url":"im585","refresh_url":"http:\/\/vkontakte.ru\/notifier.php","fc":{"version":18,"state":{"clist":{"min":true,"x":-1,"y":0},"tabs":[],"version":18}}});});addEvent(document, 'click', onDocumentClick);
    }
  </script>{/literal}
{include file='footer.tpl'}