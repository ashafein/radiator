<br />
<br />
</div>

<br />
<br />
<br />
<br />

    <div class="icart-footer">
      <div class="icart-footer-top">
          <div style="width:1000px; margin:0 auto;">	</div>
      </div>
      <div class="icart-footer-container">
          <?php if ($informations) { ?>
          <div class="column_footer" style="width:340px;">
            <h3><?php echo $text_information; ?></h3>
            <ul>
              <?php foreach ($informations as $information) { ?>
              <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
          <div class="column_footer" style="width:150px;">
            <h3><?php echo $text_service; ?></h3>
            <ul>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="<?php //echo $return; ?>"><?php //echo $text_return; ?></a></li>
              <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
            </ul>
          </div>
          <div class="column_footer" style="width:120px;">
            <h3><?php echo $text_extra; ?></h3>
            <ul>
              <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php //echo $voucher; ?>"><?php //echo $text_voucher; ?></a></li>
              <li><a href="<?php //echo $affiliate; ?>"><?php //echo $text_affiliate; ?></a></li>
              <li><a href="<?php //echo $special; ?>"><?php //echo $text_special; ?></a></li>
            </ul>
          </div>
          <div class="column_footer" style="width:120px;">
            <h3><?php echo $text_account; ?></h3>
            <ul>
              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
              <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="icart-footer-bottom">
            <div style="width:1000px; margin:0 auto;">
                <div class="icart-logo-footer">
                    <a href="index.php">
                        <img alt="Footer Logo" src="catalog/view/theme/SimpleCart/image/logo-footer.png">
                    </a>
                </div>
                <ul>
                    <li  style="float:right;padding-top:10px;list-style:none;">
                        <?php echo $powered; ?>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
      </div>
    <!--
    OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
    Please donate via PayPal to donate@opencart.com
    //-->

    <!--
    OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
    Please donate via PayPal to donate@opencart.com
    //-->

</div>
</body></html>