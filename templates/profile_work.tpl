{if $owner->level_info.level_work_allow != 0 AND ($total_works > 0 OR $owner->user_info.user_username == $user->user_info.user_username) }
  <table cellpadding='0' cellspacing='0' width='100%' style='margin-bottom: 10px;'>
  <tr><td class='header'>
    Карьера ({$total_works})
  </td></tr>
  <tr>
  <td class='profile'>
  {foreach from=$works item=work}
    <h3 class="work_header">{$work.search_work_name} {$work.search_work_year}</h3>
    <table cellpadding='0' cellspacing='0' class="work">
      {if $work.search_work_for != ""}<tr><td width="80">Участвовал в:</td><td>{$work.search_work_for}</td></tr>{/if}
      {if $work.search_work_degree != ""}<tr><td width="80">Степень:</td><td>{$work.search_work_degree}</td></tr>{/if}
      {if $work.search_work_concentration1 != "" || $work.search_work_concentration2 != "" || $work.search_work_concentration3 != ""}
      <tr><td width="80">Концентрация:</td><td>{$work.search_work_concentration1}
{if $work.search_work_concentration2 != ""}, {$work.search_work_concentration2}{/if}
{if $work.search_work_concentration3 != ""}, {$work.search_work_concentration3}{/if}
      </td></tr>{/if}
    </table>
  {/foreach}
  {if $owner->user_info.user_username == $user->user_info.user_username}
    <div><img src='./images/icons/work16.gif' border='0' class='icon'><a href="user_work.php">Карьера</a></div>
    {/if}
  </td>
  </tr>
  </table>
{/if}  