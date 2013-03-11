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
    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>

    <h1><?php echo $heading_title; ?></h1>
    <br>
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content"><?php echo $content_top; ?>


        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit">
        <h2><?php echo $text_password; ?></h2>
        <div class="content">
          <table class="form">
            <tr>
              <td><span class="required">*</span> <?php echo $entry_password; ?></td>
              <td><input type="password" name="password" value="<?php echo $password; ?>" />
                <?php if ($error_password) { ?>
                <span class="error"><?php echo $error_password; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
              <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                <?php if ($error_confirm) { ?>
                <span class="error"><?php echo $error_confirm; ?></span>
                <?php } ?></td>
            </tr>
          </table>
            <div class="buttons">
                <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                <div class="right">
                    <a  class="button" onclick="$('#edit').submit();">
                        <span> <?php echo $button_continue; ?> </span>
                    </a>
                </div>
            </div>
        </div>

      </form>
      <?php echo $content_bottom; ?>
    </div>
</div>

<?php echo $footer; ?>