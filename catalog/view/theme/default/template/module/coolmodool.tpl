<style>
.featured-banners {
	margin: 10px 0;
	width:100%;}
.featured-banners .featured-banners-in{
	border:1px solid #DDD;
	float:left;
	margin-right:12px;
	padding:5px;
	overflow: auto;
	display:block;
	text-align:left;
	box-shadow: inset 0 0 6px #eeeeee;
}
.featured-banners .featured-content{
	float:left;
	margin:10px 12px 10px 0;
	padding:10px;
	overflow: auto;
	display:block;
	text-align:left;
	width:29%;
	border: 1px #ECECEC solid;
	box-shadow: inset 0 0 6px #eeeeee;}
.featured-banners div.featured-content .button{
	margin-top:5px;
	float:left;
	}
.featured-banners div.featured-content h3{
	background: transparent url(../image/dots.gif) 0 4px repeat-x;
	margin: 0;
	margin-bottom:5px;
	text-transform: uppercase;
}
.featured-banners div.featured-content span{
	background: white;
	padding: 0 10px 0 0;
}
.featured-banners div.featured-content p{
	margin:0;
	padding:0;
	color:#999;
	font-size:11px;
}
.featured-banners div img.right{
	float:right;
	width:60px;
	height:60px;
	padding:5px;
	margin:0;}
.featured-banners img{
	height:115px;
	width:215px;
	margin:0;}
.featured-banners div.featured-last{
	margin-right:0;
	float:right;}
.clear-right{
	clear:right;}
</style>
<div class="featured-banners">


<?php if(($this->config->get('cbanner1_title') != null)) { ?>
<div class="featured-content"><h3><span><?php if(($this->config->get('cbanner1_title') != null)) { ?>
<?php echo $this->config->get('cbanner1_title') ?><?php } ?></span></h3><p><?php if ($cbanner1) { ?>
<img src="<?php echo $cbanner1; ?>" class="right"/>
<?php } ?><?php if(($this->config->get('cbanner1_title') != null)) { ?>
<?php echo $this->config->get('cbanner1_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner1_url') != null)) { ?><?php echo $this->config->get('cbanner1_url') ?><?php } ?>" class="button">Детали &raquo;</a>
</div>
<?php } ?>


<?php if(($this->config->get('cbanner2_title') != null)) { ?>
<div class="featured-content"><h3><span><?php if(($this->config->get('cbanner2_title') != null)) { ?>
<?php echo $this->config->get('cbanner2_title') ?><?php } ?></span></h3><p><?php if ($cbanner2) { ?>
<img src="<?php echo $cbanner2; ?>"  class="right"/>
<?php } ?><?php if(($this->config->get('cbanner2_content') != null)) { ?>
<?php echo $this->config->get('cbanner2_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner2_url') != null)) { ?><?php echo $this->config->get('cbanner2_url') ?><?php } ?>" class="button">Детали &raquo;</a>
</div>
<?php } ?>


<?php if(($this->config->get('cbanner3_title') != null)) { ?>
<div class="featured-content featured-last"><h3><span><?php if(($this->config->get('cbanner3_title') != null)) { ?>
<?php echo $this->config->get('cbanner3_title') ?><?php } ?></span></h3><p><?php if ($cbanner3) { ?>
<img src="<?php echo $cbanner3; ?>" class="right" />
<?php } ?><?php if(($this->config->get('cbanner3_content') != null)) { ?>
<?php echo $this->config->get('cbanner3_content') ?><?php } ?></p>
<a href="<?php if(($this->config->get('cbanner3_url') != null)) { ?><?php echo $this->config->get('cbanner3_url') ?><?php } ?>" class="button">Детали &raquo;</a>
</div>
<?php } ?>
</div>
<div class="clear-right"></div>