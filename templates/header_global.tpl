<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
{* $Id: header_global.tpl 146 2009-03-27 02:48:07Z john $ *}

<title>Будь на позитиве!</title>
<base href='{$url->url_base}' />
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta name='Description' content="{if $global_page_description != ""}{lang_sprintf id=$global_page_description[0] 1=$global_page_description[1] 2=$global_page_description[2]}{else}{lang_print id=1156}{/if}" />

{* INLUCDE MAIN STYLESHEET *}


<script type="text/javascript" src="./include/js/core-min.js"></script>
{*
<script type="text/javascript" src="./include/js/autogrow.js"></script>
<script type="text/javascript" src="./include/js/smoothbox.js"></script>
<script type="text/javascript" src="./include/js/autosuggest.js"></script>
<script type="text/javascript" src="./include/js/sprintf.js"></script>
<script type="text/javascript" src="./include/js/class_base.js"></script>
<script type="text/javascript" src="./include/js/class_core.js"></script>
<script type="text/javascript" src="./include/js/class_language.js"></script>
<script type="text/javascript" src="./include/js/class_url.js"></script>
<script type="text/javascript" src="./include/js/class_comments.js"></script>
<script type="text/javascript" src="./include/js/class_tags.js"></script>
<script type="text/javascript" src="./include/js/class_user.js"></script>
*}

{* INSTALIZE API *}
<script type="text/javascript">
<!--
  var SocialEngine = new SocialEngineAPI.Base();

  // Core
  SocialEngine.Core = new SocialEngineAPI.Core();
  SocialEngine.Core.ImportSettings({$se_javascript->generateSettings($setting)});
  SocialEngine.Core.ImportPlugins({$se_javascript->generatePlugins($global_plugins)});
  SocialEngine.RegisterModule(SocialEngine.Core);

  // URL
  SocialEngine.URL = new SocialEngineAPI.URL();
  SocialEngine.URL.ImportURLBase({$se_javascript->generateURLBase($url)});
  SocialEngine.URL.ImportURLInfo({$se_javascript->generateURLInfo($url)});
  SocialEngine.RegisterModule(SocialEngine.URL);

  // Language
  SocialEngine.Language = new SocialEngineAPI.Language();
  SocialEngine.RegisterModule(SocialEngine.Language);

  // User - Viewer
  SocialEngine.Viewer = new SocialEngineAPI.User();
  SocialEngine.Viewer.ImportUserInfo({$se_javascript->generateUserInfo($user)});
  SocialEngine.RegisterModule(SocialEngine.Viewer);

  // User - Owner
  SocialEngine.Owner = new SocialEngineAPI.User();
  SocialEngine.Owner.ImportUserInfo({$se_javascript->generateUserInfo($owner)});
  SocialEngine.RegisterModule(SocialEngine.Owner);

  // Back
  SELanguage = SocialEngine.Language;
//-->
</script>


{literal}
<script type="text/javascript">
<!--
  // ADD TIP FUNCTION
  window.addEvent('load', function()
  {
    var Tips1 = new Tips($$('.Tips1'));
  });
//-->
</script>
{/literal}



{* GLOBAL IFRAME FOR AJAX FUNCTIONALITY *}
<iframe id='ajaxframe' name='ajaxframe' style='display: none;' src='javascript:false;'></iframe>

