
{*
@author Ermek
@copyright Hire-Experts LLC
@version Cooliris 1.01
*}

{include file='header.tpl'}

{literal}
<script type='text/javascript'>
function handler() {
     $('c').addEvent('change', function(event){  
         window.location = 'browse_vids.php?{/literal}{if $q}{literal}q={/literal}{$q}{/if}{if $type == 'tag'}{literal}&type={/literal}{$type}{/if}{literal}&c='+$('c').value+'&s={/literal}{$s}{literal}&b={/literal}{$b}{literal}';
     });
     $('s').addEvent('change', function(event){  
         window.location = 'browse_vids.php?{/literal}{if $q}{literal}q={/literal}{$q}{/if}{if $type == 'tag'}{literal}&type={/literal}{$type}{/if}{literal}&c={/literal}{$c}{literal}&s='+$('s').value+'&b={/literal}{$b}{literal}';
     });
     $('b').addEvent('change', function(event){  
         window.location = 'browse_vids.php?{/literal}{if $q}{literal}q={/literal}{$q}{/if}{if $type == 'tag'}{literal}&type={/literal}{$type}{/if}{literal}&c={/literal}{$c}{literal}&s={/literal}{$s}{literal}&b='+$('b').value;
     });
}
 
window.addEvent('domready', handler);
</script>
{/literal}

<div class='page_header' style='float:left;'>{lang_print id=13500035}</div>

{include file='vid_buttons.tpl'}

<div style='clear:both;'></div>

<form method="get" name="seBrowsevids">
<div style='padding: 7px 10px 7px 10px; background: #F2F2F2; border: 1px solid #BBBBBB; margin: 10px 0px 0px 0px; font-weight: bold;'>
  <table cellpadding='0' cellspacing='0'>
  <tr>
  <td style='padding-right: 3px;'>
    {lang_print id=13500060}&nbsp;</td>
  <td style='padding-right: 3px;'>
       <input type="text" name="q" id="q" value="{if $q != ''}{$q}{/if}" class="text" style="width:120px;">
  </td>
  <td>
       <input type='submit' class='button' value='{lang_print id=13500061}'>
  </td>
  <td style='padding-left: 20px;'>
    {lang_print id=13500115}&nbsp;
  </td>
  <td>
    <input type='checkbox' name="type" id="type" value='tag' {if $type == 'tag'}CHECKED{/if}>
  </td>
  <td style='padding-left: 20px;'>
    {lang_print id=13500062}&nbsp;
  </td>
  <td>
    <select id='c' class='small' name='c'>
          {section name=vidcats_loop loop=$vidcats}
    <option value='{$vidcats[vidcats_loop].vidcat_id}'{if $c == $vidcats[vidcats_loop].vidcat_id} SELECTED{/if}>{lang_print id=$vidcats[vidcats_loop].vidcat_languagevar_id}</option>
          {/section}
    </select>
  </td>
  <td style='padding-left: 20px;'>
    {lang_print id=13500063}&nbsp;
  </td>
  <td>
    <select id='s' class='small' name='s'>
    <option value='v'{if $s == "v"} SELECTED{/if}>{lang_print id=13500064}</option>
    <option value='p'{if $s == "p"} SELECTED{/if}>{lang_print id=13500065}</option>
    <option value='c'{if $s == "c"} SELECTED{/if}>{lang_print id=13500066}</option>
    </select>
  </td>
  <td style='padding-left: 10px; padding-right: 10px;'>
    in
  </td>
  <td>
    <select id='b' class='small' name='b'>
    <option value='0'{if $b == 0} SELECTED{/if}>{lang_print id=13500067}</option>
    <option value='1'{if $b == 1} SELECTED{/if}>{lang_print id=13500068}</option>
    </select>
  </td>
  <td style='padding-left: 5px'>
    &nbsp;{lang_print id=13500069}
  </td>
  </tr>
  </table>
</div>
</form>

{if $all_videos[0]}
  {literal}
  <script type="text/javascript">
  <!-- 
  window.addEvent('domready', function() { 
    var Slideup1 = new Fx.Slide('slideup1').hide();
    if(menu_minimized.get('cookie') == 0) { Slideup1.hide(); $('min1_icon').innerHTML = '<a href=\'#\'>{/literal}{lang_print id=13500057}{literal}</a>'; }
    $('min1').addEvent('click', function(e){
    e = new Event(e);
    if(menu_minimized.get('cookie') == 1) { 
      menu_minimized.set('cookie', 0);
      Slideup1.slideOut(); 
      $('min1_icon').innerHTML = '<a href=\'#\'>{/literal}{lang_print id=13500057}{literal}</a>';
    } else { 
      menu_minimized.set('cookie', 1);
      Slideup1.slideIn(); 
      $('min1_icon').innerHTML = '<a href=\'#\'>{/literal}{lang_print id=13500058}{literal}</a>';
    }
    e.stop();
    this.blur();
    });
  });
  //-->
  </script>
  {/literal}

  <div id='slideup1' name='slideup1' style='padding: 7px 10px 7px 10px; background: #FCFCFC; border-bottom: 1px solid #BBBBBB; border-right: 1px solid #BBBBBB; border-left: 1px solid #BBBBBB; margin: 0px 0px 2px 0px; font-weight: bold;'>
    <div class='portal_spacer'></div>
      <p style="line-height: 25px;">
              {section name=tag loop=$tag_cloud}
              {$tag_cloud[tag]}&nbsp;
              {/section}
      </p>
  </div>
 
<div id='min1' style='text-align: right; margin-right: 5px; margin-bottom: 10px;'><div id='min1_icon' name='min1_icon' style='color: #336699;'><a href='#'>Advanced [ + ]</a></div></div>
{/if}


<div style="text-align: center; padding-top: 25px; position: relative;">
    <object id="o" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="860" height="450">
        <param name="wmode" value="transparent"></param>
        <param name="movie" value="./include/cooliris/cooliris.swf"></param>
        <param name="allowFullScreen" value="true"></param>
        <param name="allowScriptAccess" value="always"></param>
        <param name="flashvars" value="{$cooliris_flash_vars}"></param>
        <embed type="application/x-shockwave-flash" src="./include/cooliris/cooliris.swf" flashvars="{$cooliris_flash_vars}" width="860" height="450" allowFullScreen="true" allowScriptAccess="always" wmode="transparent">
         </embed>
    </object>
</div>



{include file='footer.tpl'}