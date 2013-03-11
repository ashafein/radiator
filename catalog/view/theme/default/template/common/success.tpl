<?php echo $header; ?>
<div id="container_bg">
        <style type="text/css">
            #container_bg {
                width: 1000px;
            }

            body {
                background:#E8A729 url(catalog/view/theme/default/image/body_listing.png) repeat-x;
            }
            .linktree {
                margin-top:0px;
                margin-bottom:10px;
                margin-left:3px;
            }
            .linktree a {
                text-decoration:none;
                font-size:11px;
            }
            a.button{
                margin-right: 65px;
            }
            #column-right+p+p{
                width:80%;
            }
        </style>

    <div id="content"><?php echo $content_top; ?>
        <div class="linktree">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
        <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
        <br>
        <?php echo $column_left; ?><?php echo $column_right; ?>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
 </div>
<br>
<br>
<?php echo $footer; ?>