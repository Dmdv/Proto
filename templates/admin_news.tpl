{include file='admin_header.tpl'}

<link rel="stylesheet" type="text/css" href="../css/style_news.css">

<img src='../images/icons/news.png' ><br>
<font color="#006600"><b>{lang_print id=69644369}</b></font><br><br>
{if $ok1 == 1}
<img src='../images/icons/good_style.png' > {lang_print id=69644375}
{/if}
{if $ok2 == 1}
<img src='../images/icons/good_style.png' > {lang_print id=69644376}
{/if}
<br><br>



<table width="500" border="0">
  <tr>
    <td>
    
   <form action="admin_news.php" method="get">
<input name="title" type="text" /> {lang_print id=69644370}<br><br>
<input name="img" type="text" /> {lang_print id=69644371}<br><br>
<input name="link" type="text" /> {lang_print id=69644372}<br><br>
<textarea name="txt" cols="40" rows="10"></textarea> {lang_print id=69644373}<br><br>
<input name="ok" type="hidden" value="ok" />
<input class="buttonmy" type="Submit" name="change" value="{lang_print id=69644374}">
</form>
<br><br> 
    
    </td>
    
    <td>
    
     {* Обьявления *}
<table width="120">
{foreach from=$news item=v name=l1}
  <table width="150">    
<tr>
            <td class='ad_box'>
              <table cellpadding='0' cellspacing='0' width='100%'>
                <tr>
                <div class="ad_title">{$v.title}</div>
                  <td valign='top'>
                    <b>		<img src="{$v.img}" width="50"/></b><br />
                    	{$v.txt|truncate:50:"...":true}<br />
        		<a href="{$v.link}" target=_blank>link</a>
                  </td>
                </tr>
              </table>

            </td>
          </tr>
        </table> <center><a href="./admin_news.php?delete=1&id_n={$v.id}">{lang_print id=155}</a></center>
{/foreach}
  <div class='spacer10'></div>
 </table>
  {* Обьявления Конец *}
    
    </td>
  </tr>
</table>

{include file='admin_footer.tpl'}