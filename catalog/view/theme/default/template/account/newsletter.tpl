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

        #content .content{

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

    <div id="content">
    <?php echo $content_top; ?>

  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_newsletter; ?></td>
          <td><?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
        <a class="button" onclick="$('#newsletter').submit();">
            <span><?php echo $button_continue; ?> </span>
        </a>
    </div>
  </form>
  <?php echo $content_bottom; ?>
 </div>
</div>
<?php echo $footer; ?>