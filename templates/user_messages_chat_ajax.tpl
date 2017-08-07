{if $pmconvo_info.pmconvoop_read != 1}
<div>
  <object data="./images/chat_sound.swf" type="application/x-shockwave-flash" width="1" height="1" style="visibility:hidden">
    <param name="movie" value="./images/chat_sound.swf" />
    <param name="menu" value="false" />
    <param name="quality" value="high" />
  </object>
</div>
{/if}
<table cellpadding='0' cellspacing='3' border='0'>
  {include file='user_messages_chat_loop.tpl'}
</table>



