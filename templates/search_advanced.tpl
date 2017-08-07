{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link type="text/css" rel="stylesheet" href="/css/al/search.css?32"></link><link type="text/css" rel="stylesheet" href="/css/ui_controls.css?26"></link><link type="text/css" rel="stylesheet" href="/css/al/notifier.css?51"></link><script type="text/javascript" src="/js/al/common.js?710"></script><script type="text/javascript" src="/js/lang0_0.js?5578"></script><script type="text/javascript" src="/js/al/search.js?61"></script><script type="text/javascript" src="/js/lib/ui_controls.js?110"></script><script type="text/javascript" src="/js/al/notifier.js?155"></script>
<body onresize="onBodyResize()" class="is_rtl">

  <div id="utils"></div>

  <div id="layer_bg" class="fixed"></div><div id="layer_wrap" class="scroll_fix_wrap fixed"><div id="layer"></div></div>
  <div id="box_layer_bg" class="fixed"></div><div id="box_layer_wrap" class="scroll_fix_wrap fixed"><div id="box_layer"><div id="box_loader"><div class="loader"></div><div class="back"></div></div></div></div>

  <div id="stl_left"></div><div id="stl_side"></div>

  <script type="text/javascript">domStarted();</script>
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

<div class="t_bar tabs clear_fix"><ul id="pedit_filters" class="t0">
<li class="active_link"><a href='search_advanced.php'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Люди</b></a></li>
<li class=""><a href='/search?c[section]=communities'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Сообщества</b></a></li>
</ul></div>


<div class="summary_wrap clear_fix">
  <div id="summary" class="summary">
    Поиск по людям
  </div>
</div>


{* SHOW MESSAGE IF NO RESULTS FOUND *}
{if $total_users == 0 && ($showfields == 0 || $cats_menu != NULL)}
  <br>
  <table cellpadding='0' cellspacing='0' align='center'>
  <tr><td class='result'><img src='./images/icons/bulb22.gif' border='0' class='icon'> {lang_print id=1085}</td></tr>
  </table>


{* SHOW RESULTS *}
{elseif $total_users != 0}

  {* DISPLAY PAGINATION MENU IF APPLICABLE *}
  {if $maxpage > 1}
    <div class='browse_pages'>
      {if $p != 1}<a href='search_advanced.php?{$url_string}cat_selected={$cat_selected}&task={$task}&sort={$sort}&user_online={$user_online}&user_withphoto={$user_withphoto}&p={math equation='p-1' p=$p}'>&#171; {lang_print id=182}</a>{else}<font class='disabled'>&#171; {lang_print id=182}</font>{/if}
      {if $p_start == $p_end}
        &nbsp;|&nbsp; {lang_sprintf id=184 1=$p_start 2=$total_users} &nbsp;|&nbsp;
      {else}
        &nbsp;|&nbsp; {lang_sprintf id=185 1=$p_start 2=$p_end 3=$total_users} &nbsp;|&nbsp;
      {/if}
      {if $p != $maxpage}<a href='search_advanced.php?{$url_string}cat_selected={$cat_selected}&task={$task}&sort={$sort}&user_online={$user_online}&user_withphoto={$user_withphoto}&p={math equation='p+1' p=$p}'>{lang_print id=183} &#187;</a>{else}<font class='disabled'>{lang_print id=183} &#187;</font>{/if}
    </div>
  {/if}

  <div id="results_wrap">
  <table id="search_table" class="search_table">
  <tr>
    <td id="results" class="results highlight people_results">
  {* DISPLAY BROWSE RESULTS IN THUMBNAIL FORM *}
  {section name=user_loop loop=$users}
<div class="people_row three_col_row clear_fix">
  <div class="img fl_l">
      <a href='id{$users[user_loop]->user_info.user_id}'><img src='{$users[user_loop]->user_photo('./images/camera_a.gif')}'></a>
	  </div>
  <div class="info fl_l">
    <div class="labeled name">
	<a href='id{$users[user_loop]->user_info.user_id}'>
	  {$users[user_loop]->user_displayname}</a></div>
   <div class="labeled "></div>
    </div>
</div>
  {/section}


{/if}
</div>
    </td>
    <td id="filters_td" class="filters">
      <div id="search_filters">
        
  <form action='search_advanced.php' method='post' id="filter_form" name="filter_form">

  
{section name=cat_loop loop=$cats}
      {section name=subcat_loop loop=$cats[cat_loop].subcats}
      {section name=field_loop loop=$cats[cat_loop].subcats[subcat_loop].fields}

	  <div class="noselect clear_fix filter_main " onselectstart="return false">
<div class="text fl_l">
{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_title}{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_special == 1} {lang_print id=736}{/if}</div>
</div>


          {* TEXT FIELD/TEXTAREA *}
          {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 1 || $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 2}

	    {* RANGED SEARCH *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_search == 2}
	      <input type='text' class='text' size='5' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_min' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_min}' maxlength='100'>

	      <input type='text' class='text' size='5' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_max' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_max}' maxlength='100'>

	    {* EXACT VALUE SEARCH *}
	    {else}
		<div id="region_filter" class="inner_filter">
<div id="cCountry" class="control">
<div id="container3" class="selector_container" style="width: 150px;">
<table class="selector_table" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td class="selector">
              <input class="selector_input" type='text' class='text' size='15' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value}' maxlength='100'></tr>
</tbody>
</table>
	    {/if}

		  {* RADIO BUTTONS *}
		  {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 4}
              {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
			  <input type="radio" name="field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}"
			    id="radio_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}"
				value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'
				{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value}
					checked="true"{/if}
				>
			  <label for="radio_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}">
               {lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}
			  </label><br>
              {/section}


          {* SELECT BOX/RADIO BUTTONS *}
          {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 3}

	    {* RANGED SEARCH *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_search == 2}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_min'>
              <option value='-1'></option>
              {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_min} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</option>
              {/section}
              </select>
	      -
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_max'>
              <option value='-1'></option>
              {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_max} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</option>
              {/section}
              </select>

	    {* EXACT VALUE SEARCH *}
	    {else}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}'>
              <option value='-1'></option>
              {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} SELECTED{/if}>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</option>
              {/section}
              </select>
	    {/if}


          {* DATE FIELD *}
          {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 5}


	    {* BIRTHDAYS *}
	    {if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_special == 1}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_3_min'>
              {section name=date3_min loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_min].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_min == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_min].value} SELECTED{/if}>{if $smarty.section.date3_min.first}[ {lang_print id=1116} ]{else}{math equation='x-y' x=$smarty.now|date_format:"%Y" y=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_min].name}{/if}</option>
              {/section}
              </select>
	      -
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_3_max'>
              {section name=date3_max loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_max].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value_max == $cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_max].value} SELECTED{/if}>{if $smarty.section.date3_max.first}[ {lang_print id=1117} ]{else}{math equation='x-y' x=$smarty.now|date_format:"%Y" y=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3_max].name}{/if}</option>
              {/section}
              </select>


	    {* NORMAL DATES *}
	    {else}
              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_1'>
              {section name=date1 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].selected}>{if $smarty.section.date1.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array1[date1].name}{/if}</option>
              {/section}
              </select>

              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_2'>
              {section name=date2 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].selected}>{if $smarty.section.date2.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array2[date2].name}{/if}</option>
              {/section}
              </select>

              <select name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_3'>
              {section name=date3 loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3}
                <option value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].value}'{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].selected}>{if $smarty.section.date3.first}{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].name}{else}{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].date_array3[date3].name}{/if}</option>
              {/section}
              </select>
	    {/if}


          {* CHECKBOXES *}
          {elseif $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_type == 6}

            {* LOOP THROUGH FIELD OPTIONS *}
            {section name=option_loop loop=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options}
              <table cellpadding='0' cellspacing='0'>
	      <tr>
	      <td><input type='checkbox' name='field_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}[]' id='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}' value='{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'{if $cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value|in_array:$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_value} checked='checked'{/if} style='vertical-align: middle;'></td>
	      <td><label for='label_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_id}_{$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].value}'>{lang_print id=$cats[cat_loop].subcats[subcat_loop].fields[field_loop].field_options[option_loop].label}</label></td>
	      </tr>
	      </table>
            {/section}

          {/if}

      </div>
      {/section}
      {/section}
      {/section}
</div>
 <div>

<div class="button_wide button_blue"><button>Обновить результаты</button></div>
          <input type='hidden' name='task' value='dosearch'>
          <input type='hidden' name='cat_selected' value='{$cat_selected}'>
	</div>
      </div>
  </form>
      </div>
    </td>
  </tr>
</table>
</div>
</div></div>
  </div>

    </div>
	{include file='footer.tpl'}
