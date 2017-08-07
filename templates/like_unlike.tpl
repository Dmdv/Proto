<div align='center'>
{literal}
<script language="JavaScript">

var active = "like";
function messageSent(likes_total, message, me) {
$('likes_total_span').innerHTML = likes_total;
$('like_button').value = message;
if(me == '1') {setTimeout("$('Like_me').style.display = 'block';$('Like_empty').style.display = 'none';$('Like_img1').style.display = 'block';$('Like_img0').style.display = 'none';", "400");
} else {
setTimeout("$('Like_me').style.display = 'none';$('Like_empty').style.display = 'block';$('Like_img1').style.display = 'none';$('Like_img0').style.display = 'block';", "400");
}
}
function loading() {
$('like_button').value = '...';
}

</script>
{/literal}
<iframe src="javascript:false;" style="display: none;" name="like" id="like"></iframe>

 <form name="dela" method="post" target="like" action="like_unlike.php">
  <input type='hidden' name='need_id' value='{$id_like}'>
  <table class='TableLike radius10 shadow'>
    <tr>
      <td {if $note_total > "0"}style='cursor:pointer'{/if}>
        <div class="InfoBoxLike">
        <span id="Like_img0" style='float:left;display: {if $likes_total == "0"}block{else}none{/if}'><img src='/images/like_{if $note_total == "0"}empty{elseif $note_total <= "5"}ok{else}favorite{/if}.png' border='0' align='top'></span>
        <span id="Like_img1" style='float:left;display: {if $likes_total == "1"}block{else}none{/if}'><img src='/images/like_{if $note_total == "1"}ok{elseif $note_total <= "5"}favorite{else}favorite{/if}.png' border='0' align='top'></span>
          {if $note_total > "0"}
          <div class='radius10'>
              <p style="font-weight:bold;margin-bottom:5px">Им тоже понравилось</p>
          {section name=dj_loop loop=$djs}
          {assign var='nomerLike' value=$nomerLike+1}
              <p id="{$nomerLike}" style="float:left">
               <a href="{$url->url_create('profile', $user_username[dj_loop])}">
                 {if !$user_photo[dj_loop]}
                   <img src='images/nophoto.gif' width='26' border='0' title='{$user_username[dj_loop]} понравилось'>
                 {else}
                   <img src="{$url->url_userdir($user_id[dj_loop])}{$user_photo[dj_loop]}" width='26' border='0' title='{$user_username[dj_loop]} понравилось' class='icon'>
                 {/if}
               </a>
              </p>
          {cycle name="newrow" values=",,,,,,<p style='clear: both;height:5px;'></p>"}
          {/section}
          <i></i>
          </div>
          {/if}
          &nbsp;<span id="likes_total_span">{if $likes_total == "0"}&nbsp;{$note_total}{else}<b>{$note_total}</b>{/if}</span>
        </div>
      </td>
      <td style='padding:2px'></td>
      <td>
     
      </td>
      <td>
        <input name='Submit' id='like_button' style='min-width:100px;' onclick='loading()' type='submit' value='{if $likes_total == "0"}Нравится{else}Не нравится{/if}'>
       {* <button name='Submit' id='like_button' style='min-width:30px;' onclick='loading()' type='submit' value='' {if $likes_total == "0"} title="Нравится"{else} title="Не нравится"{/if}>
        {if $likes_total == "0"}<img border="0" src="http://s.ytimg.com/yt/img/pixel-vfl3z5WfW.gif" class="like_ok">{else}<img border="0" src="http://s.ytimg.com/yt/img/pixel-vfl3z5WfW.gif" class="like_no">{/if}
        </button>*}
        {*<input type='hidden'  name='taskfalse' value='like'>*}
        <input type='hidden' id='hidden'  name='task' value='like'>
      </td>
    </tr>
  </table>
 </form>
</div>
