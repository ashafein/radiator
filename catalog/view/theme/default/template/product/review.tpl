<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="review-list">
  <div class="author"><div class='review-author'><?php echo $review['author']; ?></div> <div class="review-date"><?php echo $text_on; ?> <?php echo $review['date_added']; ?> </div></div>
  <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></div>
  <div class="text"><?php echo $review['text']; ?></div>
</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
