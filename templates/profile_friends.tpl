{if $total_friends != 0}
<div class="module clear people_module" id="profile_friends">
  <a {if $owner->user_info.user_id == $user->user_info.user_id}href="user_friends.php"{else}href="profile_friends.php?user={$owner->user_info.user_username}"{/if} class="module_header">
  <div class="header_top clear_fix">
    <span class="right_link fl_r"></span>
    Äðóçüÿ
  </div>
  <div class="p_header_bottom">
   {$total_friends} {include file='sklonenie_friends.tpl'}
  </div>
</a>
  <div class="module_body clear_fix">
    <div class="people_row">
{section name=friend_loop loop=$friends max=6}<div class="fl_l people_cell">  <a class="ava" href="/id{$friends[friend_loop]->user_info.user_id}">    <div class="avasmall2">
<div class="avasmall"><img src="{$friends[friend_loop]->user_photo('./images/camera_c.gif')}"></div></div>  </a>  <div class="name_field">    <a href="/id{$friends[friend_loop]->user_info.user_id}">      {$friends[friend_loop]->user_info.user_fname}<br />      <small>{$friends[friend_loop]->user_info.user_lname}</small>    </a>  </div></div>
{/section}
</div>
  </div>
</div>
{/if}