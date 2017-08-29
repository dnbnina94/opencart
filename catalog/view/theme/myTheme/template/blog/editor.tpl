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
    <div id="content" style="height: auto" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
            <div style="width: auto; margin: 0 auto; text-align: center; margin-top: 30px">
        <?php $i=0; foreach ($blog_categories as $blog_category) { ?>
          <div class="blog-menu-item <?php if ($i == $blog_active) echo 'blog-menu-item-active'; ?>"><?php echo $blog_category['name']; $i++; ?></div>
        <?php } ?>
        </div>
            <div class="col-md-8  col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2 editor-block" style="margin-top: 50px">
                <div class="square">
                    <div class="pic" style="background: url(<?php echo $editor['image']; ?>) no-repeat center center fixed; background-size: cover; ">
                    </div>
                </div>
                <div class="editor-name" style="text-align: center;">
                    <h2 style="color: #3FADBC;font-weight: 700; margin-bottom: 0px"><?php echo $editor['firstname']." ".$editor['lastname']; ?></h2>
                </div>
                <div class="editor-short-description" style="text-align: center;">
                    <h4 style="color:#4fb3c1; font-weight: 500; margin-top: 3px"><?php echo $editor['short_description']; ?></h4>
                </div>
                <div class="col-md-10  col-sm-10 col-xs-12 col-md-offset-1 col-sm-offset-1 editor-description" style="text-align: center; margin-top: 20px">
                    <h4><?php echo $editor['description']; ?></h4>
                    <div style="border-top: 3px solid #3FADBC;width: 20%;margin: 7% auto;"></div>
                </div>

            </div>

           <?php if ($editors_articles) { ?>
           <div class="row featured-row" style="max-width: 1140px; margin: 0 auto; padding-bottom: 30px">
            <?php foreach ($editors_articles as $article) { ?>
  <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12" style="padding-left: 35px; padding-right: 35px">
    <div class=" product-thumb article-thumb transition">
      <div class="image" style="padding: 0px"><a href="<?php echo $article['href']; ?>"><img src="<?php echo $article['image']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="padding-left: 0px; padding-right: 0px">
        <center><h4 style="padding-left: 15px; padding-right: 15px"><a href="<?php echo $article['href']; ?>" class="blog-featured-link"><?php echo $article['name']; ?></a></h4>
        <div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.2; padding-left: 0px; padding-right: 0px; font-size: 14px; height: 52px;"><span><?php echo $article['intro_text']; ?></span></div>

        <div class="read-more-btn-blog"><a href="<?php echo $article['href']; ?>" class="header_link" style="display: block;">Read More</a></div>
      </center>
      </div>
      <!--<div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>-->
    </div>
  </div>
  <?php } ?>
</div>
<?php } ?>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
