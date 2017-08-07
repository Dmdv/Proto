{include file='admin_header.tpl'}

<h2>{lang_print id=9000701}</h2>
{lang_print id=9000702}

<br><br>

{if $is_success != 0}
	<div class='success'><img src='../images/success.gif' class='icon' border='0'> {$is_success_count} {lang_print id=$is_success}</div>
{/if}	

<table cellpadding='0' cellspacing='0' width='600'>
  <tr>
    <td colspan="2" class='header'>
      {lang_print id=9000710}
    </td>
  </tr>
  <tr>
    <td width='300' class='setting1'>
	{lang_print id=9000709} : {$total_users}
	</td>
    <td width='300' class='setting1'>
	{lang_print id=9000710} : {$members_online}
	</td>
	</tr>
	</table>
<br/>
<table cellpadding='0' cellspacing='0' width='600'>
  <tr>
    <td class='header'>
      {lang_print id=9000703}
    </td>
  </tr>
  <tr>
    <td class='setting2'>
      <form action='admin_autoonline.php' name='autoonline_settings' method='POST'>
      <table cellpadding='0' cellspacing='0' border='0' width="100%" >
        <tr>
          <td class='form1' width='50%'>
            {lang_print id=9000704}: <span style="color: red; font-weight: bold; margin-left: 3px;"></span>
          </td>
          <td class='setting2' width='50%'>
            <input type="checkbox" name="autoonline_enabled" value="1" {if $autoonline_enabled}checked="checked"{/if}>
          </td>
        </tr>
      <tr>
          <td class='form1' width='50%'>
            {lang_print id=9000707}: <span style="color: red; font-weight: bold; margin-left: 3px;"></span>
          </td>
          <td class='setting2' width='50%'>
            				<select class='text' name='user_percent'>
					{section name=user_percent loop=100 start=10 step=10}
						<option value="{$smarty.section.user_percent.index}" {if $user_percent == $smarty.section.user_percent.index}selected="selected"{/if}>{$smarty.section.user_percent.index} - {$smarty.section.user_percent.index+10} %</option>
					{/section}
				</select>
          </td>	
		  </tr>
      <tr>
          <td class='form1' width='50%'>
            {lang_print id=9000711}: <span style="color: red; font-weight: bold; margin-left: 3px;"></span>
          </td>
          <td class='setting2' width='50%'>
            				<select class='text' name='user_online'>
					{section name=user_online loop=65 start=5 step=5}
						<option value="{$smarty.section.user_online.index}" {if $user_online == $smarty.section.user_online.index}selected="selected"{/if}>{$smarty.section.user_online.index} min</option>
					{/section}
				</select>
          </td>	
		  </tr>	
		<tr>
          <td class='form1' width='50%'>
           {lang_print id=9000713}: 
          </td>
          <td class='setting2' width='50%'>
            <input type="text" name="password" value={$password}> 
          </td>
        </tr>			  	  
        <tr>
          <td class='form1' width='50%'>
            {lang_print id=9000712}: <span style="color: red; font-weight: bold; margin-left: 3px;"></span>
          </td>
          <td class='setting2' width='50%'>
            <input type="checkbox" name="with_pictures" value="1" {if $with_pictures}checked="checked"{/if}>
          </td>
        </tr>	
        <tr>
          <td class='form1' width='50%'>
            {lang_print id=9000708}: <span style="color: red; font-weight: bold; margin-left: 3px;"></span>
          </td>
          <td class='setting2' width='50%'>
            <input type="checkbox" name="update_photo" value="1" {if $update_photo}checked="checked"{/if}>
          </td>
        </tr>	
       <tr>
          <td class='form2' colspan="2">
            <input type='hidden' name='task' value='autoonline_settings'>
      		<input type='submit' class='button' value='{lang_print id=9000705}'>&nbsp;
          </td>
        </tr>
      </table>
      </form>
</td></tr></table>

{include file='admin_footer.tpl'}