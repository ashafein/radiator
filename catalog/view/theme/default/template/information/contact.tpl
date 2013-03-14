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
        .content .right b,
        .content .left b{
            font-weight: bold;
        }
        .content br {
            display: block;
            margin-bottom: 5px;
        }
    </style>

    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <br />
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
    <br />
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
    <?php echo $content_top; ?>

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
        <h2><?php echo $text_location; ?></h2>
        <div class="contact-info">
          <div class="content">
            <div class="left"><b><?php echo $text_address; ?></b><br />
            <?php echo $store; ?><br />
            <?php echo $address; ?></div>
          <div class="right">
            <?php if ($telephone) { ?>
            <b><?php echo $text_telephone; ?></b><br />
            <?php echo $telephone; ?><br />
            <br />
            <?php } ?>
            <?php if ($fax) { ?>
            <b><?php echo $text_fax; ?></b><br />
            <?php echo $fax; ?>
            <?php } ?>
          </div>
        </div>
        </div>
        <h2><?php echo $text_contact; ?></h2>
        <div class="content">
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="<?php echo $name; ?>" />
        <br />
        <?php if ($error_name) { ?>
        <span class="error"><?php echo $error_name; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_email; ?></b><br />
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <br />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_enquiry; ?></b><br />
        <textarea name="enquiry" cols="40" rows="10" style="width: 90%;"><?php echo $enquiry; ?></textarea>
        <br />
        <?php if ($error_enquiry) { ?>
        <span class="error"><?php echo $error_enquiry; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
        <br />
        <img src="index.php?route=information/contact/captcha" alt="" />
        <?php if ($error_captcha) { ?>
        <span class="error"><?php echo $error_captcha; ?></span>
        <?php } ?>
        <div class="buttons">
            <div class="right">
                <a  class="button" onclick="$('#contact').submit();">
                    <span> <?php echo $button_continue; ?> </span>
                </a>            </div>
        </div>
        </div>

      </form>
    </div>
  <?php echo $content_bottom; ?></div>
<br />
<br />
<?php echo $footer; ?>