

{if $user->user_exists != 0}
{include file='header_global.tpl'}

<body onresize="onBodyResize()" class="is_rtl">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>

  <div class="scroll_fix_wrap" id="page_wrap">
<div><div class="scroll_fix">
  <div id="page_layout" style="width: 791px;">
    <div id="page_header" class="p_head p_head_l0">
      <div class="back"></div>
      <div class="left"></div>
      <div class="right"></div>
      <div class="content">

<div id="top_nav" class="head_nav">
  <form method="POST" class="upload_frame" id="logout_form" action="https://login.vk.com/" target="logout_frame">
    <input type="hidden" name="act" value="logout" />
    <input type="hidden" name="al_frame" value="1" />
    <input type="hidden" name="from_host" value="vkontakte.ru" />
    <input type="hidden" name="from_protocol" value="http" />
    <input type="hidden" name="hash" value="c89b65655ea6121857" />
  </form>
  <iframe class="upload_frame" id="logout_frame" name="logout_frame"></iframe>
  <table cellspacing="0" cellpadding="0" id="top_links">
<tr>
<td class="top_home_link_td">

        <div id="top_logo_down"></div>
        <a class="top_home_link" href="/index.php"></a>
      </td>
      <td class="top_back_link_td"><a class="top_nav_link fl_l" href="" id="top_back_link" onclick="if (nav.go(this, event, {literal}{back: true}) === false) { hide(this); TopSearch.toggleTsWrap(true); return false; }{/literal}"></a></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_people" href="/search?c[section]=people">люди</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_communities" href="/search?c[section]=communities" >сообщества</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_games" href="/search?c[section]=videos" >видео</a>
      </nobr></td>
      <td style=""><nobr>
        <a class="top_nav_link" id="head_music" href="/search?c[section]=audio" >музыка</a>
      </nobr></td>
      <td id="logout_link_td"><nobr>
        <a class="top_nav_link" id="logout_link" href="user_logout.php?token={$token}" >выйти</a>
      </nobr></td>
    </tr>
  </table>
  <div id="ts_wrap" class="clear_fix">
    <div id="ts_input_wrap" class="ts_input_wrap fl_r" onmouseover="TopSearch.highlightInput(true); TopSearch.initFriendsList();" onmouseout="TopSearch.highlightInput(false)">
      <div class="ts" onmousedown="event.cancelBubble = true;">
        <div class="ts_input_wrap2"><div>
          <input type="text" onmousedown="event.cancelBubble = true;" ontouchstart="event.cancelBubble = true;" class="text" id="ts_input" autocomplete="off" placeholder="Поиск" />
        </div></div>
      </div>
    </div>
    <div id="ts_friends_online" class="ta_r"></div>
  </div>
  <span style="display: none" id="top_new_msg"></span>
</div>
<div id="ts_cont_wrap" ontouchstart="event.cancelBubble = true;" onmousedown="event.cancelBubble = true;"></div>
      </div>
    </div>


{else}
<body onresize="onBodyResize()" class="is_rtl"><div id="utils"></div><div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div><div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div><div id="stl_left"></div><div id="stl_side"></div>

<div class="scroll_fix_wrap" id="page_wrap"><div id="top_info_wrap"></div>









<div><div class="scroll_fix">
 <div id="blueLine" class="day"></div>
  <div id="page_layout">
    <div id="page_header" class="p_head p_head_l0">
      <div class="back"><div style="position: absolute; top: 22px; left: 167px; font: bold 11px Arial; color: #eee;">{$online_users_array} РѕРѓС™РЅСВ®РіВ¦Р„ Р“вЂР¶С–РЃ</div></div>
      <div class="back"></div>
      <div class="left"></div>
      <div class="right"></div>
      <div class="content">

<div id="top_nav" class="head_nav">
  <form method="POST" class="upload_frame" id="logout_form" action="https://login.vk.com/" target="logout_frame">
    <input type="hidden" name="act" value="logout" />
    <input type="hidden" name="al_frame" value="1" />
    <input type="hidden" name="from_host" value="vkontakte.ru" />
    <input type="hidden" name="from_protocol" value="http" />
    <input type="hidden" name="hash" value="c89b65655ea6121857" />
  </form>
  <iframe class="upload_frame" id="logout_frame" name="logout_frame"></iframe>
  <table cellspacing="0" cellpadding="0" id="top_links">

    <tr>

  <td class="top_home_link_td">
        <a class="top_home_link" href="/index.php" onclick="return nav.go(this, event)" class="fl_l"></a>
      </td>
      <td class="top_back_link_td">
        <a class="top_nav_link fl_l" href="" id="top_back_link" onclick="{literal}if (nav.go(this, event, {back: true}) === false) { hide(this); return false; }{/literal}"></a>
      </td>
      </nobr></td>    <td><nobr>
        <a class=" top_nav_link" id="logout_link" href="/signup.php">регистрация</a>

      </td></nobr>


    </tr>
  </table>
<span style="display: none" id="top_new_msg"> &nbsp;<b>(</b><span>{$user_unread_pms}</span><b>)</b></span>
</div>
      </div>
    </div>

{/if}

