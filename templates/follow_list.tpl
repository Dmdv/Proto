{include file='header.tpl'}

<link rel="stylesheet" href="./templates/he_wall.css" />

{literal}

<script type="text/javascript">
window.addEvent('domready', function(){
    $$('.he_browse_result').addEvent('mouseover', function(){
        $(this).addClass('hovered');
    });
    $$('.he_browse_result').addEvent('mouseout', function(){
        $(this).removeClass('hovered');
    });
});
</script>

<style type="text/css">
.he_browse_result{
    background-color: #F6F6F6;
    border: 1px solid white;
    margin: 5px;
    width: 48%;
    float: left;
}
.hovered{
    background-color: #f0f0f0;
    border: 1px solid #e0e0e0;
}
a.he_wall_following_option:hover{
    text-decoration: none;
}
.hws_setting{
    background-repeat: no-repeat;
}
.he_wall_status_sm .he_wall_status_text {
	max-height:40px;
	overflow:hidden
}
</style>

{/literal}

{lang_javascript ids=690706146,690706147}

<div class="error_div"></div>

<div class="no_followers_tmp" style="display: none;">
    <div class="no_result_message">{lang_print id=690706148}</div>
</div>

<div class='page_header'>{lang_sprintf id=690706170 1=$owner->user_displayname}</div>

<div class="following_container">
<table cellpadding='0' cellspacing='0'>
<tr>
    <td class='profile_leftside' width='200'>
        <table cellpadding='0' cellspacing='0' width='100%' style='margin-bottom: 10px;'><tr><td class='profile_photo'><img class='photo' src='{$owner->user_photo("./images/nophoto.gif")}' border='0'></td></tr></table>

        <table class='profile_menu' cellpadding='0' cellspacing='0' width='100%'>
            {if $total_photo_tags != 0}
                <tr><td class='profile_menu1' nowrap='nowrap'><a href='profile_photos.php?user={$owner->user_info.user_username}'><img src='./images/icons/photos16.gif' class='icon' border='0'>{lang_sprintf id=1204 1=$owner->user_displayname_short 2=$total_photo_tags}</a></td></tr>
                {assign var='showmenu' value='1'}
            {/if}

            {if $owner->user_info.user_id != $user->user_info.user_id}
                {if ($user->level_info.level_message_allow == 2 || ($user->level_info.level_message_allow == 1 && $is_friend)) && $owner->level_info.level_message_allow != 0}
                    <tr><td class='profile_menu1' nowrap='nowrap'><a href="javascript:TB_show('{lang_print id=784}', 'user_messages_new.php?to_user={$owner->user_displayname|escape:url}&to_id={$owner->user_info.user_username}&TB_iframe=true&height=400&width=450', '', './images/trans.gif');"><img src='./images/icons/sendmessage16.gif' class='icon' border='0'>{lang_print id=839}</a></td></tr>
                {/if}
            {/if}
      </table>
    </td>

    <td valign="top" style="padding-left:18px;">
        <div class="current_follow_list" style="float: left;">
            <div class="following_list" id="user_follower_list">
                <div class="he_wall_header">{lang_print id=690706172}</div>
                
                  {* DISPLAY BROWSE RESULTS IN THUMBNAIL FORM *}
                {foreach item=follower from=$followers}
					{assign var=user_id value=$follower->user_info.user_id}
				    <div class='he_browse_result'>
				        <table width="100%">
				            <tr>
				                <td rowspan="2" width="70" height="78" valign="middle">
				                    <a class="he_profile_link" href='{$url->url_create('profile',$follower->user_info.user_username)}'>
				                        <img src='{$follower->user_photo('./images/nophoto.gif', TRUE)}' class='photo' style='display: block; margin-left: auto; margin-right: auto;' width='60' height='60' border='0' alt="{lang_sprintf id=509 1=$follower->user_displayname_short}">
				                    </a>
				                </td>
				                <td {if $follower->user_info.user_status == ""}height=78{/if}>
				                    <a class="he_profile_link" href='{$url->url_create('profile',$follower->user_info.user_username)}'>
				                        {$follower->user_displayname|truncate:20:"...":true}
				                    </a>
				                </td>
				                <td rowspan="2" width="30">
				                {if $user->user_exists && $user->user_info.user_id != $follower->user_info.user_id}
				                    <div class="he_wall_following_options" id="he_following_status_{$follower->user_info.user_id}">
				                        <a class="he_wall_following_option" href='javascript://' onClick='he_wall_follow_manage2({$user->user_info.user_id}, {$follower->user_info.user_id}, "{if $tasks[$user_id]}unfollow{else}follow{/if}");'>
				                            {if $tasks[$user_id]}
					                            <img src='./images/icons/he_wall_remove_from_list_over.png' title="{lang_print id=690706146}" class='icon' border='0' />
				                            {else}
					                            <img src='./images/icons/he_wall_add_following_over.png'  title="{lang_print id=690706147}" class='icon' border='0' />
				                            {/if}
				                        </a>
				                    </div>
				                 {/if}
				                </td>
				            </tr>
				            {if $follower->user_info.user_status != ""}
				            <tr>
				                <td class="he_wall_status_sm" valign="middle">
			                        <div class="he_wall_status_text">{$follower->user_info.user_status}</div>
				                </td>
				            </tr>
				            {/if}
				        </table>
				    </div>               
                {foreachelse}
                <div class="he_no_result">{lang_print id='690706173'}</div>
                {/foreach}
            </div>
            {if $total_followers > 10}
            <div style="width: 640px">
                 <div class="he_show_more_btn_cont">
                    <a id="he_show_more_btn" href="javascript://" onclick="he_wall_following.more_follow_list({$owner->user_info.user_id}, 'followers', this);">{lang_print id=690706153}</a>
                </div>
            </div>
            {/if}
        </div>

        <div class="current_follow_list" style="float: left;">
            <div class="following_list" id="user_following_list">
                <div class="he_wall_header">{lang_print id=690706171}</div>
                {foreach item=follower from=$follows}
					{assign var=user_id value=$follower->user_info.user_id}
				    <div class='he_browse_result'>
				        <table width="100%">
				            <tr>
				                <td rowspan="2" width="70" height="78" valign="middle">
				                    <a class="he_profile_link" href='{$url->url_create('profile',$follower->user_info.user_username)}'>
				                        <img src='{$follower->user_photo('./images/nophoto.gif', TRUE)}' class='photo' style='display: block; margin-left: auto; margin-right: auto;' width='60' height='60' border='0' alt="{lang_sprintf id=509 1=$follower->user_displayname_short}">
				                    </a>
				                </td>
				                <td {if $follower->user_info.user_status == ""}height=78{/if}>
				                    <a class="he_profile_link" href='{$url->url_create('profile',$follower->user_info.user_username)}'>
				                        {$follower->user_displayname|truncate:20:"...":true}
				                    </a>
				                </td>
				                <td rowspan="2" width="30">
				                {if $user->user_exists && $user->user_info.user_id != $follower->user_info.user_id}
				                    <div class="he_wall_following_options" id="he_following_status_{$follower->user_info.user_id}">
				                        <a class="he_wall_following_option" href='javascript://' onClick='he_wall_follow_manage2({$user->user_info.user_id}, {$follower->user_info.user_id}, "{if $tasks[$user_id]}unfollow{else}follow{/if}");'>
				                            {if $tasks[$user_id]}
					                            <img src='./images/icons/he_wall_remove_from_list_over.png' title="{lang_print id=690706146}" class='icon' border='0' />
				                            {else}
					                            <img src='./images/icons/he_wall_add_following_over.png'  title="{lang_print id=690706147}" class='icon' border='0' />
				                            {/if}
				                        </a>
				                    </div>
				                 {/if}
				                </td>
				            </tr>
				            {if $follower->user_info.user_status != ""}
				            <tr>
				                <td class="he_wall_status_sm" valign="middle">
			                        <div class="he_wall_status_text">{$follower->user_info.user_status}</div>
				                </td>
				            </tr>
				            {/if}
				        </table>
				    </div> 
                {foreachelse}
                    <div class="he_no_result">{lang_print id='690706174'}</div>
                {/foreach}
            </div>
            {if $total_followings > 10}
            <div style="width: 640px">
                 <div class="he_show_more_btn_cont">
                    <a id="he_show_more_btn" href="javascript://" onclick="he_wall_following.more_follow_list({$owner->user_info.user_id}, 'followings', this);">{lang_print id=690706153}</a>
                </div>
            </div>
            {/if}
        </div>
        
    </td>
</tr>
</table>
</div>

<div style="display: none;">
    <div class="he_browse_result" id="follow_user_tpl">
        <table width="100%">
            <tr>
                <td rowspan="2" width="70" height="78" valign="middle">
                    <a class="he_profile_link" href=""></a>
                </td>
                <td>
                    <a class="he_profile_link he_profile_username" href=""></a>
                </td>
                <td rowspan="2" width="30">
                    <div class="he_wall_following_options display_none">
                        <a class="he_wall_following_option" href="javascript://"></a>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="he_wall_status_sm" valign="middle">
					<div class="he_wall_status_text"></div>
                </td>
            </tr>
        </table>
    </div> 
</div>

{include file='footer.tpl'}