{include file='header.tpl'}

<link rel="stylesheet" href="/skin/def/css/rustyle.css" type="text/css" />
<script>var base_domain = '/';
</script><script type="text/javascript" src="/js/common.js"></script>
<link rel="stylesheet" href="/skin/def/css/dialog2.css" type="text/css" />
<link rel="stylesheet" href="/skin/def/css/mail2.css" type="text/css" />
<link rel="stylesheet" href="/skin/def/css/search.css" type="text/css" />
<script type="text/javascript" src="/js/photo.js"></script>

<link rel="stylesheet" href="/skin/def/css/photos2.css" type="text/css" />
<script type="text/javascript" src="/js/lang0_1000.js"></script>
<script type="text/javascript" src="/js/base.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>

<link rel="stylesheet" href="./skin/def/css/friends.css" type="text/css" />

<div id="pageBody" class="pageBody">
<div id="wrapH">
<div id="wrapHI">
<div id="header">
    <h1> Мои группы</h1>
   </div>
</div>
</div>
<div id="wrap2">
<div id="wrap1">
<div id="content">

<div class="editorPanel clearFix">
  <div id="editphotoalbum">
  


<div style="margin:10px auto;">
{if $error_message == "" AND $result == ""}
<table id="dialog" border="0" cellspacing="0">
  <tbody>
   <tr>
    <td class="dialog" style="width:250px">
     <h4>Вступление в группу</h4>

     <p>Вы действительно хотите вступить в группу  <a href='group.php?group_id={$group->group_info.group_id}'>{$group->group_info.group_title}</a>?</p>

  <div style='height:25px; float:right; margin-right:10px'>

    <ul style="margin:-2px" class='nNav'>
	    <form action='group.php' method='post'>
     <li style="margin-left:0px">
<div class="button_green">

<button onclick='dojoin' id="login_button">Вступить</button>

</div>
    <input type='hidden' name='group_id' value='{$group->group_info.group_id}'>

  </form>
     </li>
     <li>
<form action='{$return_url}' method='post'>
<div class="button_green">
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
 {else}
  
    <form action='group.php?group_id={$group->group_info.group_id}' method='POST'>
	<div class="message">
	Вы успешно вступили в группу!
	</div>
	<center><div class="button_green" type='submit'>
<button id="login_button">Назад</button>
</div>
    </form>
{/if}
 <div id="shadowLine" style="width:272px"></div>
 </div>

    
    
   </div>
  </div>
  </div>
  </div>

  <div id="boxHolder"></div>
</td></tr></table>

{include file='footer.tpl'}

