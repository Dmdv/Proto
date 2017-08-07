{* ModMySocialEngine - MEMBER MOODS *} 

<table cellpadding='0' cellspacing='0' width='100%' style='margin-bottom: 10px;'> 
<tr><td class='header'><img src="./gif_new68.gif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Send Gifts</td></tr> 
<tr> 
<td class='profile'td id='profile_stats'> 
<table cellpadding='0' cellspacing='0'> 

{if $user->user_info.user_username == $owner->user_info.user_username}
<tr><center><A HREF="http://www.yoursitehere.com/mf_gifts_send.php?type=1">
<img src="./gift.gif" width="65" height="62" BORDER=0><a></center><p><br>
<td><strong><MARQUEE>Send a gife to your Friend to make them more happy and more closer</MARQUEE></td> 
</tr> 
</table> 
</td> 
</tr> 
</table> 
{else}
<tr><center><A HREF="http://www.yoursitehere.com/mf_gifts_send.php?type=1&to={$owner->user_info.user_username}">
<img src="http://yousitehere/gift.gif" width="65" height="62" BORDER=0><a></center><p><br>
<td><strong><MARQUEE>Send Me A Gift If You like Me</MARQUEE></td> 
</tr> 
</table> 
</td> 
</tr> 
</table> 
{/if}
{* END ModMySocialEngine - MEMBER MOODS *} 