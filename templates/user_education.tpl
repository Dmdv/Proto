{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}

{literal}
<style>
.inpst {
    border: 1px solid #C6D4DC;
    padding: 3px 4px;
}

input, textarea, select {
    font-family: Tahoma;
    font-size: 11px;
    outline: medium none;
}
.row, .placeCategory #placeEditor .row {
    height: 26px;
    padding: 0;
}
.row .label {
    clear: left;
    color: #555555;
    float: left;
    padding-right: 10px;
    padding-top: 4px;
    text-align: right;
    width: 230px;
}

#placeEditor .row .labeled, .row .labeled {
    float: left;
    width: 210px;
}
.row .privacy_control {
    float: left;
    width: 210px;
}
</style>
{/literal}

<link rel="stylesheet" type="text/css" href="http://st0.userapi.com/css/al/common.css?296" />
<!--[if lte IE 6]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie6.css?22); /* ]]> */</style><![endif]-->
<!--[if IE 7]><style type="text/css" media="screen">/* <![CDATA[ */ @import url(http://st0.userapi.com/css/al/ie7.css?16); /* ]]> */</style><![endif]-->
<link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/profile_edit.css?24"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/ui_controls.css?27"></link><link type="text/css" rel="stylesheet" href="http://st0.userapi.com/css/al/notifier.css?55"></link><script type="text/javascript" src="/js/loader_nav8759_0.js"></script><script type="text/javascript" src="http://st2.userapi.com/js/al/common.js?810"></script><script type="text/javascript" src="/js/lang0_0.js?6225"></script>

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
    <div id="content"><div class="t_bar tabs clear_fix"><ul id="pedit_filters" class="t0">
{section name=cat_loop loop=$cats}
  <li class="{if $cats[cat_loop].subcat_id == $cat_id}active_link{/if}"><a href='edit?cat_id={$cats[cat_loop].subcat_id}'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">{lang_print id=$cats[cat_loop].subcat_title}</b></a></li>
{/section}
<li class="active_link"><a href='user_education.php'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Образование</b></a></li>
  {if $user->level_info.level_photo_allow != 0}<li class=""><a href='edit?act=photo'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Фотография</b></a></li>{/if}
</ul></div>
<div id="profile_editor">
{* SHOW RESULT MESSAGE *}
{if $result != ""}
<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Изменения сохранены.</b>
<br>
Новые данные будут отражены на Вашей странице.
</div>
</div>
{/if}

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
{$error_message}
</div>
</div>
{/if}


{literal}
<script type="text/javascript">
function removeschool(eid) {
  if (confirm("{/literal}{lang_print id=11040703}{literal}")) {
  	var myTextField = document.getElementById('edu'+eid);
  	myTextField.value = "";
  	document.getElementById('school'+eid).style.display = 'none';
  }
  return false;
}
</script>
{/literal}

<div id="pedit_general"> 
<form action='user_education.php' method='POST' name='profile'>

{foreach from=$educations item=education key=eid}

<table cellpadding='0' cellspacing='0' class='form' id="school{$eid}">
                    
  <tr>
    <td class='form1'><div class="row">
<div class="label">{lang_print id=11040706}</div></td>
    <td class='form2'><div class="labeled"><input type="text" class="text" id="edu{$eid}" name="educations[{$eid}][education_name]" value="{$education.education_name}" size="30" /></div>
<div class="privacy_control">{if $eid != 'new'}<a href="#"  onclick="removeschool({$eid}); return false;">{lang_print id=11040705}</a>{/if} </div>
</div>

    </td>
  </tr> 
  <tr>

    <td class='form1'> <div class="row">
<div class="label">{lang_print id=11040707}</div></td>
    <td class='form2'><div class="labeled">
      <select  class='inpst'name="educations[{$eid}][education_for]" size="1">
        <option value="">- Не выбрано -</option>
        {foreach from=$foroptions key=foroptionkey item=foroptionval}
        <option value="{$foroptionkey}" {if $foroptionkey == $education.education_for}selected="selected"{/if}>{$foroptionval}</option>
        {/foreach}
      </select>
      <select  class='inpst'name="educations[{$eid}][education_year]" size="1" style="width: 75px;">
        <option value="">{lang_print id=11040708}</option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $education.education_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select></div>
<div class="privacy_control"> </div>
</div>
    </td>
  </tr>
  <tr>
    <td class='form1'><div class="row">
<div class="label">{lang_print id=11040709}</div></td>
    <td class='form2'><div class="labeled"><input type="text" class="text" name="educations[{$eid}][education_degree]" value="{$education.education_degree}" size="30" /></div>
<div class="privacy_control"> </div>
</div></td>
  </tr> 
  <tr>
    <td class='form1'><div class="row">
<div class="label">{lang_print id=11040710}</div></td>
    <td class='form2'><div class="labeled"><input type="text" class="text" name="educations[{$eid}][education_concentration1]" value="{$education.education_concentration1}" size="30" /></div>
<div class="privacy_control"> </div>
</div></td>
  </tr> 
  <tr>
    <td class='form1'><div class="row">
<div class="label">{lang_print id=11040711}</div></td>
    <td class='form2'><div class="labeled"><input type="text" class="text" name="educations[{$eid}][education_concentration2]" value="{$education.education_concentration2}" size="30" /></div>
<div class="privacy_control"> </div>
</div></td>
  </tr> 
  <tr>
    <td class='form1'><div class="row">
<div class="label">{lang_print id=11040712}</div></td>
    <td class='form2'><div class="labeled"><input type="text" class="text" name="educations[{$eid}][education_concentration3]" value="{$education.education_concentration3}" size="30" /></div>
<div class="privacy_control"> </div>
</div></td>
  </tr> 
  <tr><div class="pedit_controls_separator"></div><br></tr> 
</table>           
{/foreach}


<div class="pedit_controls_separator"></div>
    <div class="pedit_controls clear_fix">
      <div class="button_blue fl_l">
        <button>Сохранить</button>
        <input type='hidden' name='task' value='dosave'>
      </div>
    </div>
</form>
  </div>
</div></div>
  </div>
</div></div>
    </div>

{include file='footer.tpl'}
