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

    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
        <?php echo $content_top; ?>

  <div class="sitemap-info">
    <div class="left">
      <ul>
        <?php foreach ($categories as $category_1) { ?>
        <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
          <?php if ($category_1['children']) { ?>
          <ul>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
              <?php if ($category_2['children']) { ?>
              <ul>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
    <div class="right">
      <ul>
        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
          <ul>
            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
            <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
          </ul>
        </li>
        <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
        <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
        <li><?php echo $text_information; ?>
          <ul>
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <?php echo $content_bottom; ?>
 </div>
</div>
<br />
<br />
<?php echo $footer; ?>