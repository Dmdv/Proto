{if !$bNotShowMenu}
<link rel="stylesheet" href="fbmenu/fbmenu_theme/{$sCurrTheme}/style.css" type="text/css" />
<!--[if lte IE 6]><link rel="stylesheet" href="http://fbmenu.phpfoxcustomization.com/plugins/ats_fbmenu/theme/default/style_ie.css" type="text/css" media="screen" /><![endif]-->
<script type="text/javascript" src="fbmenu/fbmenu_js/jquery_min.js"></script>
<script type="text/javascript" src="fbmenu/fbmenu_js/jquery.phpdate.js"></script>
<script type="text/javascript" src="fbmenu/fbmenu_js/jquery.scrollable.js"></script>
<script type="text/javascript" src="fbmenu/fbmenu_js/jquery.tablednd.js"></script>
<script type="text/javascript" src="fbmenu/fbmenu_js/swf_lib.js"></script>
<script type="text/javascript" src="fbmenu/fbmenu_js/jquery.easydrag.js"></script>
<script type="text/javascript">
jQuery.noConflict();
</script>
</script>
<!--[if lte IE 6]>
    <script type="text/javascript" language="javascript">
    {literal}
        jQuery(document).ready(function(){
            jQuery(window).scroll(function(){
                jQuery('.ats_fbmenu_menu_bottom').stop(true, true);
                jQuery('.ats_fbmenu_menu_bottom').animate({'top': (document.getElementsByTagName('html')[0].scrollTop || document.getElementsByTagName('body')[0].scrollTop || 0) + (document.getElementsByTagName('html')[0].offsetHeight || document.getElementsByTagName('body')[0].offsetHeight || 0) - 43 + 'px'}, 1);
            });
        });
        {/literal}
    </script>
    <![endif]-->
{/if}