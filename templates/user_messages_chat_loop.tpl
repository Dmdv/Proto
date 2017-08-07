    {section name=pm_loop loop=$pms}
    {if $prev_user_id == $pms[pm_loop].author->user_info.user_id}
        <hr />
        <div class='author_time'><span>&nbsp; &nbsp;{$datetime->cdate("`$setting.setting_timeformat` `$setting.setting_dateformat`", $datetime->timezone($pms[pm_loop].pm_date, $global_timezone))}</span></div>
        <p>{$pms[pm_loop].pm_body|choptext:75:"<br>"}</p>
        <div style="clear:both;"></div>
    {else}
		{if $prev_user_id != ''}
			</td>
			</tr>
		{/if}
    <tr>
      <td class='block1'><a href='{$url->url_create("profile",$pms[pm_loop].author->user_info.user_username)}' target='_blank'> <img class='photo' src='{$pms[pm_loop].author->user_photo("./images/camera_c.gif", TRUE)}' style="-moz-border-radius: 7px;
-webkit-border-radius: 7px" width='45' height='45' border='0'> </a> {if $smarty.section.pm_loop.last}<a name='bottom'></a>{/if} </td>
    {if $pms[pm_loop].author->user_info.user_id != $user->user_info.user_id}
    <td class='block3_frends'>{else}
    <td class='block3'> {/if}
        <br>
<div class='author_time'><a class='author' href='id{$pms[pm_loop].author->user_info.user_id}' target='_blank'>{$pms[pm_loop].author->user_displayname_short}</a><span>&nbsp;—&nbsp;{$datetime->cdate("`$setting.setting_timeformat` `$setting.setting_dateformat`", $datetime->timezone($pms[pm_loop].pm_date, $global_timezone))}</span></div>
        <p>{$pms[pm_loop].pm_body|choptext:75:"<br>"}</p>
<br>
        <div style="clear:both;"></div>
    {/if}
    {assign var='prev_user_id' value=$pms[pm_loop].author->user_info.user_username}

    {/section}
