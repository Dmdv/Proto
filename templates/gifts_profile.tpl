
{include file='header_top.tpl'}

{include file='header_shapka.tpl'}

{include file='header_menu.tpl'}

<link rel="stylesheet" href="http://s1.vceti.net/css/gifts.css" type="text/css" />



<!-- pageBody -->


   <div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="">
    <h1>Подарки</h1>
   </div>

  </div>

  </div>

  <div id="wrap2">
  <div id="wrap1">
   <div id="content">

    <div class="bar clearFix summaryBar">
 <div class="summary">{$total_gifts} подарков</div>

 <div class="commentsPagesWrap narrow">
<div style='height: 20px' id='progrWrapTop'></div></div>
</div>
<table class="mainTable" cellspacing="0" cellpadding="0">
<tr>
  <td class="mainPanel">
  <div id="memberGiftsList">

{section name=gifts_loop loop=$gifts}

    <table class="giftRow " border="0" cellspacing="0">
<tr>
{if $gifts[gifts_loop].gifts_type == 1}
 <td class="image">
<a href="/id{$gifts[gifts_loop].gifts_from->user_info.user_id}"><img src="{$gifts[gifts_loop].gifts_from->user_photo('./images/nophoto.gif')}" /></a>
 </td>
{/if}
{if $gifts[gifts_loop].gifts_type == 3}
 <td class="image">
<a href="/id{$gifts[gifts_loop].gifts_from->user_info.user_id}"><img src="{$gifts[gifts_loop].gifts_from->user_photo('./images/nophoto.gif')}" /></a>
 </td>
{/if}
{if $gifts[gifts_loop].gifts_type == 2}
 <td class="image">
<a href=""><img src="./images/nophoto.gif" /></a>
 </td>
{/if}
 <td class="info">
  <div class="header">
   {if $gifts[gifts_loop].gifts_type == 1}<div class="privacy">виден всем</div>  от <a href='/id{$gifts[gifts_loop].gifts_from->user_info.user_id}'><strong> {$gifts[gifts_loop].gifts_from->user_displayname}</strong></a><br />{/if}
{if $gifts[gifts_loop].gifts_type == 2}<div class="privacy">Аноним</div>
<a href=''><strong>Неизвестно</strong></a><br />
{/if}
 

  </div>
<div class="text" id="gift{$con.gift_id}">
<img src="/images/gifts/256/{$gifts[gifts_loop].gifts_id}.jpg" /></div>
  <div class="actions">









  </div>
 </td>
</tr>
</table>
{/section}

  </div>
  </td>
  
</tr>

</table>

<div class="bar clearfix footerBar">
 <div class="commentsPagesWrap narrow">



<div style='height: 20px' id='progrWrapMid'></div></div>
</div>
  {literal}
<script type="text/javascript">
function deleteGift(gift_id, hash) {
  var ajax = new Ajax();
  ajax.onDone = function(ajax, responseText){
    ge('gift' + gift_id).innerHTML = responseText;
  };
  ajax.onFail = function(ajax, responseText){
   var errorMsg = (responseText.length) ? responseText : 'Request error.';
    ge('gift' + gift_id).innerHTML = '<div class="msg">' + errorMsg + '</div>';
  };
  ajax.post('/gifts.php?act=a_delete', {'id': gift_id, 'hash': hash});
}
function restoreGift(gift_id) {
  var ajax = new Ajax();
  ajax.onDone = function(ajax, responseText){
    ge('gift' + gift_id).innerHTML = responseText;
  };
  ajax.onFail = function(ajax, responseText){
   var errorMsg = (responseText.length) ? responseText : 'Request error.';
    ge('gift' + gift_id).innerHTML = '<div class="msg">' + errorMsg + '</div>';
  };

  ajax.post('/gifts.php?act=restore', {'id': gift_id});
}

</script>
  {/literal}
   </div>
  </div>

  </div>

















</div>






{include file='footer.tpl'}