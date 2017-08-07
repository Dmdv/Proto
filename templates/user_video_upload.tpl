4658<!>video_edit.css<!>0<!>4250<!>0<!>Новое видео<!><div class="tabbed_box">

  <div class="summary_tabs clear_fix">
<div class="fl_l summary_tab_sel"> 
 <a class="summary_tab2" onclick="if (checkEvent(event)) return; cur.onTabSwitch[1]('0');geByClass1('summary_tab_sel', this.parentNode.parentNode).className='fl_l summary_tab';this.parentNode.className='fl_l summary_tab_sel';return false;">  
  <div class="summary_tab3"><nobr>Добавить по ссылке с других сайтов
</nobr></div>
  </a></div>  </div>
  <div class="tabbed_sh tabbed_sh1"></div>

  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh3"></div>
  <div class="tabbed_sh tabbed_sh4"></div>
    <div class="tabbed_container clear_fix  video_upload" style="height: auto;"><div id="video_upload_tab" class="video_upload_tab">
{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
  <table cellpadding='0' cellspacing='0'>
    <tr>
      <td class='result'>
        <div class='error'><img src='./images/error.gif' border='0' class='icon' /> {lang_print id=$is_error}</div>
      </td>
    </tr>
  </table>
  <br />
{/if}
<form name='uploadForm' action='user_video_upload.php?task={if $task=="youtube"}doembed{else}docreate{/if}' method='post' id='video_form'>

    <div class="video_add_label">Название</div>
    <input class="text" required id="video_upload_title" name='video_title' type="text" value='{$video->video_info.video_title}'>
<div class="video_add_label">Ссылка youtube</div>
    <input class="text" required id="video_upload_title" name='video_url' type="text">
    <div class="video_add_label">Описание<span class="video_add_optionally"></span></div>

    <textarea id="video_upload_description" class="video_upload_textarea" name='video_desc' ></textarea>
    <br><span id="text_warn" class="text_warn"></span>
    <br>
  {if $task=="youtube"}
  <input type='hidden' name='video_type' value='1' />

  {else}
  <input type='hidden' name='video_type' value='0' />

  {/if}
    </form>



  </div>
  
</div></div>
  <div class="tabbed_sh tabbed_sh4"></div>
  <div class="tabbed_sh tabbed_sh3"></div>

  <div class="tabbed_sh tabbed_sh2"></div>
  <div class="tabbed_sh tabbed_sh1"></div>
  <div class="tabbed_sh tabbed_sh0"></div>
</div></div>

<!>
{literal}


var img = ge('graffiti');
box.removeButtons();
box.addButton("Закрыть", box.hide, 'no');
box.addButton("Сохранить", function(){document.forms["video_form"].submit();}, 'yes');


box.setOptions({width: 500, bodyStyle: 'padding: 0px;'});



 {/literal}

