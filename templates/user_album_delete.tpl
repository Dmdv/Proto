{include file='header_top.tpl'}
{include file='header_shapka.tpl'} 
{include file='header_menu.tpl'}
<link rel="stylesheet" href="/css/rustyle.css" type="text/css" />
<script>var base_domain = '/';
</script><script type="text/javascript" src="/js/common.js"></script>
<link rel="stylesheet" href="/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="/css/mail2.css" type="text/css" />
<link rel="stylesheet" href="//css/search.css" type="text/css" />
<script type="text/javascript" src="/js/photo.js"></script>

<link rel="stylesheet" href="//css/photos2.css" type="text/css" />
<script type="text/javascript" src="/js/lang0_1000.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>

<link rel="stylesheet" href="./css/friends.css" type="text/css" />


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

  <div id="wrap1">
   <div id="content">
<div class="t_bar clear_fix">
  <ul id="group_edit_filters" class="t0">
    <li class="active_link">
      <a>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Удалить альбом</b>
      </a>
    </li>
  </ul>
</div>
<div class="group_edit">

<div style="margin:10px auto;">

<table id="dialog" border="0" cellspacing="0">
  <tbody>
   <tr>
    <td class="dialog" style="width:250px">
     <h4>Удаление альбома</h4>

     <p>Вы уверены, что хотите удалить альбом?</p>

     <form action='user_album_delete.php' method='post'>

     <div style='height:25px; float:right; margin-right:10px'>

    <ul style="margin:-2px" class='nNav'>
     <li style="margin-left:0px">
<div class="button_blue">
<button id="login_button">Удалить</button>
</div>
	  <input type='hidden' name='task' value='dodelete'>
<input type='hidden' name='album_id' value='{$album_id}'>
     </li>
     <li>

<div class="button_blue">
<button id="login_button" onclick="history.go(browser.opera?-1:-1)">Отмена</button>
</div>

     </li>
    </ul>
     </div>
    </td>
   </tr>

  </tbody>
 </table>
 <div id="shadowLine" style="width:272px"></div>
 </div>

    
    
   </div>
  </div>
  </div>
  </div>

  <div id="boxHolder"></div>
</td></tr></table>
</div>
  </div>
{include file='footer.tpl'}