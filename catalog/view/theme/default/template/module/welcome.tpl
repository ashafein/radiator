<style type="text/css">
    h1, .welcome {
        color: #6F6A58;
        font: 12px/20px Helvetica, Arial, sans-serif;
        white-space: nowrap;
        font-size:19px;
        margin-bottom:8px;
        max-width:930px;
    }
    h1::after, .welcome::after {
        content: '';
        width: 87%;
        display: inline-block;
        background: url(catalog/view/theme/default/image/h3_line.png) 8px 0px repeat-x;
        height: 14px;
        margin-left: 10px;
    }
</style>
<div style="max-width:1000px;overflow:hidden;">
    <div class="welcome_box">
        <div class="welcome">
            <?php echo $heading_title; ?>
        </div>
        <div class="welcome_text">
            <?php echo $message; ?>
        </div>
    </div>
</div>
<div id="notification"></div>
