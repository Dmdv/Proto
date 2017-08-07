{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

<link rel="stylesheet" type="text/css" href="/css/al/common.css?310" />
<link type="text/css" rel="stylesheet" href="/css/al/settings.css?47"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?28"></link>
<link type="text/css" rel="stylesheet" href="/css/al/notifier.css?60"></link>

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
    <div id="content"><div class="t_bar tabs clear_fix"><ul id="settings_filters" class="t0">
  <li class="active_link">
    <a href="/settings" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Общее</b>
    </a>
  </li>
  <li class="">
    <a href="/settings?act=other" >
      <b class="tl1"><b></b></b><b class="tl2"></b>
      <b class="tab_word">Дополнительные сервисы</b>
    </a>
  </li>
</ul></div>

<div id="settings_panel" class="clear_fix">

<form action='settings?act=deactivate' method='POST'>

<div class="settings_section">
    <h2>Удаление учётной записи</h2>

	<div>Вы действительно хотите удалить свою страницу?<br><br></div>
		<table class="editor" style="margin-left: 0px;" border="0" cellspacing="0">
	       <tbody><tr>
	        <td class="label" style="width: 95px;"></td>
	        <td>

<div class="button_blue fl_l" style="margin-left: -10px">
      <button>Да, удалить страницу</button>
  <input type='hidden' name='task' value='dodelete'>
				</div>
  </form>
 <form action='id{$user->user_info.user_id}' method='POST'>

				<div class="button_blue fl_l" style="margin-left: 10px">
      <button>Нет, я передумал</button>
	  </div>
				</ul>
	        </td>
	       </tr>
	      </tbody>
      	</table>

      </form>
      </div>



      </td>

     </tr>
    </tbody></table>
    </form>
   </div>



  </div>
  </div>
  </div>
  <div id="boxHolder"></div>
</form>


{include file='footer.tpl'}