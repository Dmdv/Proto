{include file='header.tpl'}


<div id="pageBody" class="pageBody">

  <div id="wrapH">
  <div id="wrapHI">
   <div id="header">
    <h1><a href='{$url->url_create('profile', $owner->user_info.user_id)}'>{$owner->user_info.user_lastname} {$owner->user_info.user_username} {$owner->user_info.user_firstname}</a>  &#187;   новое сообщение </h1>
   </div>
  </div>
  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">


 <table id="dialog" border="0" cellspacing="0" width="400">
  <tbody>
   <tr>
    <td class="dialog">
     <h4>Новая запись ({$owner->user_info.user_lastname} {$owner->user_info.user_username} {$owner->user_info.user_firstname})</h4>
     <div style="padding-left:10px">
{if $user->user_exists != 0}
     <form action='wall.php' id="postWall" name='postWall'>
      <table class="formTable" border="0" cellspacing="0">
       <tr class="tallRow">
        <td class="label"><b>Сообщение:</b></td>
        <td>
	 <input type='hidden' name='act' value='add_1' />
	 <input type='hidden' name='id' value='{$owner->user_info.user_id}' />
	 <textarea onkeyup="utils.checkTextLength(4096, this.value, ge('textWarn'))" name="body" style="width:258px; height:70px" id="message_text"></textarea>

	 <div id="textWarn" style="color:#666666;margin:5px 0px;display:none;width:258px;"></div>
        </td>
       </tr>

      </table>

      <div style='height:30px; text-align:right; margin-right:20px'>





       <ul class='nNav' style="float:right;">
     <li style="margin-left:0px">
      <b class="nc"><b class="nc1"><b></b></b><b class="nc2"><b></b></b></b>
      <span class="ncc"><a style="width:7.5em" href="javascript:document.postWall.submit()">Отправить</a></span>
      <b class="nc"><b class="nc2"><b></b></b><b class="nc1"><b></b></b></b>
     </li>

     <li>
      <b class="nc"><b class="nc1"><b></b></b><b class="nc2"><b></b></b></b>
      <span class="ncc"><a href="javascript:history.go(-1)">Отмена</a></span>
      <b class="nc"><b class="nc2"><b></b></b><b class="nc1"><b></b></b></b>
     </li>
       </ul>




      </div>         
     </div>

      </form>

{else}
<div id='msg'>Вы должны быть авторизированы, чтобы писать на стене</div>
{/if}

    </td>
   </tr>
  </tbody>
 </table>
 <div id="shadowLine" style="width:398px"></div>
 <br>









</div></div></div>

{include file='footer.tpl'}