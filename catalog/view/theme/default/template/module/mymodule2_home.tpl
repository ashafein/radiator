  <?php if ($oformlenie) { # Проверяем включено ли оформление
	  if($title) { #Если есть заголовок, то будет шапочка с градиентом ?>
	  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
	  <h1>	
		<?php echo $title; #Выводим текст заголовка?>
	  </h1>
    </div>
  </div>

  <div class="middle" style="text-align: left;">
    <?php echo $code; #выводим наш html?>
  </div>

  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
<?php } else { # нет заголовка - нет шапочки с градиентом?><div>
    <div style="background: url('catalog/view/theme/default/image/content_top2_left.png') no-repeat;
	width: 5px;
	height: 5px;
	float: left;"></div>
    <div style="background: url('catalog/view/theme/default/image/content_top2_right.png') no-repeat;
	width: 5px;
	height: 5px;
	float: right;"></div>
    <div style="background: url('catalog/view/theme/default/image/content_top2_center.png') repeat-x;
	height: 5px;
	margin: 10px 5px 0 5px;"></div>
                </div>
  <div class="middle" style="text-align: left;">
    <?php echo $code; #выводим наш html?>
  </div>

  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
<?php }} else {?><div> <?php echo $code; #выводим html без оформления?></div><?php } ?>
