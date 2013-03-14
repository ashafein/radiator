<?php echo $header; ?>


<div id="container_bg">

    <style type="text/css">
        body {
            background:#E8A729 url(catalog/view/theme/SimpleCart/image/body_listing.png) repeat-x;
        }
        .linktree {
            margin-top:0px;
            margin-bottom:10px;
            margin-left:3px;
        }
        .linktree a {
            color:#4C6C00;
            text-decoration:none;
            font-size:11px;
        }
    </style>
    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <br />
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>

  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
      <?php echo $content_top; ?>

      <br>
      <?php if ($error_warning) { ?>
      <div class="warning"><?php echo $error_warning; ?></div>
      <?php } ?>
      <br>
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <div class="form">
        <div>
          <span><?php echo $entry_email; ?></span>
          <span><input type="text" name="email" value="" /></span>
        </div>
      </div>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
      <div class="right">
          <a class="button" onclick="$('#forgotten').submit();">
            <span><?php echo $button_continue; ?> </span>
          </a>
      </div>
    </div>
  </form>
    <br>
    <br>
    <br>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>