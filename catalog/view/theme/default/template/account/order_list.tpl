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
            margin-right: 24px;
        }
        #content .content{
            width:77%;
        }
        #column-right + #content {
            margin-right: 0;
        }
    </style>
    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>

    <h1><?php echo $heading_title; ?></h1>
    <?php echo $column_left; ?><?php echo $column_right; ?>

    <div id="content">

      <?php if ($orders) { ?>
      <?php foreach ($orders as $order) { ?>
      <div class="order-list">
        <div class="order-id"><b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?></div>
        <div class="order-status"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></div>
        <div class="order-content">
          <div><b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
            <b><?php echo $text_products; ?></b> <?php echo $order['products']; ?></div>
          <div><b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
            <b><?php echo $text_total; ?></b> <?php echo $order['total']; ?></div>
          <div class="order-info"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/default/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></div>
        </div>
      </div>
      <?php } ?>
      <div class="pagination"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <?php } ?>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $footer; ?>