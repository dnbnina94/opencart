<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div style="width: auto; margin: 0 auto; text-align: center; margin-top: 30px">
        <?php $i=0; foreach ($blog_categories as $blog_category) { ?>
          <div class="blog-menu-item <?php if ($i == $blog_active) echo 'blog-menu-item-active'; ?>"><?php echo $blog_category['name']; $i++; ?></div>
        <?php } ?>
        </div>
      <div class="row" style="max-width: 900px; margin: 0 auto; margin-top: 50px; ">
        <div class="col-sm-6 coll-1" style="display: table;">
            <div style="display: table-cell; vertical-align: middle">
            <div class="blog-heading">
                <?php echo $heading_title; ?>
            </div>
            <div class="blog-intro">
                <p><?php echo $intro_text; ?></p>
            </div>
            </div>
        </div>
        <div class="col-sm-6 coll-2">
            <img class="img-responsive blog-img" style="width: 100%" src="<?php echo $image; ?>" />
        </div>
      </div>
      <div class="row" style="max-width: 850px; margin: 0 auto; margin-bottom: 50px; margin-top: 15px">
        <?php if ($editor_info) { ?>
        <div class="col-sm-12">
            <div class="square-article" style="margin-left: 0; float: left">
                <div class="pic-article" style="background: url(<?php echo $editor_info[0]['image']; ?>) no-repeat center center fixed; background-size: cover; ">
                </div>
            </div>
            <table style="height: 115px; margin-left: 90px">
                <tr>
                    <td>
                        <span style="color: #3FADBC; font-size: 18px; text-transform: uppercase; font-weight: bold">
                            <?php echo $editor_info[0]['firstname'] . " " . $editor_info[0]['lastname']; ?>
                        </span><br/>
                        <span style="color: #3FADBC">
                            <?php echo $editor_info[0]['short_description']; ?>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
        <?php } ?>
        <div class="col-sm-12 description-col" style="border-top: 2px solid #3FADBC; color: black; font-size: 14px; padding-left: 0px; padding-right: 0px; padding-top: 15px">
            <?php echo $description; ?>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script>
    $(document).ready(function() {
        $('.blog-img').load(function() {
            if ($(document.body).width() > 768) 
            $(".coll-1").height($(".coll-2").height());
        });

        $(window).resize(function() {
            if ($(document.body).width() > 768)
                $(".coll-1").height($(".coll-2").height());
            else
                $(".coll-1").css("height", "auto");
        });

        $('img').load(function() {
            $(".description-col").find("img").addClass("img-responsive");
        });
    });
</script>
<?php echo $footer; ?>
