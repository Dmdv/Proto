{include file="header_global.tpl"}

<script type="text/javascript" src="./include/js/he_contacts.js"></script>
<script type="text/javascript" src="./include/js/he_functions.js"></script>

<script type="text/javascript">
window.addEvent('domready', function(){ldelim}
    var tmp = function() {ldelim}{$callback_js}();{rdelim};
    he_contacts.init('{$callback_url}', {$message_allowed}, {$last}, '{$get_contacts_url}', {$emails_allowed}, '', tmp);
    {if !$more_contacts_existed} he_contacts.last = -1; {/if}
{rdelim});
</script>

<div id="he_contacts_loading" style="display:none;">&nbsp;</div>
<div id="he_contacts_message" style="display:none;"><div class="msg"></div></div>

<div class="he_contacts">
    <div class="contacts">
        <div class="label">{lang_print id=690706158} <span class="info">{lang_print id=690706159}</span></div>
        <div id="he_contacts_list" target="ajaxframe">
            {if $contacts}
                {$contacts_compiled}
            {else}
                <div class="no">{lang_print id=690706160}</div>
            {/if}
            <div class="clr" id="he_contacts_end_line"></div>
        </div>
        <div class="{if $contacts}check_all{else}check_all_disabled{/if} contact_checkbox" id="he_contacts_check_all" onclick="he_contacts.check_all()">{lang_print id=690698007}</div>
        <div class="{if $more_contacts_existed}more{else}more_disabled{/if}" id="he_contacts_more" onclick="he_contacts.get_more_contacts()">{lang_print id=690698003}</div>
        <div class="clr"></div>
    </div>
    
    <div class="btn"><input type="button" class="button" onclick="he_contacts.send();" value="{lang_print id=690706161}" /></div>
</div>

</body>
</html>