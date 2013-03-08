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
            #welcome a.login {
                background:#025881;
                border-radius:3px;
                border: solid 1px #ccc;
                text-shadow:0 1px 0 #fff;
                border-color:#ccc;
                border-bottom-color:#aaa;
                background-color:#e0e0e0;
                filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#ffffffff,EndColorStr=#ffe0e0e0);
                background-image:-moz-linear-gradient(top,#fff 0,#e0e0e0 100%);
                background-image:-ms-linear-gradient(top,#fff 0,#e0e0e0 100%);
                background-image:-o-linear-gradient(top,#fff 0,#e0e0e0 100%);
                background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#fff),color-stop(100%,#e0e0e0));
                background-image:-webkit-linear-gradient(top,#fff 0,#e0e0e0 100%);
                background-image:linear-gradient(to bottom,#fff 0,#e0e0e0 100%);
                -moz-box-shadow:inset 0 0 1px #fff;
                -ms-box-shadow:inset 0 0 1px #fff;
                -webkit-box-shadow:inset 0 0 1px #fff;box-shadow:inset 0 0 1px #fff;
            }
        </style>

        <div class="linktree">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
        <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
        <br>
    <?php if ($success) { ?>
    <div class="success"><?php echo $success; ?></div>
    <?php } ?>

    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content"><?php echo $content_top; ?>

      <h2><?php echo $text_my_account; ?></h2>
      <div class="content">
        <ul>
          <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
          <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
          <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        </ul>
      </div>
      <h2><?php echo $text_my_orders; ?></h2>
      <div class="content">
        <ul>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
          <?php if ($reward) { ?>
          <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
        </ul>
      </div>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <div class="content">
        <ul>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <?php echo $content_bottom; ?></div>
</div>
<br>
<br>
<?php echo $footer; ?> 