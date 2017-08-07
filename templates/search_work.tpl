{include file='header.tpl'}

<img src='./images/icons/work48.gif' border='0' class='icon_big'>
<div class='page_header'>Поиск работы</div>
<div>Вы можете искать записи о местах работы пользователей, используя форму ниже.</div>

<br><br>

{* SHOW RESULT MESSAGE *}
{if $result != ""}
<table cellpadding='0' cellspacing='0'><tr><td class='result'>
<div class='success'><img src='./images/success.gif' border='0' class='icon'> {$result}</div>
</td></tr></table>
<br>
{/if}

{* SHOW ERROR MESSAGE *}
{if $is_error != 0}
<table cellpadding='0' cellspacing='0'><tr><td class='result'>
<div class='error'><img src='./images/error.gif' border='0' class='icon'> {$error_message}</div>
</td></tr></table>
<br>
{/if}

<a href="/search_work.php?sid=1">{lang_print id=990000050}</a> | <a href="/search_work.php?sid=2">{lang_print id=990000051}</a>

<form action='search_work.php' method='POST' name='profile'>
<table width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td class="browse_header">{if $sid == '1'}{lang_print id=990000050}{else}{lang_print id=990000051}{/if}</td>
  </tr>
  <tr>
    <td class="browse_fields">
      {* START SEARCH FIELDS *}
	{if $sid == '1'}
<table cellpadding='0' cellspacing='0' class='form' id="school">
  <tr>
    <td class='form1'>{lang_print id=990000012}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="search[work_name]" value="{$search.work_name}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000017}</td>
    <td class='form2'>
      <select name="search[work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $search.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr>
    <td class='form1'>{lang_print id=990000018}</td>
    <td class='form2'>
      <select name="search[work_degree]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $search.work_degree}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
  </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="search[work_concentration1]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $search.work_concentration1}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
     </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000020}</td>
    <td class='form2'><input type="text" class="text" name="search[work_concentration2]" value="{$search.work_concentration2}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000021}</td>
    <td class='form2'><input type="text" class="text" name="search[work_concentration3]" value="{$search.work_concentration3}" size="30" /></td>
  </tr> 
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table> 
<input type="hidden" name="sid" value="{$sid}"> 
	{else}
<table cellpadding='0' cellspacing='0' class='form' id="university">
{if $eid == 'new'}
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>{lang_print id=990000011}</td>
  </tr> 
{/if}
  <tr>
    <td class='form1'>{lang_print id=990000022}</td>
    <td class='form2'><input type="text" class="text" id="edu{$eid}" name="search[work_name]" value="{$search.work_name}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000025}</td>
    <td class='form2'><input type="text" class="text" name="search[work_degree]" value="{$search.work_degree}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000026}</td>
    <td class='form2'><input type="text" class="text" name="search[work_concentration1]" value="{$search.work_concentration1}" size="30" /></td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000027}</td>
    <td class='form2'>
      <select name="search[work_concentration2]" size="1">
        <option value=""></option>
        <option value="1" {if $search.work_concentration2 == '1'}selected="selected"{/if}>{lang_print id=990000029}</option>
        <option value="2" {if $search.work_concentration2 == '2'}selected="selected"{/if}>{lang_print id=990000030}</option>
        <option value="3" {if $search.work_concentration2 == '3'}selected="selected"{/if}>{lang_print id=990000031}</option>
      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000028}</td>
    <td class='form2'>
      <select name="search[work_concentration3]" size="1">
        <option value=""></option>
        <option value="1" {if $search.work_concentration3 == '1'}selected="selected"{/if}>{lang_print id=990000032}</option>
        <option value="2" {if $search.work_concentration3 == '2'}selected="selected"{/if}>{lang_print id=990000033}</option>
        <option value="3" {if $search.work_concentration3 == '3'}selected="selected"{/if}>{lang_print id=990000034}</option>
        <option value="4" {if $search.work_concentration3 == '4'}selected="selected"{/if}>{lang_print id=990000035}</option>
        <option value="5" {if $search.work_concentration3 == '5'}selected="selected"{/if}>{lang_print id=990000036}</option>
        <option value="6" {if $search.work_concentration3 == '6'}selected="selected"{/if}>{lang_print id=990000037}</option>
        <option value="7" {if $search.work_concentration3 == '7'}selected="selected"{/if}>{lang_print id=990000038}</option>
        <option value="8" {if $search.work_concentration3 == '8'}selected="selected"{/if}>{lang_print id=990000039}</option>
        <option value="9" {if $search.work_concentration3 == '9'}selected="selected"{/if}>{lang_print id=990000040}</option>
        <option value="10" {if $search.work_concentration3 == '10'}selected="selected"{/if}>{lang_print id=990000041}</option>

      </select>
    </td>
  </tr> 
  <tr>
    <td class='form1'>{lang_print id=990000019}</td>
    <td class='form2'>
      <select name="search[work_year]" size="1">
        <option value=""></option>
        {foreach from=$yearoptions key=yearoptionkey item=yearoptionval}
        <option value="{$yearoptionkey}" {if $yearoptionkey == $search.work_year}selected="selected"{/if}>{$yearoptionval}</option>
        {/foreach}
      </select>
    </td>
  </tr>
  <tr><td colspan="2"><hr noshade size="0" /></td></tr> 
</table>   
<input type="hidden" name="sid" value="{$sid}"> 
	{/if}  
      {* END SEARCH FIELDS *}
      <table cellpadding='0' cellspacing='0' class='form'>
        <tr>
        <td class='form1'>&nbsp;</td>
        <td class='form2'><input type='submit' class='button' value='Поиск'></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<input type='hidden' name='task' value='search'>
</form>

{if $total_works == 0}
  <br>
  <table cellpadding='0' cellspacing='0' align='center'>
  <tr><td class='result'><img src='./images/icons/bulb22.gif' border='0' class='icon'> Ни один человек не соответствуют Вашим критериям поиска.</td></tr>
  </table>
{else}

      {* DISPLAY PAGINATION MENU IF APPLICABLE *}
      {if $maxpage > 1}
        <br><br>
        <div class='center'>
        <b>
        {if $p != 1}<a href='search_work.php?{$search_query}task={$task}&p={math equation='p-1' p=$p}&sid={$sid}'>&#171; Предыдущая страница</a>{else}<font class='disabled'>&#171; Предыдущая страница</font>{/if}
        {if $p_start == $p_end}
          &nbsp;|&nbsp; Просмотр результата {$p_start} из {$total_works} &nbsp;|&nbsp; 
        {else}
          &nbsp;|&nbsp; просмотр результатов {$p_start}-{$p_end} из {$total_works} &nbsp;|&nbsp; 
        {/if}
        {if $p != $maxpage}<a href='search_work.php?{$search_query}task={$task}&p={math equation='p+1' p=$p}&sid={$sid}'>Следующая страница &#187;</a>{else}<font class='disabled'>Следующая страница &#187;</font>{/if}
        </b>
        </div>
        <br>
      {/if}  

  <table cellpadding='0' cellspacing='0' class='work_search_results'>
  {foreach from=$works item=work key=eid}
    <tr>
      <td class='user_thumb'>
                <a href='{$url->url_create('profile',$work.user->user_info.user_username)}'><img src='{$work.user->user_photo('./images/nophoto.gif')}' class='photo' width='{$misc->photo_size($work.user->user_photo('./images/nophoto.gif'),'100','100','w')}' border='0' alt="{$work.user->user_info.user_username}"></a>
      </td>
      <td class='user_work'>
        <table cellpadding='0' cellspacing='0' class="work">
{if $sid == '1'}
          <tr><td width="130">{lang_print id=258}</td><td><a href='{$url->url_create('profile',$work.user->user_info.user_username)}'>{$work.user->user_info.user_displayname}</a></td></tr>
          <tr><td width="130">{lang_print id=990000048}</td><td>{$work.work_name} {$work.work_concentration1} {lang_print id=990000046} {$work.work_concentration2}</td></tr>
          <tr><td width="130">{lang_print id=990000043}</td><td>{lang_print id=990000044} {$work.work_year} {lang_print id=990000045} {$work.work_degree}</td></tr>
          {if $work.work_concentration3 != ""}<tr><td width="130">{lang_print id=990000021}</td><td>{$work.work_concentration3}</td></tr>{/if}
{else}
          <tr><td width="130">{lang_print id=258}</td><td><a href='{$url->url_create('profile',$work.user->user_info.user_username)}'>{$work.user->user_info.user_displayname}</a></td></tr>
          <tr><td width="130">{lang_print id=990000048}</td><td>{$work.work_name} {$work.work_year} {lang_print id=990000025} {$work.work_degree}</td></tr>
          <tr><td width="130">{lang_print id=990000026}</td><td>{$work.work_concentration1}</td></tr>
          {if $work.work_concentration2 != ""}<tr><td width="130">{lang_print id=990000027}</td><td>{if $work.work_concentration2 == '1'}{lang_print id=990000029}{elseif $work.work_concentration2 == '2'}{lang_print id=990000030}{elseif $work.work_concentration2 == '3'}{lang_print id=990000031}{/if}</td></tr>{/if}
          {if $work.work_concentration3 != ""}<tr><td width="130">{lang_print id=990000028}</td><td>{if $work.work_concentration3 == '1'}{lang_print id=990000032}{elseif $work.work_concentration3 == '2'}{lang_print id=990000033}{elseif $work.work_concentration3 == '3'}{lang_print id=990000034}{elseif $work.work_concentration3 == '4'}{lang_print id=990000035}{elseif $work.work_concentration3 == '5'}{lang_print id=990000036}{elseif $work.work_concentration3 == '6'}{lang_print id=990000037}{elseif $work.work_concentration3 == '7'}{lang_print id=990000038}{elseif $work.work_concentration3 == '8'}{lang_print id=990000039}{elseif $work.work_concentration3 == '9'}{lang_print id=990000040}{elseif $work.work_concentration3 == '10'}{lang_print id=990000041}{/if}</td></tr>{/if}
{/if}
        </table>
      </td>
    </tr>
  {/foreach}  
  </table>
  
      {* DISPLAY PAGINATION MENU IF APPLICABLE *}
      {if $maxpage > 1}
        <br><br>
        <div class='center'>
        <b>
        {if $p != 1}<a href='search_work.php?{$search_query}task={$task}&p={math equation='p-1' p=$p}&sid={$sid}'>&#171; Предыдущая страница</a>{else}<font class='disabled'>&#171; Предыдущая страница</font>{/if}
        {if $p_start == $p_end}
          &nbsp;|&nbsp; Просмотр результата {$p_start} из {$total_works} &nbsp;|&nbsp; 
        {else}
          &nbsp;|&nbsp; просмотр результатов {$p_start}-{$p_end} из {$total_works} &nbsp;|&nbsp; 
        {/if}
        {if $p != $maxpage}<a href='search_work.php?{$search_query}task={$task}&p={math equation='p+1' p=$p}&sid={$sid}'>Следующая страница &#187;</a>{else}<font class='disabled'>Следующая страница &#187;</font>{/if}
        </b>
        </div>
        <br>
      {/if}  
  
{/if}


{include file='footer.tpl'}
