<div class="box">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
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
                            <?php echo '<div id="sale"></div>'; ?>
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
                 <div style="margin-top:24px;"></div>
             </div>

              <div class="showme">

              </div>
          </div>
        <?php } ?>

        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
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
</div>
