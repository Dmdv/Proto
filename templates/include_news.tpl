     {* Обьявления *}
<table width="120">
{foreach from=$newss item=s}
  <table width="150">    
<tr>
            <td class='ad_box'>
              <table cellpadding='0' cellspacing='0' width='100%'>
                <tr>
                <div class="ad_title">{$s.title}</div>
                  <td valign='top'>
                    <b>		<img src="{$s.img}" width="50"/></b><br />
                    	{$s.txt|truncate:50:"...":true}<br />
        		<a href="{$s.link}" target=_blank>{lang_print id=69644377}</a>
                  </td>
                </tr>
              </table>

            </td>
          </tr>
        </table>
{/foreach}
  <div class='spacer10'></div>
 </table>
  {* Обьявления Конец *}