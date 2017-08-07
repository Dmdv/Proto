{if $user_unread_pms != 0}
  {section name=pm_loop loop=$pms}

{literal}
<style>
 #new_ls{box-shadow: 0 0 6px #000000;width:320px;height:95px;background:url('/images/new_message_background.png');margin-top:10px;border-radius:6px;}.mess_body{position:fixed;bottom:10px;right:10px;}#ls_ava img{border-radius:5px;max-weight:50px;max-height:50px;margin-left:10px;}.mess_link_messages{color:#ffffff;text-decoration:none;font-size: 11px;text-shadow:#ffffff 0 0 1px;font-family: tahoma, tahoma, verdana, arial, sans-serif, Lucida Sans;}.mess_link_messages:hover{text-shadow:#ffffff 0 0 4px;}.mess_link_user{color:#b1dacf;text-decoration:none;font-weight: bold;font-size: 11px;margin-left:10px;font-family: tahoma, tahoma, verdana, arial, sans-serif, Lucida Sans;text-shadow:#b1dacf 0 0 1px;}.mess_link_user:hover{text-shadow:#b1dacf 0 0 4px;text-decoration:underline;}.name_message{margin-left:11px;line-height:35px;color:#ffffff;text-shadow:#ffffff 0 0 4px;font-weight: bold;float:left;font-size: 13px;font-family: tahoma, tahoma, verdana, arial, sans-serif, Lucida Sans;}.new_mess_message{float:left;width:250px;height:60px;}#ls_ava{float:left;width:70px;height:60px;}.mew_mess_top{float:left;width:100%;height:35px;}
</style>
{/literal}
<div style="position: fixed; bottom: 40px; left: 30px;z-index: 9999999999999;">
<div id="new_ls" >
<div class="mew_mess_top">
<div class="name_message">Новое сообщение</div>
<div class="close_mess" style="float:right;margin-right:12px;margin-top:12px;">
<img class="close" style="box-shadow: 0 0 4px #1a1a1a;border-radius:3px;opacity:0;" src="/imagesnew_message/close.png">
</div></div><div id="ls_ava" class="ava_num"><img src='{$pms[pm_loop].pm_user->user_photo('./images/camera_c.gif', TRUE)}'/></div>
<div class="new_mess_message"><a class="mess_link_user" href="/prifle.php?user={$pms[pm_loop].pm_user->user_info.user_username}" target="_blank">{$pms[pm_loop].pm_user->user_info.user_username}</a>&nbsp;
<a href="ser_messages_view.php?pm_id={$pms[pm_loop].pm_id}" class="mess_link_messages" target="_blank">{$pms[pm_loop].pm_body|truncate:100|choptext:75:"<br>"}</a></div>
</div> </div> </div> </div>      
{/if}
{/section}
