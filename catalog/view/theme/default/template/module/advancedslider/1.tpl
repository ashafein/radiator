<!-- advanced slider nivo-dark -->
<?php 	$this->document->addScript('catalog/view/javascript/nivo32/jquery.nivo.slider.pack.js');
		$this->document->addStyle('catalog/view/theme/default/stylesheet/nivo-slider.css');	
		$this->document->addStyle('catalog/view/theme/default/stylesheet/nivo-themes/dark/dark.css');	?>
<script type="text/javascript">
	
jQuery(window).load(function(){
	    jQuery("#slideshow<?php echo $module; ?>").nivoSlider({
        effect:"random",
        slices:15,
        boxCols:8,
        boxRows:4,
		animSpeed:<?php echo $velocity; ?>,
		pauseTime:<?php echo $duration; ?>,
        startSlide:0,
        directionNav:true,
        controlNav:true,
        controlNavThumbs:false,
        pauseOnHover:true,
        manualAdvance:false
    });
});
</script>
<div class="slider-wrapper theme-dark" style="width: <?php echo $width; ?>px; height: <?php echo $height+30; ?>px;">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($sliders as $slider) { ?>
    <?php if ($slider['link']) { ?>
    <a href="<?php echo $slider['link']; ?>"><img src="<?php echo $slider['image']; ?>" alt="<?php echo $slider['title']; ?>" <?php if ($caption==1) { echo 'title="#htmlcaption'.$slider['image_id'].'"'; } ?> /></a>
    <?php } else { ?>
    <img src="<?php echo $slider['image']; ?>" alt="<?php echo $slider['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
  	<?php if ($caption==1) { ?>
	<?php foreach ($sliders as $slider) { ?>
		<div id="htmlcaption<?php echo $slider['image_id']; ?>" class="nivo-html-caption">
			<!--slider html -->
			<strong><?php echo $slider['title']; ?></strong><br/>
			<?php echo $slider['subtitle']; ?> 
			<em><?php echo $slider['description']; ?></em>
			<a href="#"><?php echo $slider['extra']; ?></a> 
			<!--slider html end-->
		</div>
		 <?php } ?>
	<?php } ?>
</div>
