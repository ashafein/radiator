<div style="background-color: #fff;border: 1px solid #e2e2e2;padding:10px;height:320px;">
    <div class="slideshow">
      <div id="featured"></div>
      <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
        <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
        <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
        <?php } else { ?>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
        <?php } ?>
        <?php } ?>
      </div>
    </div>
</div>
<br>
<br>
    <script type="text/javascript"><!--
    $(document).ready(function() {
        $('#slideshow<?php echo $module; ?>').nivoSlider();
    });
    --></script>

