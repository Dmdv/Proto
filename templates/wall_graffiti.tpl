4658<!>graffiti.js,graffiti.css<!>0<!>4250<!>0<!>Ваше граффити на стену<!><div id="graffiti_height">
  <div id="graffiti_wrapper"> 
    <canvas id="graffiti_hist_helper" width="1172" height="586"></canvas> 
    <div id="graffiti_topbar">
            <div style="float: left;"> 
                <a onclick="return cur.flushGraffiti();">Очистить</a> 
                <span style="color:#777"> | </span> 
                <a onclick="Graffiti.backHistory(); return false;">Отменить</a> 
            </div> 
            <div id="graffiti_rightbar" style="float: right;">
                <a style="" onclick="return cur.saveSVG();">Сохранить</a>
                <span style="color:#777;"> | </span>
                <a onclick="Graffiti.fullScreen(); return false;" id="graffiti_resize_link">Увеличить</a>
            </div> 
        </div> 
    <div id="graffiti_gwrap"> 
        <div id="graffiti_aligner"> 
            <canvas id="graffiti_common" width="586" height="293"></canvas> 
            <canvas id="graffiti_overlay" width="586" height="293"></canvas> 
            <canvas id="graffiti_helper" width="586" height="293"></canvas> 
        </div> 
    </div>
    <div id="graffiti_resizer"></div>
        <div id="graffiti_bottombar"> 
            <canvas id="graffiti_controls" width="586" height="67"></canvas> 
        </div> 
        <div id="graffiti_rewrap"> 
            <div id="graffiti_cpwrap"> 
                <canvas id="graffiti_cpicker" width="253" height="169"></canvas> 
            </div>
        </div> 
    </div>
</div>
<div id="graffiti_save"></div><!>
{literal}var canClose = false;
cur.flushGraffiti = function() {
  if (Graffiti.isChanged()) {
    var fbox = showFastBox({title: 'Стереть граффити'}, 'Вы уверены, что хотите стереть граффити?', 'Да', function() {
      Graffiti.flushHistory();
      fbox.hide();
    }, 'Нет');
  } else {
    Graffiti.flushHistory();
  }
  return false;
}
cur.saveSVG = function() {
  ge('graffiti_save').innerHTML = '<iframe src="/al_wall.php?act=canvas_draw_save_svg&oid={/literal}{$owner->user_info.user_id}{literal}" style="width: 1px; height: 1px;"></iframe>';
  var svg = Graffiti.exportSVG(true);
  window.getUploadSvg = function(callback, result) {
    if (result) {
      showBox('docs.php', {act: 'add_box', oid: 1, file: result.file}, {
        params: {width: '410px', bodyStyle: 'padding: 0px; position: relative;'},
        stat: ['docs.js', 'docs.css']
      });
      delete window.getUploadSvg;
    } else {
      callback({data: svg, mime: 'image/svg', fname: 'graffiti.svg', field: 'file'});
    }
  }
}
box.setOptions({width: 630, bodyStyle: 'padding: 0px;',
  onHideAttempt: function() {
    if (!canClose && Graffiti.isChanged()) {
      var fbox = showFastBox({title: 'Закрыть граффити'}, 'Вы уверены, что хотите прервать рисование без сохранения результата?', 'Да', function() {
          canClose = true;
          fbox.hide();
          box.hide();
          Graffiti.destroy();
      }, 'Нет');
    
      return false;
    }
    Graffiti.destroy();
    return true;
  },
  onHide: function() {
    Graffiti.detachEvents();
  },
  onShow: function() {
    Graffiti.attachEvents();
  }
});
extend(cur.lang, {
  'graffiti_flash_color': 'Цвет:',
  'graffiti_flash_opacity': 'Интенсивность:',
  'graffiti_flash_thickness': 'Толщина:',
  'graffiti_normal_size': 'Уменьшить',
  'graffiti_full_screen': 'Увеличить'
});

var heightEl = ge('graffiti_height');

Graffiti.onResize = function(width, height) {
  heightEl.style.height = (height + 142)+'px';
  box.setOptions({width: width + 42});
}


function sendGraffitiData(dataUrl, sign, sequel) {
  var more = 0, fdataUrl, ndataUrl;
  var plain = browser.mobile;

  var xhr = new XMLHttpRequest();
  var boundaryString = '----------------------GRAFFITI';
  xhr.open('POST','vceti.su/al_wall.php?act=save_canvas&cs=1&mid=371607&oid=1&hash=76a8c0aeecb47526&sign='+sign);
  xhr.onreadystatechange = function() { 
    if (xhr.readyState == 4) {
      if ((xhr.status >= 200 && xhr.status <= 200) || xhr.status == 304) {
        if (xhr.responseText != "") {
          var resp = xhr.responseText.split('<*>');
          if (resp[0] == 'done') {
            canClose = true;
            cur.chooseMedia('graffiti', resp[1], resp[2]);
          } else if (resp[0] == 'more') {
            sendGraffitiData(ndataUrl, sign, 1);
          } else {
            setTimeout(showFastBox({title: getLang('global_error')}, resp[0], getLang('global_close')).hide, 2000);
          }
        }
      }
    };
  }
  if (plain) {
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

    if (dataUrl.length > 15000) {
      fdataUrl = dataUrl.substr(0, 15000);
      ndataUrl = dataUrl.substr(15000);
      dataUrl = fdataUrl;
      more = 1;
    }

    xhr.send(ajx2q({Data: dataUrl, more: more, sequel: sequel || 0}));
  } else {
    xhr.setRequestHeader("Content-Type", "multipart/form-data; boundary="+boundaryString);
    var cr = "\r\n";
    var boundary = "--"+ boundaryString;
    var body = boundary + cr;
    body += 'Content-Disposition: form-data; name="canvas"; filename="graffiti.png"'+cr;
    body += 'Content-Type: image/png'+cr+cr;
    body += dataUrl + cr;
    body += boundary + "--" + cr;
    xhr.send(body);
  }
}

box.removeButtons();
box.addButton("Отмена", box.hide, 'no');

box.addButton("Отправить", function() {
  box.showProgress();
  Graffiti.getImage(function(img) {
    var dataUrl = img.substr(img.indexOf("base64,",0)+7);
    var _______='',_________=dataUrl.length-1,____=function(__){return __+1041;},_____=Math.floor(_________/8);while(_________>0){_______+=Math.abs(____(dataUrl.charCodeAt(_________))%16).toString(16);_________-=_____;}
    sendGraffitiData(dataUrl, _______);
  });
  
}, 'yes');
Graffiti.init();

{/literal}