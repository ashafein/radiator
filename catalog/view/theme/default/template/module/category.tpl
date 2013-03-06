<style type="text/css">
    h1, .welcome {
        font-size:30px;
        color:#555;
    }
    .box .box-heading_left {
        background:#434343;
        color:#CCC;
        font-family: "Helvetica Neue",Arial,sans-serif;
    }
    input[type="text"], input[type="password"], textarea {
        background:#fff;
        border-radius:3px;
        padding:6px;
    }
    #content .content {
        background:#f1f1f1;
    }
    #button-cart{
        line-height:20px;
        height:18px;
    }
    a.button span {
        color:#fff;
        font-size:11px;
        text-shadow:none;
    }
</style>
<div class="box">
  <div class="box-content"  style="background:none;border:none;">
    <div class="box-category">
      <ul>
        <?php foreach ($categories as $category) { ?>
        <li>
          <?php if ($category['category_id'] == $category_id) { ?>
          <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
          <?php } else { ?>
          <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
          <?php } ?>
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li>
              <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
