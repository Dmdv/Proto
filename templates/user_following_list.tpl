{include file='header.tpl'}

{literal}
<script type="text/javascript">
window.addEvent('domready', function(){
    he_wall_following.list_id = {/literal}{$list_id}{literal};
    he_wall_following.list_name = {/literal}'{$list_name}'{literal};
    he_wall_following.start = {/literal}{$followers_per_page}{literal};
    he_wall_following.total_followers = {/literal}{$total_followers}{literal};
    he_wall_following.displayed_followers = {/literal}{$followers_per_page}{literal}; 
    he_wall_following.limit = {/literal}{$followers_per_page}{literal};
    he_wall_following.construct();
});
</script>
{/literal}
<br />

{lang_javascript ids='690706155,690706156'}

<div class="error_div"></div>

<div class="no_followers_tmp" style="display: none;">
    <div class="no_result_message">{lang_print id=690706148}</div>
</div>

{* HIDDEN DIV TO DISPLAY CONFIRMATION MESSAGE *}
<div style='display: none;' id='confirmdelete'>
    <div style='margin-top: 10px;'>
        {lang_print id=690706150} 
    </div>
    <br />
    <input type='button' class='button' value='{lang_print id=175}' onClick='parent.TB_remove(); parent.he_wall_following.delete_list();'> 
    <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();'>
</div>

<div class="following_container">
<table cellpadding='5' cellspacing='0'>
<tr>
    <td valign='top' width="640">
        {lang_print id=690706151}
    </td>
    <td valign='top'>
        {lang_print id=690706152}
    </td>
</tr>
<tr>
    <td valign="top">
        <div class="current_follow_list" style="float: left;">
            <div class="following_list">
                {include file='he_wall_following_list.tpl'}
            </div>
                <div class="wall_user_follow_list">
                    <div class="he_show_more_btn_cont">
                   	<a id="he_show_more_btn" href="javascript://" >{lang_print id=690706153}</a>
                     </div>
            </div>
        </div>
    </td>
    <td valign="top" align="left">
        <div class="other_follow_lists">
            <div class="following_other_lists">
                {include file='he_wall_following_lists.tpl'}
            </div>
        </div>
    </td>
</tr>
</table>
</div>

{include file='footer.tpl'}