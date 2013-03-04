<?php echo $header; ?>
<div id="content">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php  echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/information.png" alt="" /> <?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
        </div>
        <div class="content">
            <form action="<?php echo $save; ?>" method="post" enctype="multipart/form-data" id="form">
                <div class="contacts">
                   <?php for ($i = 0; $i < 5; $i++) {
                  // var_dump($numbers[$i]); die(21);
                        echo "<div class='con-line'>";
                            echo "<div class='con-title'><span class='required'>*</span>" .$contact_title. "  № " .($i+1). "</div>";
                            echo "<div class='con-box'><input  type='hidden'  name='num_id_" .$i. "' value='" .($i+1). "'";
                            echo ">";
                            echo "</div>";
                            echo "<div class='con-box'><input name='number_" .$i. "' value=";
                                echo isset($numbers[$i]['number']) ? $numbers[$i]['number'] : '';
                            echo ">";

                            if (isset($error_title)) {
                                echo "<span class='error'>" .$error_title. "</span>";
                            }
                            echo "</div>";
                            echo "<div class='con-title con-checkbox-title'>" .$enabled_title. "</div>";
                            echo "<div class='con-box'>";
                                echo "<input type='checkbox' value='1' name='status_" .$i. "'";
                                      echo ($numbers[$i]['status'] == 1) ? "checked" : '';
                                 echo ">";
                            echo "</div>";
                            echo "<div class='con-title con-checkbox-title'>" .$ishelp_title. "</div>";
                            echo "<div class='con-box'>";
                                 echo "<input type='checkbox' value='1' name='ishelp_" .$i. "'";
                                 echo ($numbers[$i]['ishelp'] == 1) ? "checked" : '';
                                 echo ">";
                            echo "</div>";
                        echo "</div>";
                    }; ?>
                </div>
            </form>
        </div>
    </div>
</div>
<?php echo $footer; ?>
