{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}




<link rel="stylesheet" type="text/css" href="/css/al/common.css?310" />
<link type="text/css" rel="stylesheet" href="/css/al/join.css?53"></link>
<link type="text/css" rel="stylesheet" href="/css/ui_controls.css?28"></link>
<link type="text/css" rel="stylesheet" href="/css/al/tooltips.css?59"></link>
<link type="text/css" rel="stylesheet" href="/css/al/profile_edit.css?24"></link>


{literal}
<style>

.editor {
  margin: 3px 0px 11px 22px;
  width: 580px;
}
.editor_panel {
  padding: 10px 0px;
  background: #f7f7f7;
}
.editor td {
  border: none;
  margin: 0px;
  padding: 5px 1px 1px;
  vertical-align: top;
}

.editor td.label {
  text-align: right;
  padding-right: 15px;
  /*padding-right: 0px;*/
  width:150px;
  color: #555;
}

.editor td.labelHigh {
  text-align: right;
  vertical-align: top;
  padding: 5px 15px 0px 0px;
  /*padding: 10px 0px 0px 0px;*/
  width: 150px;
  color: #555;
}

.editor td.labelHigh div{
  font-weight: normal;
  font-size:10px;
  color: #999; }

</style>
{/literal}


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
    <div id="content"><div class="t_bar clear_fix join_tabs">
  <ul class="t0">
    <li class="{if $step == 1}active_link{/if}">
      <a>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word"><nobr>Шаг 1. Информация для входа</nobr></b>
      </a>
    </li>
    <li class="{if $step == 2}active_link{/if}">
      <a>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word"><nobr>Шаг 2. Личная информация</nobr></b>
      </a>
    </li>
    <li class="{if $step == 3}active_link{/if}">
      <a>
        <b class="tl1"><b></b></b>
        <b class="tl2"></b>
        <b class="tab_word"><nobr>Шаг 3. Фотография</nobr></b>
      </a>
    </li>
  </ul>
</div>


{* $Id: signup.tpl 235 2009-11-13 04:30:39Z phil $ *}

{if $step == 5}
{* SHOW COMPLETION PAGE *}
{literal}
<style>
.video_info_msg {
    color: #777777;
    font-size: 1.09em;
    text-align: center;
}
</style>
{/literal}
<div id="not_found" class="video_info_msg " style="">
 <div class="join_header_wrap">

  <div class="join_header">Успешная регистрация!</div>
  <span class="video_empty">
Поздравляем. Теперь вы можете войти в свой аккаунт.
</span>

    <form action='login.php' method='GET'>
<p><p>
    <div class="button_blue"><div class="boxes1" type='submit'><button>Вход</button></div></div>
    <input type='hidden' name='email' value='{$new_user->user_info.user_email}'>

    </form>
</div>
</div>

{* SHOW STEP FOUR *}
{elseif $step == 4}
  <img src='./images/icons/signup48.gif' border='0' class='icon_big'>
  <div class='page_header'>{lang_print id=722}</div>
  <div>{lang_print id=723}</div>
  <br />
  <br />

  <form action='signup.php' method='POST'>
  <table cellpadding='0' cellspacing='0' class='form'>
  <tr>
    <td>
      <b>{lang_print id=724}</b>
      <div>{lang_print id=725}</div>
      <textarea name='invite_emails' rows='3' cols='70' style='margin-top: 3px;'></textarea><br><br>
    </td>
  </tr>
  <tr>
    <td>
      <b>{lang_print id=726}</b>
      <div>{lang_print id=727}</div>
      <textarea name='invite_message' rows='3' cols='70' style='margin-top: 3px;'></textarea>
    </td>
  </tr>
  </table>

  <br>

  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td>
    <input type='submit' class='button' value='{lang_print id=728}'>&nbsp;
    <input type='hidden' name='task' value='{$next_task}'>
    </form>
  </td>
  <td>
    <form action='signup.php' method='POST'><input type='submit' class='button' value='{lang_print id=717}'>
    <input type='hidden' name='task' value='{$next_task}'>
    <input type='hidden' name='step' value='{$step}'>
    </form>
  </td>
  </tr>
  </table>





{* SHOW STEP THREE *}
{elseif $step == 3}
<div class="join_header_wrap">

  <div class="join_header">Шаг 3. Фотография профиля</div>

    {* SHOW ERROR MESSAGE *}
  {if $is_error != 0}
    <table cellpadding='0' cellspacing='0'>
    <tr><td class='result'>
      <div class='error'><img src='./images/error.gif' border='0' class='icon'> {lang_print id=$is_error}</div>
    </td></tr></table>
    <br>
  {/if}

</div>

 <table class="editor" border="0" cellspacing="0">
       <tr>
        <td class="labelHigh" text-align:center">
		<img src='{$new_user->user_photo("./images/camera_a.gif")}' border='0' class='photo'>

	</td>


        <td class='signup_photo'>
<form action='signup.php' method='POST' enctype='multipart/form-data'>
	 <div class="msg">Вы можете загрузить сюда только собственную фотографию расширения JPG, JPEG, GIF или PNG. Загрузка постороннего изображения приведёт к удалению Вашего аккаунта.</div><br>
	 <input type='file' class="inputbox" size="30" id="photo" name='photo' /><br><br>

	 <div class="button_blue"><div class="boxes1" type='submit'><button>{lang_print id=714}</button></div></div>
    <input type='hidden' name='step' value='{$step}'>
    <input type='hidden' name='task' value='{$next_task}'>
    <input type='hidden' name='MAX_FILE_SIZE' value='5000000'>
    </form>
	 <small><br>Файлы размером более 5 MB не загрузятся.<br />В случае возникновения проблем попробуйте загрузить фотографию меньшего размера.<br><br></small>
         <div style="margin-bottom:15px;">
		 	         </td>
       </tr>
      </table>
 <form action='signup.php' method='POST'>
<div class="join_next_cont">
<div id="join_school_next_wrap" class="join_next_wrap" style="height: 68px;">
<div id="join_school_next">
<div id="join_school_next_button" class="button_blue join_next_button">
<button onclick="Join.go(this, 'university')">
<span id="join_next_step" class="join_with_arr">{if $new_user->user_photo() != ""}Сохранить фото и завершить регистрацию{else}{lang_print id=717}{/if}</span>
</button>
      <input type='hidden' name='task' value='{$last_task}'>
</div>
</div>
</div>
</div>

      </form>



{* SHOW STEP TWO *}
{elseif $step == 2}

 <div class="join_header_wrap">
  <div class="join_header">Шаг 1. Заполните информацию о себе</div>

    <div id="ij_msg" class="msg" style="overflow: visible; margin-top: 20px; margin-bottom: 10px; padding-top: 8px; padding-bottom: 8px; display: block;">
<b>Внимание!!!</b>.
<br>
просим вас указывать только настоящие Данные, в противном случае ваш аккаунт будет удален или заблокирован!
</div>

  {* SHOW ERROR MESSAGE *}
  {if $is_error != 0}
<div id="ij_msg" class="msg" style="overflow: visible; margin-top: 20px; margin-bottom: 10px; padding-top: 8px; padding-bottom: 8px; display: block;">
<b>Ошибка</b>.
<br>
{lang_print id=$is_error}
</div>
  {/if}
</div>

  {* JAVASCRIPT FOR SHOWING DEP FIELDS *}
  {literal}
  <script type="text/javascript">
  <!--
  function ShowHideDeps(field_id, field_value, field_type) {
    if(field_type == 6) {
      if($('field_'+field_id+'_option'+field_value)) {
        if($('field_'+field_id+'_option'+field_value).style.display == "block") {
	  $('field_'+field_id+'_option'+field_value).style.display = "none";
	} else {
	  $('field_'+field_id+'_option'+field_value).style.display = "block";
	}
      }
    } else {
      var divIdStart = "field_"+field_id+"_option";
      for(var x=0;x<$('field_options_'+field_id).childNodes.length;x++) {
        if($('field_options_'+field_id).childNodes[x].nodeName == "DIV" && $('field_options_'+field_id).childNodes[x].id.substr(0, divIdStart.length) == divIdStart) {
          if($('field_options_'+field_id).childNodes[x].id == 'field_'+field_id+'_option'+field_value) {
            $('field_options_'+field_id).childNodes[x].style.display = "block";
          } else {
            $('field_options_'+field_id).childNodes[x].style.display = "none";
          }
        }
      }
    }
  }
  //-->
  </script>
  {/literal}

  <form action='signup.php' method='POST'>
  {* LOOP THROUGH TABS *}
  {section name=cat_loop loop=$cats}
  {section name=subcat_loop loop=$cats[cat_loop].subcats}
    {if $cats[cat_loop].subcats[subcat_loop].fields|@count != 0}

    {* LOOP THROUGH FIELDS IN TAB *}
    {section name=field_loop loop=$cats[cat_loop].subcats[subcat_loop].fields}
   <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_required != 0}*{/if}</div>




      {* TEXT FIELD *}
      {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 1}
          <div class="pedit_general_labeled fl_l"><input type='text' class='text' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value}' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}' maxlength='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_maxlength}'></div>
    </div>

        {* JAVASCRIPT FOR CREATING SUGGESTION BOX *}
        {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options != "" && $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options|@count != 0}
        {literal}
        <script type="text/javascript">
        <!--
        window.addEvent('domready', function(){
	  var options = {
		script:"misc_js.php?task=suggest_field&limit=5&{/literal}{section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}options[]={$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}&{/section}{literal}",
		varname:"input",
		json:true,
		shownoresults:false,
		maxresults:5,
		multisuggest:false,
		callback: function (obj) {  }
	  };
	  var as_json{/literal}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}{literal} = new bsn.AutoSuggest('field_{/literal}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}{literal}', options);
        });
        //-->
        </script>
        {/literal}
        {/if}


      {* TEXTAREA *}
      {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 2}
        <div><textarea rows='6' cols='50' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}'>{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value}</textarea></div>



      {* SELECT BOX *}
      {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 3}
        <div class="pedit_general_labeled fl_l"><select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' onchange="ShowHideDeps('{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}', this.value);" style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}'>
        <option value='-1'>- Не выбрано-</option>
        {* LOOP THROUGH FIELD OPTIONS *}
        {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
          <option id='op' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</option>
        {/section}
        </select>
        </div>
    </div>

        {* LOOP THROUGH DEPENDENT FIELDS *}
        <div id='field_options_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}'>
        {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
          {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dependency == 1}

	    {* SELECT BOX *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_type == 3}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}'>
	        <option value='-1'></option>
	        {* LOOP THROUGH DEP FIELD OPTIONS *}
	        {section name=option2_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options}
	          <option id='op' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	        {/section}
	      </select>
              </div>

	    {* TEXT FIELD *}
	    {else}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
             <input type='text' class='text' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value}' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
              </div>
	    {/if}

          {/if}
        {/section}
        </div>



      {* RADIO BUTTONS *}
      {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 4}

        {* LOOP THROUGH FIELD OPTIONS *}
        <div id='field_options_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}'>
        {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
          <div>
          <input type='radio' class='radio' onclick="ShowHideDeps('{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}', '{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}');" style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' id='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} CHECKED{/if}>
          <label for='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</label>
          </div>

          {* DISPLAY DEPENDENT FIELDS *}
          {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dependency == 1}

	    {* SELECT BOX *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_type == 3}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}'>
	        <option value='-1'></option>
	        {* LOOP THROUGH DEP FIELD OPTIONS *}
	        {section name=option2_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options}
	          <option id='op' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	        {/section}
	      </select>
              </div>

	    {* TEXT FIELD *}
	    {else}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
             <input type='text' class='text' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value}' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
              </div>
	    {/if}

          {/if}

        {/section}
        </div>



      {* DATE FIELD *}
      {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 5}
        <div class="pedit_general_labeled fl_l">
        <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_1' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}'>
        {section name=date1 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1}
          <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].selected}>{if $smarty.section.date1.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].name}{/if}</option>
        {/section}
        </select>

        <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_2' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}'>
        {section name=date2 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2}
          <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].selected}>{if $smarty.section.date2.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].name}{/if}</option>
        {/section}
        </select>

        <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_3' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}'>
        {section name=date3 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3}
          <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].selected}>{if $smarty.section.date3.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].name}{/if}</option>
        {/section}
        </select>
 </div>
    </div>




      {* CHECKBOXES *}
      {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 6}

        {* LOOP THROUGH FIELD OPTIONS *}
        <div id='field_options_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}'>
        {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
          <div>
          <input type='checkbox' onclick="ShowHideDeps('{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}', '{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}', '{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type}');" style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_style}' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}[]' id='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value|in_array:$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} CHECKED{/if}>
          <label for='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</label>
          </div>

          {* DISPLAY DEPENDENT FIELDS *}
          {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dependency == 1}
	    {* SELECT BOX *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_type == 3}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}'>
	        <option value='-1'></option>
	        {* LOOP THROUGH DEP FIELD OPTIONS *}
	        {section name=option2_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options}
	          <option id='op' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	        {/section}
	      </select>
              </div>

	    {* TEXT FIELD *}
	    {else}
              <div id='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_option{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value != $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
             <input type='text' class='text' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_id}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_value}' style='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
              </div>
	    {/if}
          {/if}

        {/section}
        </div>

      {/if}

      <div class='form_desc'>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_desc}</div>
      {capture assign='field_error'}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_error}{/capture}
      {if $field_error != ""}<div class='form_error'><img src='./images/icons/error16.gif' border='0' class='icon'> {$field_error}</div>{/if}
    </td>
    </tr>
    {/section}
  </table>
  {/if}
  {/section}
  {/section}

  <div class="join_next_cont">
<div id="join_school_next_wrap" class="join_next_wrap" style="height: 68px;">
<div id="join_school_next">
<div id="join_school_next_button" class="button_blue join_next_button">
<button onclick="Join.go(this, 'university')">
<span id="join_next_step" class="join_with_arr">Перейти к следующему шагу</span>
</button>
</div>
</div>
</div>
</div>

  <input type='hidden' name='task' value='{$next_task}'>
  <input type='hidden' name='step' value='{$step}'>
  <input type='hidden' name='signup_email' value='{$signup_email}'>
  <input type='hidden' name='signup_password' value='{$signup_password}'>
  <input type='hidden' name='signup_password2' value='{$signup_password2}'>
  <input type='hidden' name='signup_username' value='{$signup_username}'>
  <input type='hidden' name='signup_fname' value='{$signup_fname}'>
  <input type='hidden' name='signup_lname' value='{$signup_lname}'>
  <input type='hidden' name='signup_timezone' value='{$signup_timezone}'>
  <input type='hidden' name='signup_lang' value='{$signup_lang}'>
  <input type='hidden' name='signup_invite' value='{$signup_invite}'>
  <input type='hidden' name='signup_secure' value='{$signup_secure}'>
  <input type='hidden' name='signup_agree' value='{$signup_agree}'>
  <input type='hidden' name='signup_cat' value='{$signup_cat}'>
  </form>




{* SHOW STEP ONE *}
{else}
<div class="join_header_wrap">



  <div class="join_header">Шаг 1. Введите данные для входа</div>

    {* SHOW ERROR MESSAGE *}
  {if $is_error != 0}
    <div id="ij_msg" class="msg" style="overflow: visible; margin-top: 20px; margin-bottom: 10px; padding-top: 8px; padding-bottom: 8px; display: block;">
<b>Ошибка</b>.
<br>
{lang_print id=$is_error}
</div>
  {/if}
</div>




  <form action='signup.php' method='POST'>


<div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">E-mail:</div>
      <div class="pedit_general_labeled fl_l">
        <input name='signup_email' type='text' class='text' maxlength='70' size='40' value='{$signup_email}' />
        </div>
    </div>

  {if $setting.setting_signup_randpass == 0}
    <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">Пароль:</div>
      <div class="pedit_general_labeled fl_l">
        <input name='signup_password' type='password' class='text' maxlength='50' size='40' value='{$signup_password}'>
        </div>
    </div>
      <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">Пароль еще раз:</div>
      <div class="pedit_general_labeled fl_l">
        <input name='signup_password2' type='password' class='text' maxlength='50' size='40' value='{$signup_password2}'>
        </div>
    </div>
  {else}
    <input type='hidden' name='signup_password' value=''>
    <input type='hidden' name='signup_password2' value=''>
  {/if}

  {if $setting.setting_username}
    <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">Логин:</div>
      <div class="pedit_general_labeled fl_l">
        <input name='signup_username' type='text' class='text' maxlength='50' size='40' value='{$signup_username}'>
        </div>
    </div>
  {/if}

  <input type='hidden' name='signup_fname' type='text' class='text' maxlength='50' size='40' value='{$signup_fname}'>
  <input type='hidden' name='signup_lname' type='text' class='text' maxlength='50' size='40' value='{$signup_lname}'>

    {if $setting.setting_signup_code}
    <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">Защитный код:</div>
      <div class="pedit_general_labeled fl_l">
      <input type="text" class='text' name="captcha" id="captcha-form" required autocomplete="off" /><br><br>
	  <a href="javascript:void(0);" onclick="document.getElementById('captcha').src='captcha.php?'+Math.random(); document.getElementById('captcha-form').focus();" id="change-image"><img src='./captcha.php' id="captcha" border='0' class='signup_code'></a>
            </div>
			</div>

    {/if}


<div class="join_next_cont">
<div id="join_school_next_wrap" class="join_next_wrap" style="height: 68px;">
<div id="join_school_next">
<div id="join_school_next_button" class="button_blue join_next_button">
<button onclick="Join.go(this, 'university')">
<span id="join_next_step" class="join_with_arr">Перейти к следующему шагу</span>
</button>
<input type='hidden' name='task' value='{$next_task}'>
  <input type='hidden' name='step' value='{$step}'>
</div>
</div>
</div>
</div>
  </form>

{/if}

</div>
</div>
</div>
</div>
</div>
{include file='footer.tpl'}