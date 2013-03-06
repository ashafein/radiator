<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link media="screen" href="catalog/view/theme/default/stylesheet/slideshow.css" type="text/css" rel="stylesheet">
<link media="screen" href="catalog/view/theme/default/stylesheet/carousel.css" type="text/css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster">
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo isset($_REQUEST['body_class'])? $_REQUEST['body_class'] : ''; ?>" >
<?php echo isset($_REQUEST['page_bg_style'])? $_REQUEST['page_bg_style'] : ''; ?>
<div class="body_bg">
    <?php if($numbers) { ?>
        <?php echo '<div class="header-contacts">';?>
            <?php echo '<ul>';?>
                <?php foreach($numbers as $number) {  ?>
                    <?php echo '<li>';?>
                        <?php echo $number['number'];?>
                    <?php echo '</li>';?>
                <?php } ?>
            <?php echo '</ul>';?>
        <?php echo '</div>';?>
    <?php } ?>

    <div id="container">
        <div id="header">
          <?php echo $cart; ?>
          <?php if ($logo) { ?>
          <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
          <?php } ?>

          <?php echo $language; ?>
          <?php echo $currency; ?>
          <div>
              <div id="welcome">
                  <?php if (!$logged) { ?>
                  <?php echo $text_welcome; ?>
                  <?php } else { ?>
                  <?php echo $text_logged; ?>
                  <?php } ?>
              </div>
              <div id="search">
                <div class="button-search"></div>
                <?php if ($filter_name) { ?>
                    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
                <?php } else { ?>
                    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
                <?php } ?>
              </div>

              <?php if($help_number) { ?>
                  <?php echo '<div class="help-contact">';?>
                        <?php echo '<span class="help-text">'.$online_help.'</span>';?>
                              <?php echo '<span class="help-number">'.$help_number['number'].'</span>';?>
                  <?php echo '</div>';?>
              <?php } ?>
              <div class="linkz">
                  <ul><li>
                         <a  class="home" href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
                      </li>
                      <li>
                         <a class="news" href="<?php echo $news; ?>"><?php echo $text_news; ?></a>
                      </li>
                      <li>
                         <a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
                      </li>
                      <li>
                         <a class="account" href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                      </li>
                      <li>
                          <a class="cart" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
                      </li>
                      <li>
                          <a class="checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
                      </li>
                      <li>
                          <a class="faqs" href="<?php echo $faq; ?>"><?php echo $text_faq; ?></a>
                      </li>
                  </ul>
              </div>
          </div>
        </div>
        <?php if ($categories) { ?>
        <div id="menu">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li>
                <a href="<?php echo $category['href']; ?>">
                    <?php echo $category['name']; ?>
                </a>
                <?php if ($category['children']) { ?>
              <div>
                <?php for ($i = 0; $i < count($category['children']);) { ?>
                <ul>
                  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                  <?php for (; $i < $j; $i++) { ?>
                  <?php if (isset($category['children'][$i])) { ?>
                    <li>
                        <?php
				if(count($category['children'][$i]['children_level2'])>0){
                        ?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'><?php echo $category['children'][$i]['name']; ?>
                        <?php

						echo "<img src='catalog/view/theme/default/image/arrow-right.png' style='right:10px;margin-top:3px;position:absolute;'/></a>";
                        //echo "<span style='right:5px;margin-top:-6px;position:absolute;color:white;font-weight:bold;font-size:18px;'>&#187;</span></a>";

                        }
                        else
                        {
                        ?>
                        <a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:closeSubMenu()' ><?php echo $category['children'][$i]['name']; ?></a>
                        <?php
				}
				?>

                        <?php if ($category['children'][$i]['children_level2']) { ?>
                        <div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>">
                            <ul>
                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
                                <li>
                                    <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
                                    </a>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                        <?php } ?>
                    </li>
                  <?php } ?>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
                <img style="margin-bottom:2px;margin-right:11px;margin-left:-16px;" src="catalog/view/theme/default/image/arrow-down.png">
                <?php } ?>
            </li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
    </div>
    <script type="text/javascript">
        function openSubMenu(id){
            //
            $('.submenu').hide();
            document.getElementById("id_menu_"+id).style.display="block";
        }
        function closeSubMenu(){
            $('.submenu').hide();
        }
    </script>
    <style>
        .submenu{
            background: url('catalog/view/theme/default/image/menu.png') repeat scroll 0 0 transparent;
            border: 1px solid #000000;
            border-radius: 0px 5px 5px 0px;
            margin-top:-36px;
            margin-left: 11px;
            left:140px;
            position:absolute;
            min-width:140px;
            display:none;
        }
        @media screen and (-webkit-min-device-pixel-ratio:0) {
            .submenu {left: 139px;}

        }
    </style>
    <!--[if IE 7]>
    <style>
        #menu > ul > li > div {
            width:140px!important;
        }
        .submenu{
            left:145px;
        }
    </style>
    <![endif]-->
    <!--[if IE 8]>
    <style>
        #menu > ul > li > div {
            width:140px!important;
        }
        .submenu{
            left:150px;
        }
    </style>
    <![endif]-->
    <br>
