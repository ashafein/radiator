<?php echo $header; ?>
<div id="container_bg">
    <style type="text/css">
        #container_bg {
            width: 1055px;
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

        #content {
            background-color: #fff;
            padding: 10px 5px 10px 10px;
        }
    </style>
    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
    <br>
    <div id="notification"></div>
    <?php echo $column_left; ?><?php echo $column_right; ?>

    <div id="content">
        <?php echo $content_top; ?>

      <?php if ($thumb || $description) { ?>
      <div class="category-info">
        <?php if ($thumb) { ?>
        <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <?php echo $description; ?>
        <?php } ?>
      </div>
      <?php } ?>

      <?php if ($categories) { ?>
      <div class="column">

      <div class="category-list block">
            <h2><?php echo $text_refine; ?></h2>
            <?php if (count($categories) <= 5) { ?>
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
            <?php } else { ?>
            <?php for ($i = 0; $i < count($categories);) { ?>
            <ul>
              <?php $j = $i + ceil(count($categories) / 4); ?>
              <?php for (; $i < $j; $i++) { ?>
              <?php if (isset($categories[$i])) { ?>
              <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
          </div>
          <?php } ?>
      </div>
      <?php if ($products) { ?>
      <div class="product-filter column">
          <div class="limit">
              <dl class="btn-drop">
                  <dt></dt>
                  <dd><?php echo $limit; ?></dd>
                  <select onchange="location = this.value;">
                      <?php foreach ($limits as $limits) { ?>
                      <?php if ($limits['value'] == $limit) { ?>
                      <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                      <?php } else { ?>
                      <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                      <?php } ?>
                      <?php } ?>
                  </select>
               </dl>
              <b><?php echo $text_limit; ?></b>
          </div>

          <div class="sort">
              <dl class="btn-drop">
              <dt></dt>
                  <?php foreach ($sorts as $sortings) { ?>
                      <?php if ($sortings['value'] == $sort . '-' . $order) { ?>
                          <dd>
                              <?php echo $sortings['text']; ?>
                          </dd>
                      <?php } ?>
                  <?php } ?>

              <select onchange="location = this.value;">
                  <?php foreach ($sorts as $sorts) { ?>
                      <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                      <?php } ?>
                  <?php } ?>
              </select>
              </dl>
              <b><?php echo $text_sort; ?></b>
          </div>

          <div class="display">
              <div class="catz">
                  <a class="view-list" onclick="display('list');" title="List">
                      <?php echo $text_list; ?>
                      <span class="icon icon-list"> </span>
                  </a>

                  <a class="view-grid" onclick="display('grid');" title="Grid">
                      <?php echo $text_grid; ?>
                      <span class="icon icon-grid"> </span>
                  </a>

              </div>
              <b><?php echo $text_display; ?></b>
          </div>

          <div class="product-compare">
              <a href="<?php echo $compare; ?>" id="compare-total">
                  <?php echo $text_compare; ?>
              </a>
          </div>
          <div class="clearfix"></div>

      </div>



       <div class="product-list">
        <?php foreach ($products as $product) { ?>
        <div class="struct">

            <?php if ($product['thumb']) { ?>

                     <a class="image-link" href="<?php echo $product['href']; ?>">
                         <div class="image">
                             <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                         </div>
                     </a>

            <?php } ?>
          <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="description"><?php echo $product['description']; ?></div>
          <?php if ($product['price']) { ?>
          <div class="price">
            <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
            <?php } else { ?>
            <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
            <br />
            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if ($product['rating']) { ?>
          <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
          <?php } ?>

          <div class="cart">
              <a title="Add to Compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');">
                  <?php echo $button_compare; ?>
                  <span class="icon icon-compare"> </span>
              </a>
              <a title="Add to Cart" onclick="addToCart('<?php echo $product['product_id']; ?>');">
                  <span class="icon icon-basket"> </span>
              </a>
              <a title="Add to Wish List" onclick="addToWishList('<?php echo $product['product_id']; ?>');">
                  <?php echo $button_wishlist; ?>
                  <span class="icon icon-wish"> </span>
              </a>
          </div>

         </div>
        <?php } ?>
      </div>
      <div class="pagination"><?php echo $pagination; ?></div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <script type="text/javascript">
    <!--
    function display(view) {
        if (view == 'list') {
            $('.product-grid').attr('class', 'product-list');
            $('.product-list > div').each(function(index, element) {
                var image = $(element).find('.image-link').html();
                var price = $(element).find('.price').html();
                var rating = $(element).find('.rating').html();
                var cart = '<div class="cart catz">' + $(element).find('.cart').html() + '</div>';
                image = (image != null) ? '<a href="' + $(element).find('.image-link').attr('href') + '" class="image-link">' + image + '</a>' : '';
                price = (price != null) ? '<div class="price">' + price + '</div>' : '';
                rating = (rating != null) ? '<div class="rating" title="' + $(element).find('.rating').attr('title') + '">' + rating + '</div>' : '';
                html =
                        '<div class="struct-right"></div>' +
                                '<div class="struct-left"></div>' +
                                '<div class="struct-center">' +
                                '<div class="line">' +
                                image +
                                '<div class="right">' + price + cart + '</div>' +
                                '<div class="name">' + $(element).find('.name').html() + '</div>' +
                                rating +
                                '<div class="description">' + $(element).find('.description').html() + '</div>' +
                                '<div class="clearfix"></div>' +
                                '</div>' +
                                '</div>';
                $(element).html(html);
            });
            $('.display a').removeClass('active');
            $('.display a.view-list').addClass('active');
            $.cookie('display', 'list');
        } else {
            $('.product-list').attr('class', 'product-grid');
            $('.product-grid > div').each(function(index, element) {
                var image = $(element).find('.image-link').html();
                var price = $(element).find('.price').html();
                var rating = $(element).find('.rating').html();
                var cart = '<div class="cart catz">' + $(element).find('.cart').html() + '</div>';
                image = (image != null) ? '<a href="' + $(element).find('.image-link').attr('href') + '" class="image-link">' + image + '</a>' : '';
                price = (price != null) ? '<div class="price">' + price + '</div>' : '';
                rating = (rating != null) ? '<div class="rating" title="' + $(element).find('.rating').attr('title') + '">' + rating + '</div>' : '';
                html =
                        '<div class="struct-right"></div>' +
                                '<div class="struct-left"></div>' +
                                '<div class="struct-center">' +
                                image +
                                '<div class="name">' + $(element).find('.name').html() + '</div>' +
                                price +
                                cart +
                                rating +
                                '<div class="description">' + $(element).find('.description').html() + '</div>' +
                                '</div>';
                $(element).html(html);
            });
            $('.display a').removeClass('active');
            $('.display a.view-grid').addClass('active');
            $.cookie('display', 'grid');
        }
    }
    view = $.cookie('display');
    if (view) {
        display(view);
    } else {
        display('list');
    }

    //--></script>
</div>
<br>
<?php echo $footer; ?>