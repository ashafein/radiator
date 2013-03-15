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
            text-decoration:none;
            font-size:11px;
        }
        .priced {
            overflow:hidden;
        }
        .rating {
            padding-bottom:14px;
            padding-top:10px;
        }
        .box-product .image img {
            padding-bottom:6px;
        }
        .name {
            width:200px;
        }
        .box-product {
            width:100%;
            overflow: auto;
        }
        .box-product > div {
            margin-right:110px;
        }
    </style>





    <div class="linktree">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <br>
    <h1 style="margin-top:10px;"><?php echo $heading_title; ?></h1>
    <br>
    <div id="notification"></div>
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <div id="content">
    <?php echo $content_top; ?>
        <div class="block-white">
            <div class="block-content"> </div>
            <div class="separator"></div>
            <div class="block-content">
                <div class="product-info">
                <?php if ($thumb || $images) { ?>
                <div class="left">
                  <?php if ($thumb) { ?>
                  <div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
                  <?php } ?>
                  <?php if ($images) { ?>
                  <div class="image-additional">
                    <?php foreach ($images as $image) { ?>
                    <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </div>
                <?php } ?>


                <div class="right">
                    <div id="tabs" class="tabs">
                            <a class="" href="#tab-information">
                                <img style="margin-top:6px;" src="catalog/view/theme/default/image/Info.png">
                                <div></div>
                            </a>
                        <?php if ($description) { ?>
                             <a class="" href="#tab-description"><?php echo $tab_description; ?></a>
                        <?php } ?>
                        <?php if ($review_status) { ?>
                            <a class="" href="#tab-review"><?php echo $tab_review; ?></a>
                        <?php } ?>
                        <?php if ($products) { ?>
                            <a class="" href="#tab-related"><?php echo $tab_related; ?>(<?php echo count($products); ?>)</a>
                        <?php } ?>
                    </div>
                    <div id="tab-information" class="tab-content" >
                        <div id="information"></div>
                        <div class="description">
                            <?php if ($manufacturer) { ?>
                                <span>
                                    <?php echo $text_manufacturer; ?>
                                </span>
                                <a href="<?php echo $manufacturers; ?>"><
                                    ?php echo $manufacturer; ?>
                                </a>
                                <br />
                            <?php } ?>
                            <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
                            <div class="attribute">
                                <?php foreach ($attribute_groups as $attribute_group) { ?>
                                <div>
                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                <div>
                                    <span><?php echo $attribute['name']; ?>:</span>
                                    <?php echo $attribute['text']; ?>
                                </div>
                                <?php } ?>
                                </div>
                                <?php } ?>
                            </div>
                            <?php if ($reward) { ?>
                            <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
                            <?php } ?>
                            <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
                        <?php if ($price) { ?>
                        <div class="price"><?php echo $text_price; ?>
                            <?php if (!$special) { ?>
                            <?php echo $price; ?>
                            <?php } else { ?>
                                <span class="price-new"><?php echo $special; ?></span>
                                <span class="price-old"><?php echo $price; ?></span>
                            <?php } ?>
                            <br />
                            <?php if ($tax) { ?>
                            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
                            <?php } ?>
                            <?php if ($points) { ?>
                            <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
                            <?php } ?>
                            <?php if ($discounts) { ?>
                            <br />
                            <div class="discount">
                                <?php foreach ($discounts as $discount) { ?>
                                <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                                <?php } ?>
                            </div>
                            <?php } ?>
                        </div>
                        <?php } ?>
                        <?php if ($options) { ?>
                        <div class="options">
                            <h2><?php echo $text_option; ?></h2>
                            <br />
                            <?php foreach ($options as $option) { ?>
                            <?php if ($option['type'] == 'select') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <select name="option[<?php echo $option['product_option_id']; ?>]">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($option['option_value'] as $option_value) { ?>
                                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                        <?php if ($option_value['price']) { ?>
                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                        <?php } ?>
                                    </option>
                                    <?php } ?>
                                </select>
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'radio') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </label>
                                <br />
                                <?php } ?>
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'checkbox') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </label>
                                <br />
                                <?php } ?>
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'image') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <table class="option-image">
                                    <?php foreach ($option['option_value'] as $option_value) { ?>
                                    <tr>
                                        <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                                        <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                                        <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                            <?php } ?>
                                        </label></td>
                                    </tr>
                                    <?php } ?>
                                </table>
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'text') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'textarea') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'file') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
                                <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'date') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'datetime') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
                            </div>
                            <br />
                            <?php } ?>
                            <?php if ($option['type'] == 'time') { ?>
                            <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                <?php if ($option['required']) { ?>
                                <span class="required">*</span>
                                <?php } ?>
                                <b><?php echo $option['name']; ?>:</b><br />
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
                            </div>
                            <br />
                            <?php } ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                        <br>
                        <div class="cart">
                            <div><?php echo $text_qty; ?>
                                <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
                                <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                                &nbsp;
                                <a id="button-cart" class="button">
                                    <span><?php echo $button_cart; ?></span>
                                </a>
                            </div>
                            <div>
                                <span>&nbsp;&nbsp;&nbsp;
                                    <?php echo $text_or; ?>&nbsp;&nbsp;&nbsp;
                                </span>
                            </div>

                            <div>
                                <a class="wishlist" onclick="addToWishList('<?php echo $product_id; ?>');">
                                    <img title="Add to Wish List" style="margin-top:6px;" src="catalog/view/theme/default/image/wishlist.png">
                                </a>
                                <a class="compare" onclick="addToCompare('<?php echo $product_id; ?>');">
                                    <img title="Add to Compare" style="margin-top:6px;" src="catalog/view/theme/default/image/compare.png">
                                </a>
                            </div>

                            <?php if ($minimum > 1) { ?>
                            <div class="minimum"><?php echo $text_minimum; ?></div>
                            <?php } ?>
                        </div>
                        <?php if ($review_status) { ?>
                        <div class="review">
                            <div><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
                            <div class="share"><!-- AddThis Button BEGIN -->
                                <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
                                <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script>
                                <!-- AddThis Button END -->
                            </div>
                        </div>
                        <?php } ?>
                        <div>
                            <?php echo $description; ?>
                        </div>

                    </div>
                    <div id="tab-description" class="tab-content content" >
                        <?php echo $description; ?>
                    </div>

                    <?php if ($review_status) { ?>
                    <div id="tab-review" class="tab-content">
                        <div id="review"></div>
                        <h2 id="review-title"><?php echo $text_write; ?></h2>
                        <b><?php echo $entry_name; ?></b><br />
                        <input type="text" name="name" value="" />
                        <br />
                        <br />
                        <b><?php echo $entry_review; ?></b>
                        <textarea name="text" cols="40" rows="8" style="width: 93%;"></textarea>
                        <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
                        <br />
                        <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                        <input type="radio" name="rating" value="1" />
                        &nbsp;
                        <input type="radio" name="rating" value="2" />
                        &nbsp;
                        <input type="radio" name="rating" value="3" />
                        &nbsp;
                        <input type="radio" name="rating" value="4" />
                        &nbsp;
                        <input type="radio" name="rating" value="5" />
                        &nbsp;<span><?php echo $entry_good; ?></span><br />
                        <br />
                        <b><?php echo $entry_captcha; ?></b><br />
                        <input type="text" name="captcha" value="" />
                        <br />
                        <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
                        <br />
                        <div class="buttons">
                            <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if ($products) { ?>
                    <div id="tab-related" class="tab-content">
                        <div class="box-content">
                            <div class="box-product">
                                <?php foreach ($products as $product) { ?>
                                <div>
                                    <?php if ($product['thumb']) { ?>
                                    <div class="showhim" href="#">
                                        <div class="image">
                                            <div class="name">
                                                <a href="<?php echo $product['href']; ?>">
                                                    <?php echo $product['name']; ?>
                                                </a>
                                            </div>
                                            <div class="out_bg">
                                                <a href="<?php echo $product['href']; ?>">
                                                    <?php if($product['special']) { ?>

                                            <?php echo '<span class="price-new">'; ?>
                                            <?php echo $product['special']; ?>
                                            <?php echo '<span class="price-old">'; ?>
                                            <?php echo $product['price']; ?>
                                            <?php echo '</span>'; ?>
                                            <?php echo '</span>'; ?>
                                            <?php } else { ?>
                                            <?php echo '<span class="price-new">'; ?>
                                            <?php echo $product['price']; ?>
                                            <?php echo '</span>'; ?>
                                            <?php } ?>
                                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                                            <div class="showme">
                                                <div class="description_featured" style="min-height:110px;">
                                                    <?php echo isset($product['description']) ? $product['description'] : ''; ?>
                                                </div>
                                            </div>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                                <?php } ?>

                                <div class="priced">
                                    <ul>
                                        <li>
                                            <a onclick="addToCart('<?php echo $product['product_id']; ?>');"> <?php echo $button_cart; ?> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>


                    </div>
              </div>
            </div>



          <?php echo $content_bottom; ?>
        </div>
    </div>
    <script type="text/javascript"><!--
    $('.colorbox').colorbox({
        overlayClose: true,
        opacity: 0.5
    });
    //--></script>
    <script type="text/javascript"><!--
    $('#button-cart').bind('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
            dataType: 'json',
            success: function(json) {
                $('.success, .warning, .attention, information, .error').remove();

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                        }
                    }
                }

                if (json['success']) {
                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                    $('.success').fadeIn('slow');

                    $('#cart-total').html(json['total']);

                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                }
            }
        });
    });
    //--></script>
    <?php if ($options) { ?>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
    <?php foreach ($options as $option) { ?>
    <?php if ($option['type'] == 'file') { ?>
    <script type="text/javascript"><!--
    new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
        action: 'index.php?route=product/product/upload',
        name: 'file',
        autoSubmit: true,
        responseType: 'json',
        onSubmit: function(file, extension) {
            $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
            $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
        },
        onComplete: function(file, json) {
            $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);

            $('.error').remove();

            if (json['success']) {
                alert(json['success']);

                $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
            }

            if (json['error']) {
                $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
            }

            $('.loading').remove();
        }
    });
    //--></script>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <script type="text/javascript"><!--
    $('#review .pagination a').live('click', function() {
        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');

        return false;
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').bind('click', function() {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
            beforeSend: function() {
                $('.success, .warning').remove();
                $('#button-review').attr('disabled', true);
                $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
            },
            complete: function() {
                $('#button-review').attr('disabled', false);
                $('.attention').remove();
            },
            success: function(data) {
                if (data['error']) {
                    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                }

                if (data['success']) {
                    $('#review-title').after('<div class="success">' + data['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').attr('checked', '');
                    $('input[name=\'captcha\']').val('');
                }
            }
        });
    });
    //--></script>
    <script type="text/javascript"><!--
    $('#tabs a').tabs();
    //--></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript"><!--
    if ($.browser.msie && $.browser.version == 6) {
        $('.date, .datetime, .time').bgIframe();
    }

    $('.date').datepicker({dateFormat: 'yy-mm-dd'});
    $('.datetime').datetimepicker({
        dateFormat: 'yy-mm-dd',
        timeFormat: 'h:m'
    });
    $('.time').timepicker({timeFormat: 'h:m'});
    //--></script>
</div>
<br>
<?php echo $footer; ?>