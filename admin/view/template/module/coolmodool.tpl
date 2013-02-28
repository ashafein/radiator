<?php echo $header; ?>
<link id="Cuprum" href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/theme_control.css" media="screen">
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <div></div>
      
      <div id="themerz-settings-main">
      <h1><span><?php echo $entry_fashion_street_banner_images; ?></span></h1>
<!-- Banner 1 -->      

<h3><span><?php echo $entry_cb_1; ?></span></h3>
<div class="content-boxes">
<div class="left">
<div class="browse_image"><img src="<?php echo $cbanner1; ?>" alt="" id="thumb-cbanner1" />
<input type="hidden" name="config_cbanner1" value="<?php echo $config_cbanner1; ?>" id="cbanner1" />
</div>
<a onclick="image_upload('cbanner1', 'thumb-cbanner1');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-cbanner1').attr('src', '../image/no_image.jpg'); $('#cbanner1').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
</div>
<div class="contents">
<div>
<table>
<tr>
<td><label class="hint"><?php echo $entry_b_title; ?></label></td>
<td><input id="cbanner1_title" type="text" name="cbanner1_title" value="<?php echo $cbanner1_title ; ?>" class="text"></td>
</tr>
<tr>
<td style="vertical-align:top;"><label class="hint"><?php echo $entry_b_content; ?></label></td>
<td><textarea  id="cbanner1_content" type="text" name="cbanner1_content" class="textarea"><?php echo $cbanner1_content ; ?></textarea></td>
</tr>
<tr>
<td><label class="hint"><?php echo $entry_b_url; ?></label></td>
<td><input id="cbanner1_url" type="text" name="cbanner1_url" value="<?php echo $cbanner1_url ; ?>" class="text"></td>
</tr>
</table>
</div>
<div class="clearfix"></div>
<div>
</div>
<div class="clearfix"></div>



</div>
<div class="clearfix_last"></div>
</div>
<div class="clearfix"></div>

<!-- Banner 2 -->      

<h3><span><?php echo $entry_cb_2; ?></span></h3>
<div class="content-boxes">
<div class="left">
<div class="browse_image"><img src="<?php echo $cbanner2; ?>" alt="" id="thumb-cbanner2" />
<input type="hidden" name="config_cbanner2" value="<?php echo $config_cbanner2; ?>" id="cbanner2" />
</div>
<a onclick="image_upload('cbanner2', 'thumb-cbanner2');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-cbanner2').attr('src', '../image/no_image.jpg'); $('#cbanner2').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
</div>
<div class="contents">
<div>
<table>
<tr>
<td><label class="hint"><?php echo $entry_b_title; ?></label></td>
<td><input id="cbanner2_title" type="text" name="cbanner2_title" value="<?php echo $cbanner2_title ; ?>" class="text"></td>
</tr>
<tr>
<td style="vertical-align:top;"><label class="hint"><?php echo $entry_b_content; ?></label></td>
<td><textarea  id="cbanner2_content" type="text" name="cbanner2_content" class="textarea"><?php echo $cbanner2_content ; ?></textarea></td>
</tr>
<tr>
<td><label class="hint"><?php echo $entry_b_url; ?></label></td>
<td><input id="cbanner2_url" type="text" name="cbanner2_url" value="<?php echo $cbanner2_url ; ?>" class="text"></td>
</tr>
</table>
</div>
<div class="clearfix"></div>
<div>
</div>
<div class="clearfix"></div>



</div>
<div class="clearfix_last"></div>
</div>
<div class="clearfix"></div>
<!-- Banner 3 -->      

<h3><span><?php echo $entry_cb_3; ?></span></h3>
<div class="content-boxes">
<div class="left">
<div class="browse_image"><img src="<?php echo $cbanner3; ?>" alt="" id="thumb-cbanner3" />
<input type="hidden" name="config_cbanner3" value="<?php echo $config_cbanner3; ?>" id="cbanner3" />
</div>
<a onclick="image_upload('cbanner3', 'thumb-cbanner3');" class="buttons"><?php echo $entry_browse_image; ?></a> <a onclick="$('#thumb-cbanner3').attr('src', '../image/no_image.jpg'); $('#cbanner3').attr('value', '');" class="buttons"><?php echo $entry_clear_image; ?></a>
</div>
<div class="contents">
<div>
<table>
<tr>
<td><label class="hint"><?php echo $entry_b_title; ?></label></td>
<td><input id="cbanner3_title" type="text" name="cbanner3_title" value="<?php echo $cbanner3_title ; ?>" class="text"></td>
</tr>
<tr>
<td style="vertical-align:top;"><label class="hint"><?php echo $entry_b_content; ?></label></td>
<td><textarea  id="cbanner3_content" type="text" name="cbanner3_content" class="textarea"><?php echo $cbanner3_content ; ?></textarea></td>
</tr>
<tr>
<td><label class="hint"><?php echo $entry_b_url; ?></label></td>
<td><input id="cbanner3_url" type="text" name="cbanner3_url" value="<?php echo $cbanner3_url ; ?>" class="text"></td>
</tr>
</table>
</div>
<div class="clearfix"></div>
<div>
</div>
<div class="clearfix"></div>



</div>
<div class="clearfix_last"></div>
</div>
<div class="clearfix"></div>
      </div>
      <table id="module" class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $entry_layout; ?></td>
            <td class="left"><?php echo $entry_position; ?></td>
            <td class="left"><?php echo $entry_status; ?></td>
            <td class="right"><?php echo $entry_sort_order; ?></td>
            <td></td>
          </tr>
        </thead>
        <?php $module_row = 0; ?>
        <?php foreach ($modules as $module) { ?>
        <tbody id="module-row<?php echo $module_row; ?>">
          <tr>
            <td class="left"><select name="coolmodool_module[<?php echo $module_row; ?>][layout_id]">
                <?php foreach ($layouts as $layout) { ?>
                <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            <td class="left"><select name="coolmodool_module[<?php echo $module_row; ?>][position]">
                <?php if ($module['position'] == 'content_top') { ?>
                <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                <?php } else { ?>
                <option value="content_top"><?php echo $text_content_top; ?></option>
                <?php } ?>  
                <?php if ($module['position'] == 'content_bottom') { ?>
                <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                <?php } else { ?>
                <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                <?php } ?>     
              </select></td>
            <td class="left"><select name="coolmodool_module[<?php echo $module_row; ?>][status]">
                <?php if ($module['status']) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            <td class="right"><input type="text" name="coolmodool_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
          </tr>
        </tbody>
        <?php $module_row++; ?>
        <?php } ?>
        <tfoot>
          <tr>
            <td colspan="4"></td>
            <td class="left"><a onclick="addModule();" class="button"><?php echo $button_add_module; ?></a></td>
          </tr>
        </tfoot>
      </table>
    </form>
  </div>
</div>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="coolmodool_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="coolmodool_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="coolmodool_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="coolmodool_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script>
<?php echo $footer; ?>