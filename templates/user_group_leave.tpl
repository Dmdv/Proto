{include file='header_top.tpl'}
{include file='header_shapka.tpl'} 
{include file='header_menu.tpl'}
<link rel="stylesheet" href="/css/rustyle.css" type="text/css" />
<script>var base_domain = '/';
</script><script type="text/javascript" src="/js/common.js"></script>
<link rel="stylesheet" href="/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="/css/mail2.css" type="text/css" />
<link rel="stylesheet" href="//css/search.css" type="text/css" />
<script type="text/javascript" src="/js/photo.js"></script>

<link rel="stylesheet" href="//css/photos2.css" type="text/css" />
<script type="text/javascript" src="/js/lang0_1000.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>

<link rel="stylesheet" href="./css/friends.css" type="text/css" />


<div id="page_body" class="fl_r" style="width: 631px;">
      <div id="header_wrap2">
        <div id="header_wrap1">
          <div id="header" style="display: none">
            <h1 id="title"></h1>
          </div>
        </div>
      </div>
      <div id="wrap_between"></div>
      <div id="wrap3"><div id="wrap2">
  <div id="wrap1">
    <div id="content">

<div class="editorPanel clearFix">
  <div id="editphotoalbum">

<div style="margin:10px auto;">

<table id="dialog" border="0" cellspacing="0">
  <tbody>
   <tr>
    <td class="dialog" style="width:250px">
     <h4>Выход из группы</h4>
	  <p>Вы уверены, что хотите покинуть группу <a href='group.php?group_id={$group->group_info.group_id}'>{$group->group_info.group_title}</a>?<br>
	  {* SHOW WARNING THAT GROUP WILL BE DELETED IF USER IS THE OWNER *}
{if $group->user_rank == 2}
<br>
<font color='red'><b>Внимание!!!</b></font><br>
 Вы являетесь <font color='red'>Администратором</font> данной группы. Если Вы покинете ее, то группа будет удалена. Если хотите покинуть группу без ее удаления, то Вы должны передать право собственности на эту группу другому пользователю. Найти нужного участника группы, Измените его статус на "владелец" и Вы сможете покинуть эту группу без её удаления.
{/if}
</p>

  <div style='height:25px; width:425px; float:right; margin-right:10px'>

    <ul style="margin:-2px" class='nNav'>
	<form action='user_group_leave.php' method='post'>
     <li style="margin-left:130px">
<div class="button_blue">
<button id="login_button">Выйти из группы</button>
</div>
 <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>
  <input type='hidden' name='task' value='doleave'>
  </form>
     </li>
     <li>
<form action='user_group.php' method='post'>
<div class="button_blue" type='submit'>
<button id="login_button">Отмена</button>
</div>
</form>
     </li>
    </ul>
     </div>
    </td>
   </tr>

  </tbody>
 </table>
 <div id="shadowLine" style="width:272px"></div>
 </div>

    
    
   </div>
  </div>
  </div>
  </div>

  <div id="boxHolder"></div>
</td></tr></table></div>

{include file='footer.tpl'}
	 

