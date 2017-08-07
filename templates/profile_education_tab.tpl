{if $owner->level_info.level_education_allow != 0 AND $total_educations > 0 }

   <h4>
  <a class="fl_r" href="/user_education.php">{if $owner->user_info.user_username == $user->user_info.user_username}Редактировать{/if}</a>
  <b>Образование</b>
</h4>

    <div class="profile_info">
  {foreach from=$educations item=education}
                       <div class="clear_fix miniblock"><div class="label fl_l">Название учреждения:</div>
  <div class="labeled fl_l">
              {$education.search_education_name}</div> </div>

              <div class="clear_fix miniblock">
  <div class="label fl_l">Выпуск:</div>
                <div class="labeled fl_l">
              {$education.search_education_year}</div></div>

                             {if $education.search_education_for != ""} <div class="clear_fix miniblock">
  <div class="label fl_l">Тип образования:</div>
                <div class="labeled fl_l">
      {$education.search_education_for}  </div>    </div>   {/if}
         {if $education.search_education_degree != ""}
                                         <div class="clear_fix miniblock">
  <div class="label fl_l">Специализация:</div>
                <div class="labeled fl_l">
      {$education.search_education_degree}  </div>  </div>  {/if}

      {if $education.search_education_concentration1 != "" || $education.search_education_concentration2 != "" || $education.search_education_concentration3 != ""}
                <div class="clear_fix miniblock">
  <div class="label fl_l">Дата обучения:</div>
                <div class="labeled fl_l">
     {$education.search_education_concentration1}

{if $education.search_education_concentration2 != ""}, {$education.search_education_concentration2}{/if}
{if $education.search_education_concentration3 != ""}, {$education.search_education_concentration3}{/if}
      {/if}

  {/foreach}

{/if}
         </div></div>    </div>