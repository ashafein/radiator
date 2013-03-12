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
            background-color: #FFFFD8;
            color: #000000;
        }
        .content p {
            margin-top: 10px;
        }
    </style>

    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
    <br>
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
        <?php echo $content_top; ?>

  <?php if (isset($news_info)) { ?>
    <div class="content" <?php if ($image) { echo 'style="min-height: ' . $min_height . 'px;"'; } ?>
      <?php if ($image) { ?>
        <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="fancybox"><img align="left" style="border: none; margin: 5px 10px;" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      <?php echo $description; ?>
    </div>
    <div class="buttons">
      <div class="right"><a onclick="location='<?php echo $news; ?>'" class="button"><span><?php echo $button_news; ?></span></a></div>
    </div>
  <?php } elseif (isset($news_data)) { ?>
    <?php foreach ($news_data as $news) { ?>
      <div class="content">
        <h3 style="margin-top: 5px;"><?php echo $news['title']; ?></h3>
        <?php echo $news['description']; ?> &hellip; <a href="<?php echo $news['href']; ?>"><?php echo $text_read_more; ?></a></p>
        <p><b><?php echo $text_date_added; ?></b>&nbsp;<?php echo $news['date_added']; ?></p>
      </div>
    <?php } ?>
  <?php } ?>
  <?php echo $content_bottom; ?>
</div>
</div>
<br />
<br />
<?php echo $footer; ?>
