{include file='header.tpl'}

{* $Id: group_album_file.tpl 162 2009-04-30 01:43:11Z john $ *}

{* SET GROUP OWNER *}
<script type="text/javascript">
  // User - Owner
  SocialEngine.Owner = new SocialEngineAPI.User();
  SocialEngine.Owner.ImportUserInfo({$se_javascript->generateUserInfo($groupowner)});
  SocialEngine.RegisterModule(SocialEngine.Owner);

</script>

{* SET PAGE WIDTH *}
{assign var='page_width' value=$group->groupowner_level_info.level_group_album_width}
{assign var='menu_width' value=$page_width+32}

<div style='width: {$menu_width}px; margin-left: auto; margin-right: auto;'>

<div class='page_header'>
  <a href='{$url->url_create("group", $smarty.const.NULL, $group->group_info.group_id)}'>{$group->group_info.group_title}</a>
  &#187; {lang_print id=2000232}
</div>


{* SET MEDIA PATH *}
{assign var='media_dir' value=$group->group_dir($group->group_info.group_id)}
{assign var='media_path' value="`$media_dir``$media_info.groupmedia_id`.`$media_info.groupmedia_ext`"}


{* DISPLAY IMAGE *}
{if $media_info.groupmedia_ext == "jpg" || 
    $media_info.groupmedia_ext == "jpeg" || 
    $media_info.groupmedia_ext == "gif" || 
    $media_info.groupmedia_ext == "png" || 
    $media_info.groupmedia_ext == "bmp"}
  {assign var='file_src' value="<img src='`$media_path`' id='media_photo' border='0' />"}
  {assign var='is_image' value=true}

{* DISPLAY AUDIO *}
{elseif $media_info.groupmedia_ext == "mp3" || 
        $media_info.groupmedia_ext == "mp4" || 
        $media_info.groupmedia_ext == "wav"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=2000268}</a> ]{/capture}
  {assign var='file_src' value="<a href='`$media_path`'><img src='./images/icons/audio_big.gif' border='0' /></a>"}
  {assign var='is_image' value=false}

{* DISPLAY WINDOWS VIDEO *}
{elseif $media_info.groupmedia_ext == "mpeg" || 
	$media_info.groupmedia_ext == "mpg" || 
	$media_info.groupmedia_ext == "mpa" || 
	$media_info.groupmedia_ext == "avi" || 
	$media_info.groupmedia_ext == "ram" || 
	$media_info.groupmedia_ext == "rm"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=2000269}</a> ]{/capture}
  {assign var='file_src' value="
    <object id='video'
      classid='CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6'
      type='application/x-oleobject'>
      <param name='url' value='`$media_path`' />
      <param name='sendplaystatechangeevents' value='True' />
      <param name='autostart' value='true' />
      <param name='autosize' value='true' />
      <param name='uimode' value='mini' />
      <param name='playcount' value='9999' />
    </OBJECT>
  "}
  {assign var='is_image' value=false}

{* DISPLAY QUICKTIME FILE *}
{elseif $media_info.groupmedia_ext == "mov" || 
	$media_info.groupmedia_ext == "moov" || 
	$media_info.groupmedia_ext == "movie" || 
	$media_info.groupmedia_ext == "qtm" || 
	$media_info.groupmedia_ext == "qt"}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=2000269}</a> ]{/capture}
  {assign var='file_src' value="
    <embed src='`$media_path`' controller='true' autosize='1' scale='1' width='550' height='350'>
  "}
  {assign var='is_image' value=false}

{* EMBED FLASH FILE *}
{elseif $media_info.groupmedia_ext == "swf"}
  {assign var='file_src' value="
	<object width='350' height='250' classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0' id='myMovieName'>
	  <param name=movie value=$media_path />
	  <param name=quality value=high />
	  <param name=bgcolor value=#FFFFFF />
	  <embed src=$media_path quality=high bgcolor=#FFFFFF width='350' height='250' name='myMovieName' align='' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer'>
	  </embed>
	</object>
  "}
  {assign var='is_image' value=false}

{* DISPLAY UNKNOWN FILETYPE *}
{else}
  {capture assign='media_download'}[ <a href='{$media_path}'>{lang_print id=2000270}</a> ]{/capture}
  {assign var='file_src' value="<a href='`$media_path`'><img src='./images/icons/file_big.gif' border='0' /></a>"}
  {assign var='is_image' value=false}
{/if}


{* ASSIGN INDICES *}
{assign var="current_index" value=$media_info.groupmedia_id|array_search:$media_keys}
{capture assign="previous_index"}{if $current_index == 0}{math equation="x-1" x=$media|@count}{else}{math equation="x-1" x=$current_index}{/if}{/capture}
{capture assign="next_index"}{if $current_index+1 == $media|@count}0{else}{math equation="x+1" x=$current_index}{/if}{/capture}
{capture assign="current_num"}{math equation="x+1" x=$current_index}{/capture}

<br />


{* SHOW PAGE NAVIGATION *}
<div style='margin-bottom: 6px;'>
  <table cellpadding='0' cellspacing='0' width='100%'>
  <tr>
  <td>
    {assign var=group_back_link value=$url->url_create("group", $smarty.const.NULL, $group->group_info.group_id)}
    {lang_sprintf id=2000271 1=$current_num 2=$media|@count 3="`$group_back_link`&v=photos" 4=$group->group_info.group_title}
    {* lang_sprintf id=2000271 1=$current_num 2=$media|@count 3="group.php?group_id=`$group->group_info.group_id`&v=photos" 4=$group->group_info.group_title *}
  </td>
  <td style='text-align: right;'>
    <a href='{$url->url_create("group_media", $smarty.const.NULL, $group->group_info.group_id, $media_keys.$previous_index)}'>{lang_print id=2000272}</a>
    &nbsp;&nbsp;&nbsp;
    <a href='{$url->url_create("group_media", $smarty.const.NULL, $group->group_info.group_id, $media_keys.$next_index)}'>{lang_print id=2000273}</a>
  </td>
  </tr>
  </table>
</div>

{* SHOW IMAGE *}
<div class='media'>
  <table cellpadding='0' cellspacing='0' align='center'>
  <tr>
  <td style='text-align: center;'>

    {* CREATE WRAPPER DIV *}
    <div id='media_photo_div' class='media_photo_div' style='{if $is_image}width:{$media_info.groupmedia_width}px;height:{$media_info.groupmedia_height}px;{/if}'>

      {* DISPLAY FILE/IMAGE *}
      {$file_src}

    </div>

    {* SHOW MEDIA DOWNLOAD LINK FOR NON-IMAGES *}
    {if $media_download != ""}
      <div style='font-weight: bold; margin-left: auto; margin-right: auto;'>{$media_download}</div>
    {/if}

    {* SHOW DIV WITH TITLE, DESC, TAGS, ETC *}
    <div class='album_media_caption' style='width: {if $media_info.groupmedia_width > 300}{$media_info.groupmedia_width}{else}300{/if}px;'>
      {if $media_info.groupmedia_title != ""}<div class='album_media_title'>{$media_info.groupmedia_title}</div>{/if}
      {if $media_info.groupmedia_desc != ""}<div>{$media_info.groupmedia_desc}</div>{/if}
      <div id='media_tags' style='display: none; margin-top: 10px;'>{lang_print id=2000274}</div>
      {if $is_image && $allowed_to_tag}
        <a href='javascript:void(0);' onClick="SocialEngine.GroupMediaTag.addTag();">{lang_print id=2000275}</a>
      {/if}
      <div class='album_media_date'>
        {assign var="uploaddate_vars" value=$datetime->time_since($media_info.groupmedia_date)}
        {capture assign="uploaddate"}{lang_sprintf id=$uploaddate_vars[0] 1=$uploaddate_vars[1]}{/capture}
        {if $media_info.uploader->user_exists}
          {lang_sprintf id=2000276 1=$uploaddate 2=$url->url_create("profile", $media_info.uploader->user_info.user_username) 3=$media_info.uploader->user_displayname}
        {else}
          {lang_sprintf id=2000277 1=$uploaddate}
        {/if}
        <br />
        <a href="javascript:TB_show('{lang_print id=2000278}', '#TB_inline?height=400&width=400&inlineId=sharethis', '', '../images/trans.gif');">{lang_print id=2000278}</a>
        - <a href="javascript:TB_show('{lang_print id=1221}', 'user_report.php?return_url={$url->url_current()|escape:url}&TB_iframe=true&height=300&width=450', '', './images/trans.gif');">{lang_print id=1221}</a>
        {if $group->user_rank == 2 || $group->user_rank == 1 || ($media_info.uploader->user_exists && $media_info.uploader->user_info.user_id == $user->user_info.user_id)}
        - <a href='javascript:void(0);' onClick="TB_show('{lang_print id=2000285}', '#TB_inline?height=250&width=300&inlineId=editdetails', '', '../images/trans.gif');">{lang_print id=2000285}</a>
        - <a href='javascript:void(0);' onClick="TB_show('{lang_print id=2000286}', '#TB_inline?height=150&width=300&inlineId=confirmdelete', '', '../images/trans.gif');">{lang_print id=2000286}</a>
        {/if}
      </div>
    </div>
  </td>
  </tr>
  </table>
</div>


{if $group->user_rank == 2 || $group->user_rank == 1 || ($media_info.uploader->user_exists && $media_info.uploader->user_info.user_id == $user->user_info.user_id)}
  {* JAVASCRIPT FOR CONFIRMING DELETION *}
  {literal}
  <script type="text/javascript">
  <!--   
    function deleteTopic() {
      window.location = '{/literal}{$url->url_create("group_media", $smarty.const.NULL, $group->group_info.group_id, $media_info.groupmedia_id)}{literal}&task=media_delete';
    }
  //-->
  </script>
  {/literal}

  {* HIDDEN DIV TO DISPLAY CONFIRMATION MESSAGE *}
  <div style='display: none;' id='confirmdelete'>
    <div style='margin-top: 10px;'>
      {lang_print id=2000287}
    </div>
    <br>
    <input type='button' class='button' value='{lang_print id=175}' onClick='parent.TB_remove();parent.deleteTopic();'> <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();'>
  </div>

  {* HIDDEN DIV TO DISPLAY EDIT DETAILS *}
  <div style='display: none;' id='editdetails'>
    <form action='{$url->url_create("group_media", $smarty.const.NULL, $group->group_info.group_id, $media_info.groupmedia_id)}' method='post' target='_parent'>
    <div style='margin-top: 10px;'>{lang_print id=2000288}</div>
    <br />
    {lang_print id=2000289}
    <br />
    <input type='text' class='text' name='groupmedia_title' value='{$media_info.groupmedia_title|escape:quotes}' maxlength='20' />
    <br />
    <br />
    {lang_print id=2000290}
    <br />
    <textarea name='groupmedia_desc' id='groupmedia_desc' rows='5' cols='35'>{$media_info.groupmedia_desc}</textarea>
    <br />
    <br />
    <input type='submit' class='button' value='{lang_print id=173}' />
    <input type='button' class='button' value='{lang_print id=39}' onClick='parent.TB_remove();' />
    <input type='hidden' name='task' value='media_edit' />
    </form>
  </div>
{/if}


{* DIV FOR SHARE THIS WINDOW *}
<div style='display: none;' id='sharethis'>
  <div style='margin: 10px 0px 10px 0px;'>{lang_print id=2000279}</div>
  <div style='margin: 10px 0px 10px 0px; font-weight: bold;'>{lang_print id=2000280}</div>
  <textarea readonly='readonly' onClick='this.select()' class='text' rows='2' cols='30' style='width: 95%; font-size: 7pt;'>{$url->url_base}{$media_path|replace:"./":""}</textarea>
  <div style='margin: 10px 0px 10px 0px; font-weight: bold;'>{lang_print id=2000281}</div>
  <textarea readonly='readonly' onClick='this.select()' class='text' rows='2' cols='30' style='width: 95%; font-size: 7pt;'><a href='{$url->url_base}{$media_path|replace:"./":""}'><img src='{$url->url_base}{$media_path|replace:"./":""}' border='0'></a></textarea>
  <div style='margin: 10px 0px 10px 0px; font-weight: bold;'>{lang_print id=2000282}</div>
  <textarea readonly='readonly' onClick='this.select()' class='text' rows='2' cols='30' style='width: 95%; font-size: 7pt;'><a href='{$url->url_base}{$media_path|replace:"./":""}'>{if $media_info.groupmedia_title != ""}{$media_info.groupmedia_title}{else}{lang_print id=589}{/if}</a></textarea>
  <div style='margin: 10px 0px 10px 0px; font-weight: bold;'>{lang_print id=2000283}</div>
  <textarea readonly='readonly' onClick='this.select()' class='text' rows='2' cols='30' style='width: 95%; font-size: 7pt;'>[url={$url->url_base}{$media_path|replace:"./":""}][img]{$url->url_base}{$media_path|replace:"./":""}[/img][/url]</textarea>
  <div style='margin-top: 10px;'>
    <input type='button' class='button' value='{lang_print id=2000284}' onClick='parent.TB_remove();'>
  </div>
</div>

  {* TAGGING *}
  {lang_javascript ids=39,1212,1213,1214,1215,1228}
      
  <script type="text/javascript">
        
  SocialEngine.GroupMediaTag = new SocialEngineAPI.Tags({ldelim}
      'canTag' : {if $allowed_to_tag}true{else}false{/if},

      'type' : 'group',
      'media_id' : {$media_info.groupmedia_id},
      'media_dir' : '{$media_dir}',

      'object_owner' : 'group',
      'object_owner_id' : {$group->group_info.group_id}

    {rdelim});
        
    SocialEngine.RegisterModule(SocialEngine.GroupMediaTag);
       
    {section name=tag_loop loop=$tags}
      SocialEngine.GroupMediaTag.insertTag('{$tags[tag_loop].groupmediatag_id}', '{if $tags[tag_loop].tagged_user->user_exists}{$url->url_create("profile", $tags[tag_loop].tagged_user->user_info.user_username)}{/if}', '{if $tags[tag_loop].tag_user->user_exists}{$tags[tag_loop].tagged_user->user_displayname}{else}{$tags[tag_loop].groupmediatag_text}{/if}', '{$tags[tag_loop].groupmediatag_x}', '{$tags[tag_loop].groupmediatag_y}', '{$tags[tag_loop].groupmediatag_width}', '{$tags[tag_loop].groupmediatag_height}', '{$tags[tag_loop].tagged_user->user_info.user_username}')
    {/section}

    // Backwards
    function insertTag(tag_id, tag_link, tag_text, tag_x, tag_y, tag_width, tag_height, tagged_user)
    {ldelim}
      SocialEngine.GroupMediaTag.insertTag(tag_id, tag_link, tag_text, tag_x, tag_y, tag_width, tag_height, tagged_user);
    {rdelim}

  </script>


</div>


{* SHOW FILES IN THIS ALBUM *}
<table cellpadding='0' cellspacing='0' align='center' style='margin-top: 20px;'>
<tr>
<td>
  <a href='javascript:void(0);' onClick='moveLeft();this.blur()'>
    <img src='./images/icons/media_moveleft.gif' border='0' onMouseOver="this.src='./images/icons/media_moveleft2.gif';" onMouseOut="this.src='./images/icons/media_moveleft.gif';" />
  </a>
</td>
<td>

  <div id='album_carousel' style='width: 562px; margin: 0px 5px 0px 5px; text-align: center; overflow: hidden;'>

    <table cellpadding='0' cellspacing='0'>
    <tr>
    <td id='thumb-2' style='padding: 0px 5px 0px 5px;'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    <td id='thumb-1' style='padding: 0px 5px 0px 5px;'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    <td id='thumb0' style='padding: 0px 5px 0px 5px;'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    {foreach name=media_loop from=$media key=k item=v}
      
      {* IF IMAGE, GET THUMBNAIL *}
      {if $v.groupmedia_ext == "jpeg" || $v.groupmedia_ext == "jpg" || $v.groupmedia_ext == "gif" || $v.groupmedia_ext == "png" || $v.groupmedia_ext == "bmp"}
        {assign var='file_dir' value=$group->group_dir($v.groupalbum_group_id)}
        {assign var='file_src' value="`$file_dir``$v.groupmedia_id`_thumb.jpg"}
      {* SET THUMB PATH FOR AUDIO *}
      {elseif $v.groupmedia_ext == "mp3" || $v.groupmedia_ext == "mp4" || $v.groupmedia_ext == "wav"}
        {assign var='file_src' value='./images/icons/audio_big.gif'}
      {* SET THUMB PATH FOR VIDEO *}
      {elseif $v.groupmedia_ext == "mpeg" || $v.groupmedia_ext == "mpg" || $v.groupmedia_ext == "mpa" || $v.groupmedia_ext == "avi" || $v.groupmedia_ext == "swf" || $v.groupmedia_ext == "mov" || $v.groupmedia_ext == "ram" || $v.groupmedia_ext == "rm"}
        {assign var='file_src' value='./images/icons/video_big.gif'}
      {* SET THUMB PATH FOR UNKNOWN *}
      {else}
        {assign var='file_src' value='./images/icons/file_big.gif'}
      {/if}
      
      {* SHOW THUMBNAILS *}
      <td id='thumb{$smarty.foreach.media_loop.iteration}' class='carousel_item{if $v.groupmedia_id == $media_info.groupmedia_id}_active{/if}'>
        <a href='{$url->url_create("group_media", $smarty.const.NULL, $group->group_info.group_id, $v.groupmedia_id)}'>
          <img src='{$file_src}' border='0' width='{$misc->photo_size($file_src,"70","70","w")}' onClick='this.blur();' />
        </a>
      </td>
      
    {/foreach}
    <td id='thumb{math equation="x+1" x=$media|@count}' class='carousel_item'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    <td id='thumb{math equation="x+2" x=$media|@count}' class='carousel_item'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    <td id='thumb{math equation="x+3" x=$media|@count}' class='carousel_item'><img src='./images/media_placeholder.gif' border='0' width='70' /></td>
    </tr>
    </table>

  </div>

</td>
<td>
  <a href='javascript:void(0);' onClick='moveRight();this.blur();'>
    <img src='./images/icons/media_moveright.gif' border='0' onMouseOver="this.src='./images/icons/media_moveright2.gif';" onMouseOut="this.src='./images/icons/media_moveright.gif';" />
  </a>
</td>
</tr>
</table>


<div style='width: {$menu_width}px; margin-left: auto; margin-right: auto;'>


{* JAVASCRIPT FOR CAROUSEL *}
{literal}
<script type='text/javascript'>
<!--

  var visiblePhotos = 7;
  var current_id = 0;
  var myFx;

  window.addEvent('domready', function() {
    myFx = new Fx.Scroll('album_carousel');
    current_id = parseInt({/literal}{math equation="x-2" x=$current_index}{literal});
    var position = $('thumb'+current_id).getPosition($('album_carousel'));
    myFx.set(position.x, position.y);
  });


  function moveLeft() {
    if($('thumb'+(current_id-1))) {
      myFx.toElement('thumb'+(current_id-1));
      myFx.toLeft();
      current_id = parseInt(current_id-1);
    }
  }

  function moveRight() {
    if($('thumb'+(current_id+visiblePhotos))) {
      myFx.toElement('thumb'+(current_id+1));
      myFx.toRight();
      current_id = parseInt(current_id+1);
    }
  }

//-->
</script>
{/literal}

<br>


{* DISPLAY POST COMMENT BOX *}
<div style='margin-left: auto; margin-right: auto;'>

  {* COMMENTS *}
  <div id="groupmedia_{$media_info.groupmedia_id}_postcomment"></div>
  <div id="groupmedia_{$media_info.groupmedia_id}_comments" style='margin-left: auto; margin-right: auto;'></div>
      
  {lang_javascript ids=39,155,175,182,183,184,185,187,784,787,829,830,831,832,833,834,835,854,856,891,1025,1026,1032,1034,1071}
      
  <script type="text/javascript">
        
    SocialEngine.GroupMediaComments = new SocialEngineAPI.Comments({ldelim}
      'canComment' : {if $allowed_to_comment}true{else}false{/if},
      'commentHTML' : '{$setting.setting_comment_html|replace:",":", "}',
      'commentCode' : {if $setting.setting_comment_code}true{else}false{/if},

      'type' : 'groupmedia',
      'typeIdentifier' : 'groupmedia_id',
      'typeID' : {$media_info.groupmedia_id},
          
      'typeTab' : 'groupmedia',
      'typeCol' : 'groupmedia',
      'typeTabParent' : 'groupalbums',
      'typeColParent' : 'groupalbum',
      'typeChild' : true,
          
      'initialTotal' : {$total_comments|default:0},

      'object_owner' : 'group',
      'object_owner_id' : {$group->group_info.group_id}
    {rdelim});
        
    SocialEngine.RegisterModule(SocialEngine.GroupMediaComments);
       
    // Backwards
    function addComment(is_error, comment_body, comment_date)
    {ldelim}
      SocialEngine.GroupMediaComments.addComment(is_error, comment_body, comment_date);
    {rdelim}
        
    function getComments(direction)
    {ldelim}
      SocialEngine.GroupMediaComments.getComments(direction);
    {rdelim}

  </script>

</div>




</div>



{include file='footer.tpl'}