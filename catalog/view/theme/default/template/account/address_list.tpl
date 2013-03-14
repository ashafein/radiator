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
        #column-right + #content {
            margin-right: 0;
            width:80%;
        }

    </style>
    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <br />
    <h1><?php echo $heading_title; ?></h1>
    <?php echo $column_left; ?><?php echo $column_right; ?>

    <div id="content"><?php echo $content_top; ?>


<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

  <h2><?php echo $text_address_book; ?></h2>
  <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table class="client-address-list" style="width: 100%;">
      <tr>
        <td>
            <?php echo $result['address']; ?>
        </td>
        <td style="text-align: right;">
            <a href="<?php echo $result['update']; ?>" class="button">
                 <?php echo $button_edit; ?>
            </a> &nbsp;
            <a href="<?php echo $result['delete']; ?>" class="button">
                <?php echo $button_delete; ?>
            </a>
        </td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
  </div>
  <?php echo $content_bottom; ?>
 </div>
</div>
    <?php echo $footer; ?>