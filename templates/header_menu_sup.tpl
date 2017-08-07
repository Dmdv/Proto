{literal}
<style>
#side_bar2 {
    border-bottom-left-radius: 5px;
    padding: 42px 0 160px 300px;
    width: 125px;
}
.font_medium #side_bar {
    width: 135px;
}
#side_bar2 .more_div {
    border-top: 1px solid #E7EAED;
    margin-top: 3px;
    padding-top: 3px;
}
#side_bar2 ol li a.more {
    border-top: 0 none;
    padding-left: 29px;
}
#side_bar2 ol li a.more:hover {
    border-top: 0 none;
}
#side_bar2 ol {
    list-style: none outside none;
    margin: 0 0 10px;
    padding: 0;
}
#side_bar2 ol li {
    font-size: 1em;
}
#side_bar2 ol li#myprofile {
    border-bottom: 0 none;
}
#side_bar2 ol li a {
    border: 0 none;
    display: block;
    padding: 4px 3px 4px 6px;
    white-space: nowrap;
}
#side_bar2 ol li a.left_row {
    padding-bottom: 0;
    padding-top: 0;
}
#side_bar2 ol li a.more {
    padding-left: 6px;
}
#side_bar2 ol li#myprofile a {
    padding: 0;
    width: auto;
}
#side_bar2 ol li#myprofile a.hasedit {
    padding: 3px 3px 3px 6px;
    width: 76px;
}
#side_bar2 ol li#myprofile a.edit {
    color: gray;
    padding: 3px 0 3px 1px;
    text-align: center;
    width: 28px;
}
#side_bar2 ol li a:hover {
    background: none repeat scroll 0 0 #E1E7ED;
    text-decoration: none;
}
#side_bar2 ol li#myprofile a.edit:hover {
    color: #67829E;
}
.inl_bl {
    display: inline-block;
    vertical-align: top;
}
#side_bar2 .left_label {
    padding: 4px 0;
}
.left_count_wrap {
    color: #2B587A;
    font-size: 10px;
    font-style: normal !important;
    font-weight: bold;
    line-height: 11px;
    margin: 3px 3px 1px 0;
    padding: 2px 4px 3px;
}
.font_medium .left_count_wrap {
    font-size: 11px;
    line-height: 13px;
    padding: 2px 4px;
}
a:hover .left_count_wrap {
    background: none repeat scroll 0 0 #E1E7ED;
    margin-bottom: 0;
    margin-top: 0;
    padding-bottom: 5px;
    padding-top: 5px;
}
.font_medium a:hover .left_count_wrap {
    padding-bottom: 3px;
    padding-top: 5px;
}
</style>
{/literal}
<div id="side_bar2" style="">
	<ol>
<li id="myprofile" class="clear_fix"><a href="/user_editprofile.php"  class="edit fl_r">Ред.</a> <a href="/id{$user->user_info.user_id}" class="hasedit fl_l">Моя Страница</a> </li><li id="l_fr"><a href="/friends{$user->user_info.user_id}" class="left_row"> <span class="left_label inl_bl">Мои &#1044;&#1088;&#1091;&#1079;&#1100;&#1103; </span>{if $total_friend_requests > 0}<span class="inl_bl left_count left_count_small" >+ {$total_friend_requests}</span></span>{/if}</a></li><li id="l_ph"><a href="/albums{$user->user_info.user_id}" >Мои Фотографии<span></span></a></li><li id="l_vid"><a href="/video{$user->user_info.user_id}" >Мои Видеозаписи <span></span></a></li>
<li id="l_msg"><a href="/mail"  class="left_row"><span class="left_label inl_bl">Мои Сообщения</span>{if $user_unread_pms != 0}<span class="left_count_wrap inl_bl"><span class="inl_bl left_count left_count_big" >+ {$user_unread_pms}</span></span>{/if}</a></li>

<li id="l_gr"><a href="/user_group.php"  >Мои Группы<span></span></a></li><li id="l_nws"><a href="/feed"  >Мои Новости<span></span></a></li><li id="l_set"><a href="/settings.php"  >Мои Настройки <span></span></a></li><div class="more_div">
</div></div>

</ol>