{include file='header_top.tpl'}
{include file='header_shapka.tpl'} 
{include file='header_menu.tpl'}

<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?320" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/groups_edit.css?20"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/privacy.css?34"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?30"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?60"></link><script type="text/javascript" src="/js/loader_nav9379_0.js"></script><script type="text/javascript" src="http://st3.userapi.com/js/al/common.js?850"></script><script type="text/javascript" src="/js/lang0_0.js?6262"></script>

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
    <div id="content"><div class="t_bar clear_fix">
  <ul id="group_edit_filters" class="t0">
    <li class="">
      <a href='user_group_edit.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Информация</b>
      </a>
    </li>
	    <li class="active_link">
      <a href='user_group_edit_photo.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Фотография</b>
      </a>
    </li>
    <li class="">
      <a href='user_group_edit_members.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Участники</b>
      </a>
    </li>

    <li class="">
      <a href='user_group_edit_delete.php?group_id={$group->group_info.group_id}'>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word">Удалить группу</b>
      </a>
    </li>
    <li class="t_r"><a href='club{$group->group_info.group_id}' >Вернуться к сообществу</a></li>
  </ul>
</div>
<div class="group_edit">


{* IF GROUP WAS JUST CREATED, SHOW SUCCESS MESSAGE *}
{if $justadded == 1}
  <div class="message">Изменения сохранены.</div>
{/if}

{literal}
<script type='text/javascript'>
<!--
var subcats = new Array();
{/literal}
{section name=cat_loop loop=$cats}
subcats[{$cats[cat_loop].groupcat_id}] = new Array('0', '' {section name=subcat_loop loop=$cats[cat_loop].subcats}{if $smarty.section.subcat_loop.first == TRUE},{/if} '{$cats[cat_loop].subcats[subcat_loop].subgroupcat_id}', '{$cats[cat_loop].subcats[subcat_loop].subgroupcat_title}'{if $smarty.section.subcat_loop.last != true},{/if}{/section});
{/section}
{literal}
function populate() {
  var groupcat_id = document.getElementById('groupcats').options[document.getElementById('groupcats').selectedIndex].value;
  if(!groupcat_id) return;
  var list = subcats[groupcat_id];
  document.getElementById('subgroupcats').options.length = 0;
  var selected_op = 0;
  for(i=0;i<list.length;i+=2)
  {
    if({/literal}{$subgroupcat_id}{literal} == list[i]) {
      var selected = true;
      var selected_op = i/2;
    } else {
      var selected = false;
    }
    document.getElementById('subgroupcats').options[i/2] = new Option(list[i+1],list[i],selected);
  }
  document.getElementById('subgroupcats').options[selected_op].selected = true;
  if(document.getElementById('subgroupcats').options.length == 1) {
    document.getElementById('subgroupcats').style.visibility = 'hidden';
  } else {
    document.getElementById('subgroupcats').style.visibility = 'visible';
  }
}

//-->
</script>
{/literal}

{* SHOW RESULT MESSAGE *}
{if $result != 0}
  <div class="message">Изменения сохранены.
  </div>
{/if}



{* SHOW PHOTO ON LEFT AND UPLOAD FIELD ON RIGHT *}
<table class="editor" border="0" cellspacing="0">
       <tr>
        <td class="labelHigh" style="width:210px; text-align:center"><img src='{$group->group_photo("./images/camera_a.gif")}' border='0'></td><td>

	 <div class="photo">
	 <h4>Загрузка фотографии для обложки</h4>
	 <p>Вы можете загрузить любую картинку расширения JPG, GIF или PNG.</p>
	   <form action='user_group_edit_photo.php' method='POST' enctype='multipart/form-data'>
  <input type='file' class='text' name='photo' size='30'>
	 <small><br><br>Файлы размером более 5 MB не загрузятся.<br/>В случае возникновения проблем попробуйте загрузить фотографию меньшего размера.<br><br></small>
         <div style="width:310px;">
<div class="button_blue"><div class="boxes1" type='submit'><button>Обновить фотографию</button></div></div>
  <input type='hidden' name='task' value='upload'>
  <input type='hidden' name='MAX_FILE_SIZE' value='5000000'>
  <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>
  </form>

         </div>         
	 <br><br>
	 <h4>Удалить фотографию</h4>
	 <p>Вы можете удалить текущую фотографию, но не забудьте загрузить новую, иначе на её месте будет стоять большой вопросительный знак.</p>
	 <p>
   <div style="width:310px;">
<div class="button_blue"><div class="boxes1" type='submit'><a href='user_group_edit_photo.php?group_id={$group->group_info.group_id}&task=remove'><button>Удалить фотографию</button></a></div></div>
    
   </div>         
	 </p>
    </td>
   </tr>
  </table>     
 </form>


  </td>
  </tr>
  </table>  </div>  </div></div>  </div>  
  

{include file='footer.tpl'}