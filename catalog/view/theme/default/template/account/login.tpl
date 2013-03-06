<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

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
        <br>
      <?php echo $column_left; ?><?php echo $column_right; ?>
      <div id="content">
          <div class="login-content">
            <div class="left">
              <h2><?php echo $text_new_customer; ?></h2>
              <div class="content">
                <p><b><?php echo $text_register; ?></b></p>
                <p><?php echo $text_register_account; ?></p>
                <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
            </div>
            <div class="right">
              <h2><?php echo $text_returning_customer; ?></h2>
              <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="content">
                  <p><?php echo $text_i_am_returning_customer; ?></p>
                  <b><?php echo $entry_email; ?></b><br />
                  <input type="text" name="email" value="<?php echo $email; ?>" />
                  <br />
                  <br />
                  <b><?php echo $entry_password; ?></b><br />
                  <input type="password" name="password" value="<?php echo $password; ?>" />
                  <br />
                  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
                  <br />
                  <a  class="button" onclick="$('#login').submit();">
                     <span> <?php echo $button_login; ?> </span>
                  </a>
                  <?php if ($redirect) { ?>
                  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                  <?php } ?>
                </div>
              </form>
            </div>
          </div>
      </div>
    </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>