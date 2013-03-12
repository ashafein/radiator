<?php echo $header; ?>

<div id="container_bg">
    <style type="text/css">
        body {
            background:#E8A729 url(catalog/view/theme/default/image/body_listing.png) repeat-x;
        }
        .linktree {
            margin-top:0px;
            margin-bottom:10px;
            margin-left:3px;
        }
        .linktree a {
            color: #4C6C00;
            text-decoration:none;
            font-size:11px;
        }

        #content .content {
            border: none;
            box-shadow: none;
        }
        .content .right b,
        .content .left b{
            font-weight: bold;
        }
        .content br {
            display: block;
            margin-bottom: 5px;
        }
        #content .content{
            color: #000000;
        }

    </style>

    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>

    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
        <?php echo $content_top; ?>

        <?php echo $description; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?>
  </div>
</div>
<?php echo $footer; ?>