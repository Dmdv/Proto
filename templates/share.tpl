<html>
<head>
<title>VSeti | Post</title>
</head>

<link rel="stylesheet" href="/css/share.css?11" title="stylesheet" type="text/css" />  

</head>

<body>


<div id="cont_wrapper"><div id="cont"><div style="padding: 20px 0px 20px">
<img src="/images/vk16.png" />
<div class="row" style="height: auto">
  <div class="label" style="padding-top: 6px;">РўРµРєСЃС‚:</div>
  <div class="labeled">
    <div style="border-left: 6px solid #15B029; padding-left: 10px;">
      <div id="image_cont" style="display: none;"></div>
      <div id="share_title">{$title}</div>

      <div id="share_domain"></div>
      <div id="url_text">{$link}</div>
      <div style="clear: both"></div>
    </div>
    <div style="clear: both"></div>
  </div>
</div>
<div class="row">


</div>
 <form action='share.php?act=post' method='POST' name='share'>
<table cellpadding='0' cellspacing='0' style='margin-left: 20px;'>
  <tr>
    <td class='form1'>&nbsp;</td>
    <td class='form2'>
      <div class='button_green'><button type='submit' class='button' value='OK'>Отправить</button></div>
      <noscript><input type='hidden' name='javascript_disabled' value='1' /></noscript>
      <input type='hidden' name='url' value='{$link}' />
      <input type='hidden' name='title' value='{$title}' />
	  <input type='hidden' name='hash' value='{$hash}' />
    </td>
  </tr>
</table>
</form>
</div>
</div></div>
</body>

	

