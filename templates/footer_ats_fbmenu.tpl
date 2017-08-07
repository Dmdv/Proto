{if !$bNotShowMenu}
<script type="text/javascript" language="JavaScript">
    jQuery.noConflict();
{literal}    
    jQuery(document).ready(function(){
        jQuery('.ats_fbmenu_easydrag').easydrag();
    });

    if (($ !== undefined) && ($.fn !== undefined) && ($.fn.jquery !== undefined))
    {
        jQuery.extend(jQuery, $).fn.extend($.fn);
    }
{/literal}
    var iAtsFbmenuTimeOffset = parseInt({$iServerTime} - new Date().valueOf() / 1000);
    var aAtsFbmenuMessagesStack = [];
    var aAtsFbmenuSeenMessageIds = [];
{literal}
    var aAtsFbmenuLastChatUsers = {};
    var aAtsFbmenuLastChatUserIds = {};
{/literal}
    var sAtsFbmenuUserName = '{$user->user_info.user_username}';
    var sAtsFbmenuTimeFormat = '{$sChatTimeFormat}';
    var bAtsFbmenuIsOnline = {if $bIsOnline}true{else}false{/if};
    var bAtsFbmenuPageReload = false;
    var iAtsFbmenuChatShow = 0;
    var aAtsFbmenuOpenMenus = new Array();
    var aAtsFbmenuActiveChats = new Array();
    var aAtsFbmenuVisibleChats = new Array();
    var aAtsFbmenuPopups = new Array();
    var sPostUrl = 'ats_fbmenu_js.php';
    var iAtsFbmenuMaxVisibleChats = {$iMaxVisibleChats};
    var iAtsFbmenuRefreshTime = {$iRefreshTime};
    var bAtsFbmenuAnimation = {if $aUserStatus.user_enable_animation}true{else}false{/if};
    var bAtsFbmenuSound = {if $aUserStatus.user_enable_sound}true{else}false{/if};
    var bAtsFbmenuSoundIsAvailable = false;

    var iAtsFbmenuVideoChatUserId = 0;
    var sAtsFbmenuSiteUrl = '{$sSiteUrl}';
    var sAtsFbmenuVideoHost = '{$sVideoHost}';
    var sAtsFbmenuVideoPort = '{$sVideoPort}';
    var bAtsFbmenuVideoEnabled = {if $bVideoChatEnabled}true{else}false{/if};
    var sAtsFbmenuFlashChatHost = '{$sFlashChatHost}';
    var sAtsFbmenuFlashChatPort = '{$sFlashChatPort}';
    var bAtsFbmenuFlashChatEnabled = {if $bFlashChatEnabled}true{else}false{/if};
    var sAtsFbmenuFlashChatBg1Color = '{$aFlashChatStyle.bg1_color}';
    var sAtsFbmenuFlashChatBg2Color = '{$aFlashChatStyle.bg2_color}';
    var bAtsFbmenuCurrentLogin = '{$sCurrentLogin}';
    var bAtsFbmenuCurrentId = '{$sCurrentId}';
    var sAtsFbmenuUserThemeUrl = '{$sUserThemeUrl}';
    
    var bAtsFbmenuVideoPopup =  {if $aUserStatus.user_enable_video_popup}true{else}false{/if};
    
    var oAtsFbmenuLang = 
    {ldelim}
        connect_link: '{lang_print id='50010'}{* connect *}',
        disconnect_link: '{lang_print id='50011'}{* disconnect *}',
        you_are_online: '{lang_print id='50012'}{* you are online ~ *}',
        you_are_offline: '{lang_print id='50013'}{* you are offline ~ *}'
    {rdelim};
</script>

<script type="text/javascript" language="JavaScript">
    function atsFbmenuEnableSound()
    {ldelim}
        bAtsFbmenuSoundIsAvailable = true;
    {rdelim}
</script>
<script type="text/javascript" language="JavaScript">
{literal}
    if (AC_FL_RunContent == 0) {
        alert("This page requires AC_RunActiveContent.js.");
    } else {
{/literal}

	document.write(AC_FL_RunContent(
            'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
            'width', '1',
            'height', '1',
            'src', '{$sSiteUrl}fbmenu/fbmenu_flash/default?onInit=atsFbmenuEnableSound',
            'quality', 'high',
            'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
            'align', 'middle',
            'play', 'true',
            'loop', 'true',
            'scale', 'showall',
            'wmode', 'window',
            'devicefont', 'false',
            'id', 'ats_fbmenu_ding',
            'bgcolor', '#ffffff',
            'name', 'ats_fbmenu_ding',
            'menu', 'true',
            'allowFullScreen', 'false',
            'style', 'position: absolute; visibility: hidden;',
            'allowScriptAccess','always',
            'movie', '{$sSiteUrl}fbmenu/fbmenu_flash/default?onInit=atsFbmenuEnableSound',
            'salign', ''
        ));
{literal}
    }
{/literal}
</script>

<noscript>
    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="1" height="1" id="ats_fbmenu_ding" align="middle" style="position: absolute; visibility: hidden;">
    <param name="allowScriptAccess" value="always" />
    <param name="allowFullScreen" value="false" />
    <param name="movie" value="{$sSiteUrl}fbmenu/fbmenu_flash/default.swf?onInit=atsFbmenuEnableSound" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />  
     <embed src="{$sSiteUrl}fbmenu/fbmenu_flash/default.swf?onInit=atsFbmenuEnableSound" quality="high" bgcolor="#ffffff" width="550" height="400" name="ats_fbmenu_ding" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
    </object>
</noscript>

{if $bVideoChatEnabled}
<div id="ats_fbmenu_video_chat_box" class="ats_fbmenu_easydrag" style="display:none;top:0;">
    <div id="ats_fbmenu_video_chat_container" class="ats_fbmenu_easydrag_left"></div>
    <div class="ats_fbmenu_easydrag_right" onclick="atsFbmenuCloseVideoChat(iAtsFbmenuVideoChatUserId);"></div>
</div>
{/if}
<div id="ats_fbmenu_menu" class="ats_fbmenu_menu_bottom" >
<div style="position: relative; width: 100%; height: 39px;">
	<iframe frameborder="0" scrolling="no" style="position: absolute; top: 0px; left: 0px; z-index: -1; width: 100%; background: none; border: 0px; height: 39px;" ></iframe>
    <table class="ats_fbmenu_table" cellspacing="0" cellpadding="0">
        <tr>
            <td style="width: 15px;">
                &nbsp;
            </td>
            <td id="ats_fbmenu_td_menu" class="ats_fbmenu_table_menu">
                <b class="ats_fbmenu_color_dark">{lang_print id='50001'}{* Menu *}</b>
            </td>
            <td id="ats_fbmenu_td_advertisement" class="ats_fbmenu_table_advertisement">{$sAdvertisement|truncate:140}{* @todo *}</td>
            <td class="ats_fbmenu_table_chat_dialog">
                <div id="ats_fbmenu_scroller_right" ></div>
                <div id="ats_fbmenu_td_chat_dialog" style="width:{$iChatButtonBarWidth|default:468}px">
                    <div id="ats_fbmenu_chat_button_container" class="ats_fbmenu_td_chat_dialog_items"></div>
                </div>
                <div id="ats_fbmenu_scroller_left" ></div>
            </td>
            <td id="ats_fbmenu_td_online_friends" class="ats_fbmenu_table_online_friends">
                <b class="ats_fbmenu_color_dark">{lang_print id='50002'}{* Online Friends *}</b>
                <b id="ats_fbmenu_friends_count" class="ats_fbmenu_color_lighten"></b>
            </td>
            <td id="ats_fbmenu_separator_left" class="ats_fbmenu_status_one"></td>
            <td id="ats_fbmenu_td_chat" class="ats_fbmenu_table_chat">
                <b class="ats_fbmenu_color_dark">{lang_print id='50003'}{* Status *}</b>
            </td>
            <td style="width: 15px;">
                &nbsp;
            </td>
        </tr>
    </table>
    <div id="ats_fbmenu_bars_div">
        <div id="ats_fbmenu_message_popup"></div>
        <div id="ats_fb_menu_bars_div_back">
            <div></div>
        </div>
        <div id="ats_fbmenu_menubar_online_friends" style="display: none;">
		<div style="position: relative; width: 100%;">
		<iframe frameborder="0" width="100%" height="210" style="background: none; position: absolute; top: 0px; left: 0px; z-index: -1;" ></iframe>
            <div class="ats_fbmenu_menu_header"></div>
            <div id="ats_fbmenu_menu_online_friends" class="ats_fbmenu_menu_body">
                <div>
                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                        <tr>
                            <td class="ats_fb_menu_head_title_online_friends">{lang_print id='50002'}{* Online Friends *}</td>
                            <td width="35">
                                <div id="ats_fbmenu_collapse_online_friends" onmouseout="this.style.backgroundPosition = '-16px -37px'" onmouseover="this.style.backgroundPosition = '1px -37px'" class="ats_fbmenu_close" style="background-position: -16px -37px;"></div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="ats_fbmenu_inner" id="ats_fbmenu_menu_online_friends_inner"></div>
            </div>
            <div class="ats_fbmenu_menu_bottom_online_friends"></div>
        </div>
		</div>
        <div id="ats_fbmenu_chatbar_div" style="display: none;">
		<div style="position: relative; width: 100%;">
		<iframe frameborder="0" width="100%" height="210" style="background: none; position: absolute; top: 0px; left: 0px; z-index: -1;" ></iframe>
            <div class="ats_fbmenu_menu_header"></div>
            <div id="ats_fbmenu_chatbar_list" class="ats_fbmenu_menu_body">
                <div class="ats_fbmenu_div_header">
                    <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                        <tr>
                            <td class="ats_fb_menu_head_title_status">{lang_print id='50003'}{* Status *}</td>
                            <td width="35">
                                <div id="ats_fbmenu_collapse_status" onmouseout="this.style.backgroundPosition = '-16px -37px'" onmouseover="this.style.backgroundPosition = '1px -37px'" class="ats_fbmenu_close" style="background-position: -16px -37px;"></div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="ats_fbmenu_inner" id="ats_fbmenu_menu_chat_inner_div">{$aUserStatus.user_status}
                    <div id="newupdates_popup2" style="display:none;">
	                    <br />
	                    {if $notifys[0]} {* SE 3.10 *} 
	                       {section name=notify_loop loop=$notifys[0]}
					           <div style='font-weight: bold; padding-top: 5px;' id='notify_{$notifys[0][notify_loop].notifytype_id}_{$notifys[0][notify_loop].notify_grouped}'>
					           <a href='javascript:void(0);' onClick="deleteNotifySend('{$notifys[0][notify_loop].notifytype_id}', '{$notifys[0][notify_loop].notify_grouped}');">X</a> <img src='./images/icons/{$notifys[0][notify_loop].notify_icon}' border='0' style='border: none; margin: 0px 5px 0px 5px; display: inline; vertical-align: middle;' class='icon'><a href="{$notifys[0][notify_loop].notify_url}">{lang_sprintf id=$notifys[0][notify_loop].notify_desc 1=$notifys[0][notify_loop].notify_total 2=$notifys[0][notify_loop].notify_text[0]}</a></div>
					       {/section}
					    {elseif $notifys.notifys} {* SE 3.14+ *}
					       {section name=notify_loop loop=$notifys.notifys}
                               <div style='font-weight: bold; padding-top: 5px;' id='notify_{$notifys.notifys[notify_loop].notifytype_id}_{$notifys.notifys[notify_loop].notify_grouped}'>
                               <a href='javascript:void(0);' onClick="deleteNotifySend('{$notifys.notifys[notify_loop].notifytype_id}', '{$notifys.notifys[notify_loop].notify_grouped}');">X</a> <img src='./images/icons/{$notifys.notifys[notify_loop].notify_icon}' border='0' style='border: none; margin: 0px 5px 0px 5px; display: inline; vertical-align: middle;' class='icon'><a href="{$notifys.notifys[notify_loop].notify_url}">{lang_sprintf id=$notifys.notifys[notify_loop].notify_desc 1=$notifys.notifys[notify_loop].notify_total 2=$notifys.notifys[notify_loop].notify_text[0]}</a></div>
                           {/section}
					    {/if}
					</div>
                </div>
                <div id="ats_fbmenu_chatbar_settings" style="text-align: right; padding: 8px 18px 6px 0px; position: relative;">
					<div>
						<span id="ats_fbmenu_up_status" class="ats_fbmenu_up_status"></span><span id="ats_fbmenu_settings" class="ats_fbmenu_up_status" style="cursor: pointer; text-decoration: underline; width: 60px;">{lang_print id='655'}{* Settings *}</span>
					</div>
					<div id="ats_fbmenu_settings_slide">
                        <table cellspacing="0" cellpadding="0" border="0" style="width: 100%; margin-top: 10px;">
                            <tr>
                                <td class="ats_fb_menu_head_title_settings" style="padding-left: 36px;">{lang_print id='50004'}{* Settings *}</td>
                                <td width="35">
                                    <div id="ats_fbmenu_collapse_settings" onmouseout="this.style.backgroundPosition = '-16px -37px'" onmouseover="this.style.backgroundPosition = '1px -37px'" class="ats_fbmenu_close" style="background-position: -16px -37px;"></div>
                                </td>
                            </tr>
                        </table>
                        <div class="ats_fbmenu_select_color_div">{lang_print id='50005'}{* Select color scheme *}:</div>
                        <div class="ats_fbmenu_slide_inner">
                            <div class="ats_fb_menu_color_change">
                            {foreach from=$aAvailableThemes item=sThemeTitle}
                                {if $global_page == 'profile'}
                                   <a href="{$url->url_create($global_page,$owner->user_info.user_username)}&theme={$sThemeTitle}">
                                {else}
                                    <a href="{$global_page}.php?theme={$sThemeTitle}">
                                {/if}  
                                    <img src="fbmenu/fbmenu_theme/{$sThemeTitle}/theme_icon.png" border="0" />
                                </a>
                            {/foreach}{* @todo *}
                            </div>
                            <br />
                            <div class="ats_fbmenu_slide_separator"></div>
                            <table width="100%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="ats_fbmenu_enable_animation">
                                    <label for="ats_fbmenu_animation_checkbox">{lang_print id='50006'}{* Enable animation *}:&nbsp;</label>
                                </td>
                                <td align="right" style="padding-right: 20px; padding-top: 10px;">
                                    <input{if $aUserStatus.user_enable_animation} checked="checked"{/if} class="checkbox" id="ats_fbmenu_animation_checkbox" onclick="bAtsFbmenuAnimation = this.checked ? 1 : 0;atsFbmenuEnableAnimation()" type="checkbox" name="animation_checkbox" value="1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="ats_fbmenu_enable_animation">
                                    <label for="ats_fbmenu_sounds_checkbox">{lang_print id='50007'}{* Enable sounds *}:&nbsp;</label>
                                </td>
                                <td align="right" style="padding-right: 20px; padding-top: 10px;">
                                    <input{if $aUserStatus.user_enable_sound} checked="checked"{/if} class="checkbox" id="ats_fbmenu_sounds_checkbox" onclick="bAtsFbmenuSound = this.checked ? 1 : 0; atsFbmenuEnableSoundSubmit()" type="checkbox" name="sound_checkbox" value="1" />
                                </td>
                            </tr>
                            {if $bVideoChatEnabled}
                            <tr>
                                <td class="ats_fbmenu_enable_animation">
                                    <label for="enable_video_popup">{lang_print id=50037}{* Enable video popup *}:&nbsp;</label>
                                </td>
                                <td align="right" style="padding-right: 20px; padding-top: 10px;">
                                    <input{if $aUserStatus.user_enable_video_popup} checked="checked"{/if} class="checkbox" id="ats_fbmenu_video_popup_checkbox" onclick="bAtsFbmenuVideoPopup = this.checked ? 1 : 0; atsFbmenuEnableVideoPopup(bAtsFbmenuVideoPopup)" type="checkbox" name="video_popup_checkbox" value="1" />
                                </td>
                            </tr>
                            {/if}
                            </table>
                            <br />
                            <div class="ats_fbmenu_slide_separator"></div>
                            <div class="ats_fbmenu_order_div">{lang_print id='50008'}{* Order menu items *}</div>
                            <div class="ats_fb_menu_link_table_div">
                                <form action="" method="post" id="fbmenu_save">
                                <input type="hidden" name="task" value="save_menu" />
                                <table class="ats_fb_menu_link_table" style="width: 95%;" border="0" bordercolor="#000" id="fbmenu_items" cellspacing="2" cellpadding="2">
                                {foreach from=$aMenuItems key=iKey item='aMenu'}
                                    {assign var='iPos' value=$iKey+1}
                                    <tr id="item{$iKey}">
                                        <td class="ats_fb_menu_link_table_padding">{$aMenu.menuitem_title}</td>
                                        <td style="width: 30px;" align="center"><input type="hidden" name="item{$iKey}_enabled" value="0" /><input onchange="return saveMenus();" type="checkbox" class="checkbox" name="item{$iKey}_enabled" value="1" {if $aMenu.menuitem_enabled} checked="checked"{/if} /></td>
                                    </tr>
                                {/foreach}{* @todo *}
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="ats_fbmenu_chatbar_online">
                    <div id="ats_fbmenu_chatbar_online_inner" class="ats_fb_menu_online_status"></div>
                </div>
                <div id="ats_fbmenu_input_status_bg" class="ats_fbmenu_status_chat_bg">
                    <input type="text" maxlength="{$iMaxStatusLength}" value="{if $aUserStatus.user_status}{$aUserStatus.user_status}{else}{lang_print id='50009'}{* Type your status here *}{/if}" class="ats_fbmenu_status_chat" onfocus="if (this.value == '{lang_print id='50009'}{* Type your status here *}') this.value = ''; jQuery('#ats_fbmenu_input_status_bg').css('background-position', '15px -27px');" onblur="if (this.value == '') this.value ='{lang_print id='50009'}{* Type your status here *}'; jQuery('#ats_fbmenu_input_status_bg').css('background-position', '15px 1px');atsFbmenuSubmitStatus(this.value);" />
                    <input type="button" class="ats_fbmenu_input_status_submit" value="" />
                </div>
            </div>
            <div class="ats_fbmenu_menu_bottom_chatbar_div"></div>
        </div>
		</div>
        <div id="ats_fbmenu_menubar_list" style="display: none;">
		<div style="position: relative; width: 100%;">
		<iframe frameborder="0" width="100%" height="1000" style="background: none; position: absolute; top: 0px; left: 0px; z-index: -1;" ></iframe>
            <div class="ats_fbmenu_menu_header"></div>
            <div class="ats_fbmenu_menu_body_list_repeater">
                <div id="ats_fbmenu_chatbar_list" class="ats_fbmenu_menu_body_list">
                <table cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
                    <tr>
                        <td class="ats_fb_menu_head_title_menu">{lang_print id='50001'}{* Menu *}</td>
                        <td width="30">
                            <div id="ats_fbmenu_collapse_menu" onmouseout="this.style.backgroundPosition = '-16px -37px'" onmouseover="this.style.backgroundPosition = '1px -37px'" class="ats_fbmenu_close" style="background-position: -16px -37px; margin: 0px 0px 7px 0px;"></div>
                        </td>
                    </tr>
                </table>
                {foreach from=$aMenuItems item=aMenuItem}
                {if $aMenuItem.menuitem_enabled} 
                <a class="ats_fb_menu_link_a" href="{$aMenuItem.menuitem_url}">
                    <div class="ats_fbmenu_links" onmouseover="this.className='ats_fbmenu_links_active';" onmouseout="this.className='ats_fbmenu_links';">
                        <div class="ats_fbmenu_links_body">
                            <b>{$aMenuItem.menuitem_title}</b>
                        </div>
                        <div class="ats_fbmenu_links_right"></div>
                    </div>
                </a>
                {/if}
                {/foreach}
                </div>
            </div>
            <div class="ats_fbmenu_menu_bottom_menu_list"></div>
        </div>
		</div>
        <div id="ats_fbmenu_chat_container" ></div>
    </div>
</div>
</div>
<script type="text/javascript" src="fbmenu/fbmenu_js/ats_fbmenu.js"></script>
<script type="text/javascript" language="javascript">
<!--

    {foreach from=$aActiveChats key=iUserId item=aChat}
        atsFbmenuStartChat({$iUserId}, "{$aChat.user_username}", "{$aChat.avatar}", "{$aChat.status}", "{$aChat.status_modified}", "{$aChat.profile_url}", {$aChat.online}, 0,"{$aChat.sUserSessionId}","{$aChat.sMySessionId}");
    {/foreach}
    
    
    {if $bIsOnline}
        atsFbmenuGoOnline();
    {else}
        atsFbmenuGoOffline();
    {/if}
   
    {if $aOpenMenus}
        window.addEvent('load',function(){ldelim}
        	{foreach from=$aOpenMenus item=sMenu}
        		{$sMenu}
        	{/foreach} 
        {rdelim});
    {/if}
    
       atsFbmenuGetMenuChanges(aAtsFbmenuOpenMenus, aAtsFbmenuMessagesStack, aAtsFbmenuSeenMessageIds, 1);
    {literal}
        nTimer = setInterval(function(pe) {
            atsFbmenuGetMenuChanges(aAtsFbmenuOpenMenus, aAtsFbmenuMessagesStack, aAtsFbmenuSeenMessageIds, 0, aAtsFbmenuLastChatUserIds);
            aAtsFbmenuMessagesStack = [];
            aAtsFbmenuSeenMessageIds = [];
        }, iAtsFbmenuRefreshTime);
        bAtsFbmenuPageReload = false;
        
        if (iAtsFbmenuChatShow)
        {
            jQuery(document).ready(function()
            {
                var iScrollerPage = aAtsFbmenuActiveChats.indexOf(iAtsFbmenuChatShow);
                jQuery('#ats_fbmenu_td_chat_dialog').scrollable().setPage(iScrollerPage - iAtsFbmenuMaxVisibleChats + 1);
                atsFbmenuShowChat(iAtsFbmenuChatShow);
            });
        }
        window.addEvent('load',function(){
        {/literal}
	    {if $setting.setting_version < 3.13}{* check notifyes *}
		    if(se_show_newupdates.get('total') < {$notifys[1]}) {ldelim}
		        $('newupdates_popup2').style.display='block';
		    {rdelim}
	    {else}
		    var minimizedCount = parseInt(SocialEngine.Viewer.user_notify_cookie.get('total'));
		    if( !$type(minimizedCount) ) minimizedCount = 0;
		
		    if( minimizedCount < SocialEngine.Viewer.user_notify_count )
		    {ldelim}
		      $('newupdates_popup2').style.display = 'block';
		    {rdelim}
	    {/if}
	{rdelim});
-->
</script>

{/if}


