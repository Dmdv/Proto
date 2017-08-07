{include file='header_top.tpl'}
{include file='header_shapka.tpl'}
{include file='header_menu.tpl'}
<link rel='stylesheet' href='css/opinions.css' type='text/css' />
<div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="display: none">
            <h1 id="title"></h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content"><div class="t_bar tabs clear_fix"><ul id="pedit_filters" class="t0">


  <li class=""><a href='user_opinions.php'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Мнения о Вас</b></a></li>

  <li class="active_link"><a href='user_opinions_outbox.php'><b class="tl1"><b></b></b><b class="tl2"></b><b class="tab_word">Ваши мнения</b></a></li>
</ul></div>

 <div class="bar clearFix summaryBar">
  <div class="summary">{if $total_checkbox == 0}Нет мнений.{else}Вы оставили {$total_checkbox} мнений{/if}</div>
 </div>
<div style='background-color:#f7f7f7; padding:20px'>
<div style="padding:7px 10px 10px 10px; line-height:150%; {if $checkboxs[checkbox].checkbox_view == 1}background-color: #F5F7F9;{/if}">
 {if $total_checkbox == 0}
 <div id="noOpinions">Вы еще не оставили ни одного мнения.</div>
{else}

      {section name=checkbox loop=$checkboxs max=99}
<div class="opinion">
<table cellpadding=0 cellspacing=0><tr><td style="width:560px; vertical-align:top">
<div class="opinionInner">
{$datetime->cdate("`$setting.setting_dateformat` в `$setting.setting_timeformat`", $datetime->timezone($checkboxs[checkbox].checkbox_date, $global_timezone))}
</div>
<div style="padding:7px 10px 10px 10px; line-height:150%; {if $checkboxs[checkbox].checkbox_view == 1}background-color: #F5F7F9;{/if}">
{$checkboxs[checkbox].checkbox_body|choptext:25:"<br>"}
</div>
</td>

{if $checkboxs[checkbox].checkbox_private == 0}
<td style="width:90px; padding:7px 0px 0px 10px; text-align:center; vertical-align:top">
<a href="id{$checkboxs[checkbox].myuser->user_info.user_id}">

{if $checkboxs[checkbox].myuser->user_info.user_photo == ""}
<img src="./images/nophoto.gif" width=50>
{else}
<IMG SRC='./uploads_user/{math equation="x+y-((x-1)%z);" x=$checkboxs[checkbox].myuser->user_info.user_id y=999 z=1000}/{$checkboxs[checkbox].myuser->user_info.user_id}/{$checkboxs[checkbox].myuser->user_info.user_photo}' WIDTH=50 ALT ='' />
{/if}
<div style="font-size:9px">{$checkboxs[checkbox].myuser->user_info.user_username}</div>
</a>
</td>
{/if}
</tr></table>
</div>
      {/section}

{/if}
   </div>
  </div>
 </div>
 </div>
       </div> </div>
{include file='footer.tpl'}



