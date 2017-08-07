{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
{include file='header_top.tpl'}

<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?318" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos.css?54"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/photos_add.css?15"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?28"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9294_0.js"></script><script type="text/javascript" src="http://st1.userapi.com/js/al/common.js?836"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>

<script type="text/javascript" src="/js/lib/swfobject2.js"></script>

{literal}
<style>
#photo_uploader {
    background-color: #F7F7F7;
    overflow: hidden;
}
</style>
{/literal}

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
    <div id="content">
<div class="t_bar photos_tabs clear_fix">
  <ul class="t0"><li class="">
  <a href="user_album_edit.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Редактировать альбом</nobr></b>
  </a>
</li><li class="">
  <a href="user_album_update.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Фотографии</nobr></b>
  </a>
</li><li id="photo_add_tab" class="active_link">
<a href="user_album_upload.php?album_id={$album_info.album_id}">
    <b class="tl1"><b></b></b>
    <b class="tl2"></b>
    <b class="tab_word"><nobr>Добавление фотографий</nobr></b>
  </a>
</li></ul>
</div>


	<div id="photo_uploader">

<div id="bigForm" class="editorPanel clearFix">
<div id="normal_upload" style="display: none">
<div style="margin: 20px 30px; padding: 20px 30px; background: #FFFFFF; border: 1px solid #CCCCCC; display: none" id="flash_needed">
Для использования Flash-загрузчика на Вашем компьютере должен быть установлен <a href="http://vseti.by/topic-495_54295">Adobe Flash Player</a> версии 10 и выше. <br /><b>Flash-загрузчик позволяет загружать до 50-ти фотографий одновременно! При этом скорость закачки увеличивается, а трафик экономится!</b> Для его установки нажмите <a href="http://vseti.by/topic-495_54295">здесь</a>.
  </div>

  <div style="width:450px; text-align:center; margin:0px auto">
  	<form id="upload" name="upload" action="user_album_upload.php?task=doupload" method="POST" enctype="multipart/form-data">

   <input type="hidden" id="id" name="id" value="{$album_info.album_id}" />
   <input type="hidden" id="aid" name="album_id" value="{$album_info.album_id}" />
   <input type="hidden" id="oid" name="oid" value="{$owner->user_info.user_id}" />
   <input type="hidden" id="fid" name="fid" value="">


   <table class="formTable" border="0" cellspacing="0">

   <tr class="tallRow">
    <td class="label" style="text-align:right">Фотографии:</td>

    <td>
     <input type="file" class="upload" size="22" id="file1" name="file1" value="1"/>      <input type="file" class="upload" size="22" id="file2" name="file2" value="1"/>      <input type="file" class="upload" size="22" id="file3" name="file3" value="1"/>     </td>
   </tr>
   <tr>

    <td></td>
    <td><br/>

<div style="height:30px">
         <ul class='nNav'>
          <li style="margin-left:0px">
           <b class="nc"><b class="nc1"><b></b></b><b class="nc2"><b></b></b></b>
           <span class="ncc"><a href="javascript:document.upload.submit()">Загрузить фотографии</a></span>
           <b class="nc"><b class="nc2"><b></b></b><b class="nc1"><b></b></b></b>

          </li>
          <li>

           <b class="nc"><b class="nc1"><b></b></b><b class="nc2"><b></b></b></b>
           <span class="ncc"><a href="album{$owner->user_info.user_id}_{$album_info.album_id}">Отмена</a></span>
           <b class="nc"><b class="nc2"><b></b></b><b class="nc1"><b></b></b></b>
          </li>
         </ul>
</div>

    </td>
   </tr>
   </table>
   </form>


  </div>

</div>
<div id="flash_upload" style="display: none">
  <div id="flash_container" style="text-align: center; width: 100%;">
    <div id="flash_swfobject">
      <div style="margin:90px 30px; padding:20px 30px; background: #FFF; border: 1px solid #CCC">Для использования Flash-загрузчика на Вашем компьютере должен быть установлен <a href="http://vseti.by/topic-495_54295">Adobe Flash Player</a> версии 10 и выше. <br /><b>Flash-загрузчик позволяет загружать до 50-ти фотографий одновременно! При этом скорость закачки увеличивается, а трафик экономится!</b> Для его установки нажмите <a href="http://vseti.by/topic-495_54295">здесь</a>.</div>

    </div>
  </div>


 {literal} <script type="text/javascript">

function flash10_supported() {
  var desc = '';
  if (navigator.plugins && navigator.plugins["Shockwave Flash"]) {
    desc = navigator.plugins["Shockwave Flash"].description;
  } else {
    try {
      if (new ActiveXObject("ShockwaveFlash.ShockwaveFlash.10")) {
        desc = '10';
      }
    } catch (e) {
    }
  }
//  alert('"' + desc.replace(/^[^0-9]*/, '') + '" = ' + intval(desc.replace(/^[^0-9]*/, '')));
  return intval(desc.replace(/^[^0-9]*/, '')) >= 10;
}

function show_normal(not_event) {
  if (!not_event && window.event && (window.event.which == 2 || window.event.button == 1)) {
    return true;
  }
  hide('flash_upload');
  show('normal_upload');
  if (!flash10_supported()) {
    show('flash_needed');
  } else {
    hide('flash_needed');
  }
  return false;
}

var flash_inited = false;
function show_flash(not_event) {
  if (!not_event && window.event && (window.event.which == 2 || window.event.button == 1)) {
    return true;
  }
  if (!flash10_supported()) {
    if (isVisible('normal_upload')) {
      if (isVisible('flash_needed')) {
        animate(ge('flash_needed'), {backgroundColor: '#FFEFE8', borderBottomColor: '#E89B88', borderLeftColor: '#E89B88', borderRightColor: '#E89B88', borderTopColor: '#E89B88'}, 100, function() {
          animate(ge('flash_needed'), {backgroundColor: '#FFFFFF', borderBottomColor: '#CCCCCC', borderLeftColor: '#CCCCCC', borderRightColor: '#CCCCCC', borderTopColor: '#CCCCCC'}, 500);
        });
      } else {
        show('flash_needed');
      }
    } else {
      show('normal_upload');
      show('flash_needed');
    }
  } else {
    if (!flash_inited) {
      var flashvars = {
        'upload_url': '%2Fuser_album_upload.php%3Ftask%3Ddoupload%26type%3Dflash%26uid%3D1%26album_id%3D{/literal}{$album_info.album_id}{literal}%26hash%3Dafc1efa22e491750e',
        'redirect_url': '%2F{/literal}user_album_update.php?album_id={$album_info.album_id}{literal}',
        'max_photo': 50,
      };
      var params = {
        'allowScriptAccess': 'always',
        'bgcolor': '#F7F7F7',
        'wmode': 'opaque'
      };
      swfobject.embedSWF("/swf/photo_uploader.swf?1", "flash_swfobject", "600", "500", "10.0.1","swf/expressinstall.swf", flashvars, params,{preventHide: true});
      flash_inited = true;
    }

    show('flash_upload');
    hide('normal_upload');
  }
  return false;
}

onDomReady(function () {
  if (0) {
    show_normal(true);
  } else {
    show_flash(true);
  }
});

  </script>{/literal}


      </div>
    </div>
  </div>
</div></div>
  </div>
</div></div>




{include file='footer.tpl'}