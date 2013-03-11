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
        <?php echo $content_top; ?>

    <?php if ($success) { ?>
    <div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    <?php } ?>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="wish-list">
          <?php if ($products) { ?>
          <div class="wishlist-product">
            <table>
              <thead>
                <tr>
                  <td class="image"><?php echo $column_image; ?></td>
                  <td class="name"><?php echo $column_name; ?></td>
                  <td class="model"><?php echo $column_model; ?></td>
                  <td class="stock"><?php echo $column_stock; ?></td>
                  <td class="price"><?php echo $column_price; ?></td>
                  <td class="action"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <?php foreach ($products as $product) { ?>
              <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
                <tr>
                  <td class="image"><?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                    <?php } ?></td>
                  <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                  <td class="model"><?php echo $product['model']; ?></td>
                  <td class="stock"><?php echo $product['stock']; ?></td>
                  <td class="price"><?php if ($product['price']) { ?>
                    <div class="price">
                      <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                      <?php } else { ?>
                      <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                      <?php } ?>
                    </div>
                    <?php } ?></td>
                  <td class="action">
                      <img src="catalog/view/theme/default/image/cart_active.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;
                      <a href="<?php echo $product['remove']; ?>">
                          <img src="catalog/view/theme/default/image/remove_2.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" />
                      </a>
                  </td>
                </tr>
              </tbody>
              <?php } ?>
            </table>
          </div>
     </form>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?>
    </div>
</div>

<?php echo $footer; ?>