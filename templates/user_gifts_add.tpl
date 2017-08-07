4658<!>gifts.css,ui_controls.css,ui_controls.js,boxes.css,privacy.js,privacy.css<!>0<!>4250<!>0<!>Выберите подарок<!>
<link rel="stylesheet" href="css/al/gifts.css" type="text/css" />
<link rel="stylesheet" href="css/ui_controls.css" type="text/css" />
<link rel="stylesheet" href="css/al/boxes.css" type="text/css" />
<link rel="stylesheet" href="css/al/privacy.css" type="text/css" />
<script type="text/javascript" src="/js/al/ui_controls.js"></script>
<script type="text/javascript" src="/js/al/privacy.js"></script><div class="tabbed_box">
  <div class="summary_tabs clear_fix"></div>
  <div class="tabbed_sh tabbed_sh1"></div>
  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh3"></div>
  <div class="tabbed_sh tabbed_sh4"></div>
    <div class="tabbed_container clear_fix " style="height:auto;"><div id="gifts_box_new_year" class="gifts_section clear_fix" style="">
  {section name=giftss_loop loop=$gifts} 

 <a class="gift_cell fl_l" onmouseover="cur.showGiftPrice(this, '{$gifts[giftss_loop].gifts_price} голос(а/ов)')" onmouseout="cur.hideGiftPrice()" onclick="cur.showGift({$gifts[giftss_loop].gifts_id}, this, 1, 0, ''); return false;">
  <img class="gift_img png" src="./images/gifts/96/{$gifts[giftss_loop].gifts_id}.png" width="96" height="96"/>
  
</a>{/section}
</div><div id="gift_price">
  <span id="gift_price_str"></span>
  <b class="rbottom">
    <b class="r"></b>
  </b>
</div></div>
  <div class="tabbed_sh tabbed_sh4"></div>
  <div class="tabbed_sh tabbed_sh3"></div>
  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh1"></div>
  <div class="tabbed_sh tabbed_sh0"></div>
</div>

<!>{literal}setUpTabbedBox(box, 400, [{"label":"Подарки","func":"cur.changeGiftsSection('new_year');"}], '0', ["Выберите подарок для Павла","<div id=\"gifts_box_new_year\" class=\"gifts_section clear_fix\" style=\"\">\n  <a class=\"gift_cell fl_l\" onmouseover=\"cur.showGiftPrice(this, '1 голос')\" onmouseout=\"cur.hideGiftPrice()\" onclick=\"cur.showGift(168, this, 1, 0, ''); return false;\">\n  <img class=\"gift_img png\" src=\"\/images\/gifts\/96\/168.png\" width=\"96\" height=\"96\"\/>\n  \n<\/a><\/div><div id=\"gift_price\">\n  <span id=\"gift_price_str\"><\/span>\n  <b class=\"rbottom\">\n    <b class=\"r\"><\/b>\n  <\/b>\n<\/div>","box.tabContent.className = 'tabbed_container clear_fix ';\nvar st = 'height:auto;';\nvar items = st.split(';');\nfor (var i = 0; i < items.length; ++i) {\n  var name_value = items[i].split(':');\n  if (name_value.length > 1 && name_value[0].length) {\n    box.tabContent.style[trim(name_value[0])] = trim(name_value[1]);\n  }\n}var giftsCont = box.tabContent;\n\/\/ giftsCont.style.height = (lastWindowHeight - 235) + 'px';\neach(geByClass('gifts_section', giftsCont), function(i,v) {v.style.height = Math.min((lastWindowHeight - 235), 402) + 'px';});\nbox.setOptions({bodyStyle: 'padding: 0px', width: 553, onHide: function() {\n  removeEvent(ge('gifts_box'));\n}});\naddEvent(giftsCont, 'scroll', function() {\n\n});\n\nbox.setControlsText('<span id=\"gift_balance_str\"><\/span><a href=\"\/payments.php?act=addfunds\" onclick=\"if (checkEvent(event) === false) { ajax.post(\\'al_gifts.php\\', {act: \\'get_money\\'}, {showProgress: curBox().showProgress, hideProgress: curBox().hideProgress}); return false; }\">Получить голоса &raquo;<\/a>');\n\ncur.lang = extend(cur.lang || {}, {\n  global_n_votes: [\"\",\"%s голос\",\"%s голоса\",\"%s голосов\"]\n});\ncur.handleMoneyChange = function() {\n  var el = ge('gift_balance_str');\n  if (!el) return;\n  if (intval(vk.balance)) {\n    el.innerHTML = 'У Вас {money}.'.replace('{money}', '<b>' + getLang('global_n_votes', vk.balance) + '<\/b>') + ' ';\n    show(el);\n  } else {\n    hide(el);\n  }\n};\ncur.changeGiftsSection = function(section) {\n  each(geByClass('gifts_section', giftsCont), function(i,v) {hide(v);});\n  show('gifts_box_'+section);\n}\n\ntry {\ncur.giftHash = '';\nbox.removeButtons().addButton(getLang('global_close'));\n\nvar giftUsers = [];\n\nextend(cur, {\n  giftsCont: ge('select_gift'),\n  giftPrice: ge('gift_price'),\n  privacy: {\n    gift_privacy: [0, 0, []],\n    gift_privacy_types: {\n      '0': 'Виден всем',\n      '1': 'Личный',\n      '2': 'Анонимный'\n    },\n    gift_privacy_help: '\\\n<b>Виден всем<\/b> - Все будут видеть Ваш подарок, сообщение и имя.<br><br>\\\n<b>Личный<\/b> - Все будут видеть Ваш подарок, но только получатель сможет видеть Ваше имя и сообщение.<br><br>\\\n<b>Анонимный<\/b> - Все будут видеть Ваш подарок, но только получатель увидит Ваше сообщение. Никто не увидит Ваше имя.',\n    gift_privacy_help_w: 340\n  },\n  showGift: function(num, obj, price, bonus, tip) {\n    stManager.add(['ui_controls.js', 'ui_controls.css'], function() {\n      cur.sendBoxGift = function() {\n        if (isVisible(subBox.progress)) {\n          return;\n        }\n        var query = {\n          act: 'do_send',\n          mids: 1,\n          type: cur.privacy.gift_privacy[0],\n          number: num,\n          text: ge('gift_text').value,\n          hash: 'f3068a413a830095f3'\n        };\n        if (isVisible('gift_receiver_block')) {\n          var mids = cur.uiGiftReceiver.val();\n          if (!mids) {\n            return cur.uiGiftReceiver.showDefaultList();\n          }\n          query.mids = mids;\n        }\n        ajax.post('al_gifts.php', query, {\n          onDone: function(data, text) {\n            updateMoney(data);\n            subBox.hide();\n            box.hide();\n            text = text.replace('<b>', '<div class=\"top_result_header\">').replace('<\/b><br>', '<\/div>');\n            showDoneBox(text, {out: 1500});\n          },\n          onFail: function(text) {\n            if (text) {\n              var error = ge('gift_error');\n              error.innerHTML = text;\n              show(error);\n            }\n            return true;\n          },\n          showProgress: subBox.showProgress,\n          hideProgress: subBox.hideProgress\n        });\n      };\n      var subBox = showFastBox({width: 450, title: 'Выберите подарок для Павла'}, \"<span id=\\\"gift_error\\\" style=\\\"display: none\\\">\\n  <div class=\\\"alertmsg\\\">У Вас недостаточно голосов для отправки подарка. <a onclick=\\\"getVotes();\\\">Получить голоса<\\\/a>.<\\\/div>\\n<\\\/span>\\n<div id=\\\"gift_loader\\\" class=\\\"gift_loader\\\" align=\\\"center\\\"><\\\/div>\\n<div id=\\\"gift_receiver_block\\\" style=\\\"display: none\\\">\\n  <div class=\\\"gift_label fl_l ta_r\\\">Получатель:<\\\/div>\\n  <div class=\\\"gift_labeled fl_l\\\">\\n    <input id=\\\"gift_receiver\\\" name=\\\"gift_receiver\\\" type=\\\"hidden\\\" \\\/>\\n  <\\\/div>\\n<\\\/div>\\n<div id=\\\"gift_message\\\" style=\\\"display: none;\\\">\\n  <div class=\\\"gift_label fl_l\\\">Ваше сообщение:<\\\/div>\\n  <div class=\\\"gift_labeled fl_l\\\">\\n    <textarea class=\\\"input_text\\\" id=\\\"gift_text\\\" onchange=\\\"curBox().changed=true;\\\" name=\\\"gift_text\\\" rows=\\\"3\\\" onkeyup=\\\"checkTextLength(2096, this, ge('text_box_warn')); onCtrlEnter(event, cur.sendBoxGift);\\\"><\\\/textarea>\\n    <div id=\\\"text_box_warn\\\"><\\\/div>\\n  <\\\/div>\\n  <br class=\\\"clear\\\" \\\/>\\n<\\\/div>\\n<div class=\\\"gift_label fl_l\\\">Тип подарка:<\\\/div>\\n<div class=\\\"gift_labeled fl_l\\\" style=\\\"padding: 9px 6px 0 16px; position: relative\\\">\\n  <a id=\\\"privacy_edit_gift_privacy\\\" onclick=\\\"Privacy.show(this, event, 'gift_privacy', [0, 0])\\\">Виден всем<\\\/a>\\n<\\\/div>\\n<br class=\\\"clear\\\" \\\/>\\n<div id=\\\"gift_tip\\\"><\\\/div>\", 'Отправить', cur.sendBoxGift, 'Отмена');\n      ge('gift_loader').innerHTML = '<img src=\"\/images\/gifts\/256\/' + num + '.jpg\" class=\"png\" width=\"256\" height=\"256\" \/>';\n      subBox.setControlsText(\"<a id=\\\"gift_msg_show\\\" onclick=\\\"hide(this); show('gift_msg_hide'); show('gift_message'); elfocus('gift_text');\\\">Добавить сообщение<\\\/a>\\n<a style=\\\"display:none\\\" id=\\\"gift_msg_hide\\\" onclick=\\\"hide(this); show('gift_msg_show'); ge('gift_text').value=''; hide('gift_message');\\\">Скрыть сообщение<\\\/a>\");\n      if (giftUsers && giftUsers.length) {\n        cur.uiGiftReceiver = new Dropdown(ge('gift_receiver'), giftUsers, {\n          introText: 'Начните вводить имя пользователя',\n          noResult: 'Пользователь не найден',\n          placeholder: 'Выберите получателей',\n          multiselect: true,\n          autocomplete: true,\n          selectedItems: '',\n          width: '230px'\n        });\n        show('gift_receiver_block');\n      }\n    });\n  },\n  showGiftPrice: function(el, str) {\n    el.appendChild(cur.giftPrice);\n    val('gift_price_str', str);\n    show(cur.giftPrice);\n  },\n  hideGiftPrice: function() {\n    hide(cur.giftPrice);\n  }\n});\n\n}catch(e){debugLog(e.message);}\n"], arguments[0], arguments[1]);var giftsCont = box.tabContent;
// giftsCont.style.height = (lastWindowHeight - 235) + 'px';
each(geByClass('gifts_section', giftsCont), function(i,v) {v.style.height = Math.min((lastWindowHeight - 235), 402) + 'px';});
box.setOptions({bodyStyle: 'padding: 0px', width: 553, onHide: function() {
  removeEvent(ge('gifts_box'));
}});
addEvent(giftsCont, 'scroll', function() {

});



cur.lang = extend(cur.lang || {}, {
  global_n_votes: ["","%s голос","%s голоса","%s голосов"]
});
cur.handleMoneyChange = function() {
  var el = ge('gift_balance_str');
  if (!el) return;
  if (intval(vk.balance)) {
    el.innerHTML = 'У Вас {money}.'.replace('{money}', '<b>' + getLang('global_n_votes', vk.balance) + '</b>') + ' ';
    show(el);
  } else {
    hide(el);
  }
};
cur.changeGiftsSection = function(section) {
  each(geByClass('gifts_section', giftsCont), function(i,v) {hide(v);});
  show('gifts_box_'+section);
}

try {
cur.giftHash = '';
box.removeButtons().addButton(getLang('global_close'));

var giftUsers = [];

extend(cur, {
  giftsCont: ge('select_gift'),
  giftPrice: ge('gift_price'),
  privacy: {
    gift_privacy: [0, 0, []],
    gift_privacy_types: {
      '0': 'Виден всем',
      '1': 'Личный',
      '2': 'Анонимный'
    },
    gift_privacy_help: '\
<b>Виден всем</b> - Все будут видеть Ваш подарок, сообщение и имя.<br><br>\
<b>Личный</b> - Все будут видеть Ваш подарок, но только получатель сможет видеть Ваше имя и сообщение.<br><br>\
<b>Анонимный</b> - Все будут видеть Ваш подарок, но только получатель увидит Ваше сообщение. Никто не увидит Ваше имя.',
    gift_privacy_help_w: 340
  },
  showGift: function(num, obj, price, bonus, tip) {
    stManager.add(['ui_controls.js', 'ui_controls.css'], function() {
      cur.sendBoxGift = function() {
        if (isVisible(subBox.progress)) {
          return;
        }
        var query = {
          act: 'do_send',
          mids: 1,
          type: cur.privacy.gift_privacy[0],
          number: num,
          text: ge('gift_text').value,
          hash: 'f3068a413a830095f3'
        };
        if (isVisible('gift_receiver_block')) {
          var mids = cur.uiGiftReceiver.val();
          if (!mids) {
            return cur.uiGiftReceiver.showDefaultList();
          }
          query.mids = mids;
        }
        ajax.post('user_gifts_add.php?task=add_user_gifts&gifts_type=1&gifts_id='+num+'&user={/literal}{$owner->user_info.user_username}{literal}', query, {
          onDone: function(data, text) {
            updateMoney(data);
            subBox.hide();
            box.hide();
            text = text.replace('<b>', '<div class="top_result_header">').replace('</b><br>', '</div>');
            showDoneBox(text, {out: 1500});
          },
          onFail: function(text) {
            if (text) {
              var error = ge('gift_error');
              error.innerHTML = text;
              show(error);
            }
            return true;
          },
          showProgress: subBox.showProgress,
          hideProgress: subBox.hideProgress
        });
      };
      var subBox = showFastBox({width: 450, title: 'Выберите подарок'}, "<span id=\"gift_error\" style=\"display: none\">\n  <div class=\"alertmsg\">У Вас недостаточно голосов для отправки подарка. <a onclick=\"getVotes();\">Получить голоса<\/a>.<\/div>\n<\/span>\n<div id=\"gift_loader\" class=\"gift_loader\" align=\"center\"><\/div>\n<div id=\"gift_receiver_block\" style=\"display: none\">\n  <div class=\"gift_label fl_l ta_r\">Получатель:<\/div>\n  <div class=\"gift_labeled fl_l\">\n    <input id=\"gift_receiver\" name=\"gift_receiver\" type=\"hidden\" \/>\n  <\/div>\n<\/div>\n<div id=\"gift_message\" style=\"display: none;\">\n  <div class=\"gift_label fl_l\">Ваше сообщение:<\/div>\n  <div class=\"gift_labeled fl_l\">\n    <textarea class=\"input_text\" id=\"gift_text\" onchange=\"curBox().changed=true;\" name=\"gift_text\" rows=\"3\" onkeyup=\"checkTextLength(2096, this, ge('text_box_warn')); onCtrlEnter(event, cur.sendBoxGift);\"><\/textarea>\n    <div id=\"text_box_warn\"><\/div>\n  <\/div>\n  <br class=\"clear\" \/>\n<\/div>\n<div class=\"gift_label fl_l\">Тип подарка:<\/div>\n<div class=\"gift_labeled fl_l\" style=\"padding: 9px 6px 0 16px; position: relative\">\n  <a id=\"privacy_edit_gift_privacy\" onclick=\"Privacy.show(this, event, 'gift_privacy', [0, 0])\">Виден всем<\/a>\n<\/div>\n<br class=\"clear\" \/>\n<div id=\"gift_tip\"><\/div>", 'Отправить', cur.sendBoxGift, 'Отмена');
      ge('gift_loader').innerHTML = '<img src="/images/gifts/256/' + num + '.jpg" class="png" width="256" height="256" />';
      subBox.setControlsText("<a id=\"gift_msg_show\" onclick=\"hide(this); show('gift_msg_hide'); show('gift_message'); elfocus('gift_text');\">Добавить сообщение<\/a>\n<a style=\"display:none\" id=\"gift_msg_hide\" onclick=\"hide(this); show('gift_msg_show'); ge('gift_text').value=''; hide('gift_message');\">Скрыть сообщение<\/a>");
      if (giftUsers && giftUsers.length) {
        cur.uiGiftReceiver = new Dropdown(ge('gift_receiver'), giftUsers, {
          introText: 'Начните вводить имя пользователя',
          noResult: 'Пользователь не найден',
          placeholder: 'Выберите получателей',
          multiselect: true,
          autocomplete: true,
          selectedItems: '',
          width: '230px'
        });
        show('gift_receiver_block');
      }
    });
  },
  showGiftPrice: function(el, str) {
    el.appendChild(cur.giftPrice);
    val('gift_price_str', str);
    show(cur.giftPrice);
  },
  hideGiftPrice: function() {
    hide(cur.giftPrice);
  }
});

}catch(e){debugLog(e.message);}
{/literal}