{if $owner->level_info.level_work_allow != 0 AND $total_works > 0 }

  <div class='profile_headline'>
    Карьера ({$total_works})
  </div>


  {foreach from=$works item=work}
{if $work.work_for == 'school'}
    <h3 class="work_header">{lang_print id=990000049}</h3>
    <table cellpadding='0' cellspacing='0' class="work">
	<tr><td width="130">{lang_print id=990000048}</td><td><a href="/search_work.php?task=browse&sid=1&search[work_name]={$work.work_name}">{$work.work_name}</a> <a href="/search_work.php?task=browse&sid=1&search[work_name]={$work.work_name}&search[work_concentration1]={$work.work_concentration1}">{$work.work_concentration1}</a></td></tr>
      {if $work.work_year != "" && $work.work_degree != ""}<tr><td width="130">{lang_print id=990000043}</td><td>{lang_print id=990000044} {$work.work_year} {lang_print id=990000045} {$work.work_degree}</td></tr>{/if}
      {if $work.work_concentration2 != ""}<tr><td width="130">{lang_print id=990000046}</td><td><a href="/search_work.php?task=browse&sid=1&search[work_name]={$work.work_name}&search[work_concentration1]={$work.work_concentration1}&search[work_concentration2]={$work.work_concentration2}">{$work.work_concentration2}</td></tr>{/if}
      {if $work.work_concentration3 != ""}<tr><td width="130">{lang_print id=990000021}</td><td><a href="/search_work.php?task=browse&sid=1&search[work_concentration3]={$work.work_concentration3}">{$work.work_concentration3}</a></td></tr>{/if}
    </table>
{else}
    <h3 class="work_header">{lang_print id=990000047}</h3>
    <table cellpadding='0' cellspacing='0' class="work">
	<tr><td width="130">{lang_print id=990000022}</td><td><a href="/search_work.php?task=browse&sid=2&search[work_name]={$work.work_name}">{$work.work_name}</a> <a href="/search_work.php?task=browse&sid=2&search[work_name]={$work.work_name}&search[work_year]={$work.work_year}">{$work.work_year}</a></td></tr>
      {if $work.work_degree != ""}<tr><td width="130">{lang_print id=990000025}</td><td><a href="/search_work.php?task=browse&sid=2&search[work_name]={$work.work_name}&search[work_year]={$work.work_year}&search[work_degree]={$work.work_degree}">{$work.work_degree}</a></td></tr>{/if}
      {if $work.work_concentration1 != ""}<tr><td width="130">{lang_print id=990000026}</td><td><a href="/search_work.php?task=browse&sid=2&search[work_name]={$work.work_name}&search[work_year]={$work.work_year}&search[work_degree]={$work.work_degree}&search[work_concentration1]={$work.work_concentration1}">{$work.work_concentration1}</td></tr>{/if}
      {if $work.work_concentration2 != ""}<tr><td width="130">{lang_print id=990000027}</td><td><a href="/search_work.php?task=browse&sid=2&search[work_concentration2]={$work.work_concentration2}">{if $work.work_concentration2 == '1'}{lang_print id=990000029}{elseif $work.work_concentration2 == '2'}{lang_print id=990000030}{elseif $work.work_concentration2 == '3'}{lang_print id=990000031}{/if}</a></td></tr>{/if}
      {if $work.work_concentration3 != ""}<tr><td width="130">{lang_print id=990000028}</td><td><a href="/search_work.php?task=browse&sid=2&search[work_concentration3]={$work.work_concentration3}">{if $work.work_concentration3 == '1'}{lang_print id=990000032}{elseif $work.work_concentration3 == '2'}{lang_print id=990000033}{elseif $work.work_concentration3 == '3'}{lang_print id=990000034}{elseif $work.work_concentration3 == '4'}{lang_print id=990000035}{elseif $work.work_concentration3 == '5'}{lang_print id=990000036}{elseif $work.work_concentration3 == '6'}{lang_print id=990000037}{elseif $work.work_concentration3 == '7'}{lang_print id=990000038}{elseif $work.work_concentration3 == '8'}{lang_print id=990000039}{elseif $work.work_concentration3 == '9'}{lang_print id=990000040}{elseif $work.work_concentration3 == '10'}{lang_print id=990000041}{/if}</a></td></tr>{/if}
    </table>
{/if}
  {/foreach}
 
{/if}
