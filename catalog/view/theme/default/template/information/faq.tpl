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

      <div class="content">
       <?php if( $description)  { ?>
           <div class=" faq-text">
            <?php echo $description; ?>
           </div>
        <?php } ?>
        <?php if (isset($topics)) { ?>
          <div class="content">
          <?php foreach ($topics as $topic) { ?>
          <div class="faq-list" style="margin-bottom: 10px;">
              <a href="<?php echo $topic['href']; ?>">
                  <?php echo $topic['title']; ?>
              </a>
          </div>
          <?php } ?>
          </div>
        <?php } ?>
      </div>
      <div class="buttons">
        <?php if (isset($button_faq)) { ?>
        <div class="right"><a onclick="location = '<?php echo $faq; ?>'" class="button"><span><?php echo $button_faq; ?></span></a></div>
        <?php } else { ?>
        <div class="right"><a onclick="location = '<?php echo $continue; ?>'" class="button"><span><?php echo $button_continue; ?></span></a></div>
        <?php } ?>
      </div>
      <?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $footer; ?>
