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
</style>
{/literal}

<link rel="stylesheet" type="text/css" href="/css/al/common.css?296" />
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
  {if $user->level_info.level_photo_allow != 0}<li class=""><a href='edit?act=photo'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Фотография</b></a></li>{/if}
</ul></div>

<div id="profile_editor">

{* SHOW RESULT MESSAGE *}
{if $result == 2}
<div id="pedit_result" style="display: block;">
<div id="pedit_msg" class="msg" style="background-color: rgb(249, 246, 231);">
<b>Изменения сохранены.</b>
<br>
Новые данные будут отражены на Вашей странице.
</div>
</div>
{elseif $result == 1}
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
  <br>
  <table cellpadding='0' cellspacing='0'><tr><td class='result'>
  <div class='error'><img src='./images/error.gif' border='0' class='icon'> {lang_print id=$is_error}</div>
  </td></tr></table>
  <br>
{/if}

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

<form action='user_editprofile.php' method='POST'>
   {if $cat_id == 8}<div id="pedit_contacts">{/if}
   {if $cat_id == 3 or $cat_id == 10}<div id="pedit_general">{/if}
   {if $cat_id == 9}<div id="pedit_interests">{/if}

{* LOOP THROUGH FIELDS *}
{section name=field_loop loop=$fields}
      {if $cat_id == 8}<div class="pedit_row clear_fix" id="pedit_country_row">
      <div class="pedit_label fl_l ta_r">{lang_print id=$fields[field_loop].field_title}:{if $fields[field_loop].field_required != 0}*{/if}
      </div>
      {/if}
      {if $cat_id == 3 or $cat_id == 10}
      <div class="pedit_general_row clear_fix">
      <div class="pedit_general_label fl_l ta_r">{lang_print id=$fields[field_loop].field_title}:{if $fields[field_loop].field_required != 0}*{/if}
      </div>
      {/if}
      {if $cat_id == 9}
      <div class="pedit_interests_row clear_fix">
      <div class="pedit_interests_label fl_l ta_r">{lang_print id=$fields[field_loop].field_title}:{if $fields[field_loop].field_required != 0}*{/if}
      </div>
      {/if}
    {* TEXT FIELD *}
    {if $fields[field_loop].field_type == 1}

      <div class="pedit_general_labeled fl_l">
      <input type='text' {if $cat_id == 3 or $cat_id == 10}id="pedit_first_name"{/if} class='text' name='field_{$fields[field_loop].field_id}' id='field_{$fields[field_loop].field_id}' value='{$fields[field_loop].field_value}' style='{$fields[field_loop].field_style}' maxlength='11'>
      </div>
    </div>

      {* JAVASCRIPT FOR CREATING SUGGESTION BOX *}
      {if $fields[field_loop].field_options != "" && $fields[field_loop].field_options|@count != 0}
      {literal}
      <script type="text/javascript">
      <!--
      window.addEvent('domready', function(){
	var options = {
		script:"misc_js.php?task=suggest_field&limit=5&{/literal}{section name=option_loop loop=$fields[field_loop].field_options}options[]={$fields[field_loop].field_options[option_loop].label}&{/section}{literal}",
		varname:"input",
		json:true,
		shownoresults:false,
		maxresults:5,
		multisuggest:false,
		callback: function (obj) {  }
	};
	var as_json{/literal}{$fields[field_loop].field_id}{literal} = new bsn.AutoSuggest('field_{/literal}{$fields[field_loop].field_id}{literal}', options);
      });
      //-->
      </script>
      {/literal}
      {/if}


    {* TEXTAREA *}
    {elseif $fields[field_loop].field_type == 2}
     <div class="pedit_interests_labeled fl_l">
     <textarea id="pedit_interests_activities" name='field_{$fields[field_loop].field_id}'>{$fields[field_loop].field_value}</textarea>
     </div>
<div class="pedit_interests_details fl_l">{lang_print id=$fields[field_loop].field_desc}</div>
</div>



     {* SELECT BOX *}
    {elseif $fields[field_loop].field_type == 3}
      <div class="pedit_general_labeled fl_l"><select class='inpst' name='field_{$fields[field_loop].field_id}' id='field_{$fields[field_loop].field_id}' onchange="ShowHideDeps('{$fields[field_loop].field_id}', this.value);" style="width: 220px;">
      <option value='-1'>- Не выбрано -</option>
      {* LOOP THROUGH FIELD OPTIONS *}
      {section name=option_loop loop=$fields[field_loop].field_options}
        <option id='op' value='{$fields[field_loop].field_options[option_loop].value}'{if $fields[field_loop].field_options[option_loop].value == $fields[field_loop].field_value} SELECTED{/if}>{lang_print id=$fields[field_loop].field_options[option_loop].label}</option>
      {/section}
      </select>
      </div>
    </div>
      {* LOOP THROUGH DEPENDENT FIELDS *}
      <div id='field_options_{$fields[field_loop].field_id}'>
      {section name=option_loop loop=$fields[field_loop].field_options}
        {if $fields[field_loop].field_options[option_loop].dependency == 1}

	  {* SELECT BOX *}
	  {if $fields[field_loop].field_options[option_loop].dep_field_type == 3}
            <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $fields[field_loop].field_options[option_loop].value != $fields[field_loop].field_value} display: none;{/if}'>
            {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
            <select name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}'>
	      <option value='-1'></option>
	      {* LOOP THROUGH DEP FIELD OPTIONS *}
	      {section name=option2_loop loop=$fields[field_loop].field_options[option_loop].dep_field_options}
	        <option id='op' value='{$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	      {/section}
	    </select>
            </div>

	  {* TEXT FIELD *}
	  {else}
            <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $fields[field_loop].field_options[option_loop].value != $fields[field_loop].field_value} display: none;{/if}'>
            {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
            <input type='text' class='text' name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}' value='{$fields[field_loop].field_options[option_loop].dep_field_value}' style='{$fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
            </div>
	  {/if}

        {/if}
      {/section}
      </div>



    {* RADIO BUTTONS *}
    {elseif $fields[field_loop].field_type == 4}

      {* LOOP THROUGH FIELD OPTIONS *}
      <div id='field_options_{$fields[field_loop].field_id}'>
      {section name=option_loop loop=$fields[field_loop].field_options}
        <div>
        <input type='radio' class='radio' onclick="ShowHideDeps('{$fields[field_loop].field_id}', '{$fields[field_loop].field_options[option_loop].value}');" style='{$fields[field_loop].field_style}' name='field_{$fields[field_loop].field_id}' id='label_{$fields[field_loop].field_id}_{$fields[field_loop].field_options[option_loop].value}' value='{$fields[field_loop].field_options[option_loop].value}'{if $fields[field_loop].field_options[option_loop].value == $fields[field_loop].field_value} CHECKED{/if}>
        <label for='label_{$fields[field_loop].field_id}_{$fields[field_loop].field_options[option_loop].value}'>{lang_print id=$fields[field_loop].field_options[option_loop].label}</label>
        </div>

        {* DISPLAY DEPENDENT FIELDS *}
        {if $fields[field_loop].field_options[option_loop].dependency == 1}

	  {* SELECT BOX *}
	  {if $fields[field_loop].field_options[option_loop].dep_field_type == 3}
            <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $fields[field_loop].field_options[option_loop].value != $fields[field_loop].field_value} display: none;{/if}'>
            {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
            <select name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}'>
	      <option value='-1'></option>
	      {* LOOP THROUGH DEP FIELD OPTIONS *}
	      {section name=option2_loop loop=$fields[field_loop].field_options[option_loop].dep_field_options}
	        <option id='op' value='{$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	      {/section}
	    </select>
            </div>

	  {* TEXT FIELD *}
	  {else}
            <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $fields[field_loop].field_options[option_loop].value != $fields[field_loop].field_value} display: none;{/if}'>
            {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
            <input type='text' class='text' name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}' value='{$fields[field_loop].field_options[option_loop].dep_field_value}' style='{$fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
            </div>
	  {/if}

        {/if}

      {/section}
      </div>


    {* DATE FIELD *}
    {elseif $fields[field_loop].field_type == 5}
      <div class="pedit_general_labeled fl_l">
        <div class="pedit_bday fl_l">
<select class='inpst' name='field_{$fields[field_loop].field_id}_1' style='{$fields[field_loop].field_style} width: 62px;'>
      {section name=date1 loop=$fields[field_loop].date_array1}
        <option value='{$fields[field_loop].date_array1[date1].value}'{$fields[field_loop].date_array1[date1].selected}>{if $smarty.section.date1.first}{lang_print id=$fields[field_loop].date_array1[date1].name}{else}{$fields[field_loop].date_array1[date1].name}{/if}</option>
      {/section}
      </select>
       </div>
        <div class="pedit_bmonth fl_l">
		<select class='inpst' name='field_{$fields[field_loop].field_id}_2' style='width: 82px;'>
      {section name=date2 loop=$fields[field_loop].date_array2}
        <option value='{$fields[field_loop].date_array2[date2].value}'{$fields[field_loop].date_array2[date2].selected}>{if $smarty.section.date2.first}{lang_print id=$fields[field_loop].date_array2[date2].name}{else}{$fields[field_loop].date_array2[date2].name}{/if}</option>
      {/section}
      </select>

      </div>
        <div id="pedit_byear_cont" class="pedit_byear fl_l">
      <select class='inpst' name='field_{$fields[field_loop].field_id}_3' style='{$fields[field_loop].field_style} width: 66px;'>
      {section name=date3 loop=$fields[field_loop].date_array3}
        <option value='{$fields[field_loop].date_array3[date3].value}'{$fields[field_loop].date_array3[date3].selected}>{if $smarty.section.date3.first}{lang_print id=$fields[field_loop].date_array3[date3].name}{else}{$fields[field_loop].date_array3[date3].name}{/if}</option>
      {/section}
      </select>
      </div>
      </div>
    </div>

      {* CHECKBOXES *}
      {elseif $fields[field_loop].field_type == 6}

        {* LOOP THROUGH FIELD OPTIONS *}
        <div id='field_options_{$fields[field_loop].field_id}'>
        {section name=option_loop loop=$fields[field_loop].field_options}
          <div>
          <input type='checkbox' onclick="ShowHideDeps('{$fields[field_loop].field_id}', '{$fields[field_loop].field_options[option_loop].value}', '{$fields[field_loop].field_type}');" style='{$fields[field_loop].field_style}' name='field_{$fields[field_loop].field_id}[]' id='label_{$fields[field_loop].field_id}_{$fields[field_loop].field_options[option_loop].value}' value='{$fields[field_loop].field_options[option_loop].value}'{if $fields[field_loop].field_options[option_loop].value|in_array:$fields[field_loop].field_value} CHECKED{/if}>
          <label for='label_{$fields[field_loop].field_id}_{$fields[field_loop].field_options[option_loop].value}'>{lang_print id=$fields[field_loop].field_options[option_loop].label}</label>
          </div>

          {* DISPLAY DEPENDENT FIELDS *}
          {if $fields[field_loop].field_options[option_loop].dependency == 1}

	    {* SELECT BOX *}
	    {if $fields[field_loop].field_options[option_loop].dep_field_type == 3}
              <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 5px 5px 10px 5px;{if $fields[field_loop].field_options[option_loop].value != $fields[field_loop].field_value} display: none;{/if}'>
              {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
              <select name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}'>
	        <option value='-1'></option>
	        {* LOOP THROUGH DEP FIELD OPTIONS *}
	        {section name=option2_loop loop=$fields[field_loop].field_options[option_loop].dep_field_options}
	          <option id='op' value='{$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value}'{if $fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].value == $fields[field_loop].field_options[option_loop].dep_field_value} SELECTED{/if}>{lang_print id=$fields[field_loop].field_options[option_loop].dep_field_options[option2_loop].label}</option>
	        {/section}
	      </select>
              </div>

	    {* TEXT FIELD *}
	    {else}
              <div id='field_{$fields[field_loop].field_id}_option{$fields[field_loop].field_options[option_loop].value}' style='margin: 0px 5px 10px 23px;{if $fields[field_loop].field_options[option_loop].value|in_array:$fields[field_loop].field_value == FALSE} display: none;{/if}'>
              {lang_print id=$fields[field_loop].field_options[option_loop].dep_field_title}{if $fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
              <input type='text' class='text' name='field_{$fields[field_loop].field_options[option_loop].dep_field_id}' value='{$fields[field_loop].field_options[option_loop].dep_field_value}' style='{$fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$fields[field_loop].field_options[option_loop].dep_field_maxlength}'>
              </div>
	    {/if}

          {/if}

        {/section}
        </div>


    {/if}


    {capture assign='current_subnet'}{lang_print id=$user->subnet_info.subnet_name}{/capture}
    {if $fields[field_loop].field_id == $setting.setting_subnet_field1_id || $fields[field_loop].field_id == $setting.setting_subnet_field2_id}{lang_sprintf id=766 1=$current_subnet}{/if}

    {capture assign='field_error'}{lang_print id=$fields[field_loop].field_error}{/capture}
    {if $field_error != ""}<div class='form_error'><img src='./images/icons/error16.gif' border='0' class='icon'> {$field_error}</div>{/if}
    </td>
    </tr>
  {/section}

<div class="pedit_controls_separator"></div>
    <div class="pedit_controls clear_fix">
      <div class="button_blue fl_l">
        <button>Сохранить</button>
        <input type='hidden' name='task' value='dosave'>
<input type='hidden' name='cat_id' value='{$cat_id}'>
      </div>
    </div>
</form>
  </div>
</div></div>
  </div>
</div></div>
    </div>

{include file='footer.tpl'}
