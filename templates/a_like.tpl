7118<!><!>0<!>5427<!>0<!><div class="header" onclick="showTabbedBox('like.php', {literal}{act: 'a_get_members', object: 'wall40297585_2307', wall: 1}{/literal}, {cache: 1})"><div id="like_title_wall40297585_2307">Понравилось 1 человеку</div></div>
<div class="wrap">
  <input type="hidden" id="like_real_count_wall40297585_2307" value="1" />
  <div class="content"><div class="hider"><table cellspacing="0" cellpadding="0" id="like_table_wall40297585_2307" class="like_stats" style="left: 0px"><tr><td><a title="Ярослав Косухин" href="/mistik31"><img src="http://cs4272.vkontakte.ru/u40297585/e_e3183ab5.jpg" /></a></td></tr></table></div></div>
  <div class="bottom"><div class="fl_l checkbox" onclick="showBox('like.php', {literal}{act: 'publish_box', object: 'wall40297585_2307', list: ''}{/literal})">Рассказать в сообществе</div>&nbsp</div>
</div><!>{literal}var count = intval(ge('like_real_count_wall40297585_2307').value);
if (count) {
  addClass(tip.container, 'bottom');
  if (!tip.inited) {
    tip.onClean = function() {
      tip.inited = false;
      if (tip.over) removeEvent(tip.container, 'mouseover', tip.over);
      if (tip.out) removeEvent(tip.container, 'mouseout', tip.out);
    }
    if (tip.over) addEvent(tip.container, 'mouseover', tip.over);
    if (tip.out) addEvent(tip.container, 'mouseout', tip.out);
    tip.inited = true;
  }
}
return count > 0;{/literal}