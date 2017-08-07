4658<!>video_edit.css<!>0<!>4250<!>0<!>Жалоба<!><div class="tabbed_box">

  
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
<form action='user_report.php' method='POST' id='report_form'> 


  <div class="abx_description">
    <div class="profile_deleted_text">Пожалуйста, сообщите нам причину:</div>

    <textarea id="report_upload_description" class="video_upload_textarea" name='video_desc' ></textarea>
    <br><span id="text_warn" class="text_warn"></span>
    <br>
    <input type='hidden' name='task' value='doadd'>

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
box.addButton("Отправить", box.hide, 'yes');



box.setOptions({width: 500, height: 350,bodyStyle: 'padding: 0px;'});



 {/literal}
