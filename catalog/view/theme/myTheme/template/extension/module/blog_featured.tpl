
<div class="container" style="background-color: #EDF4F7; width: 100% !important; padding-top: 50px">
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto; padding-bottom: 30px">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12" style="padding-left: 35px; padding-right: 35px">
    <div class=" product-thumb article-thumb transition">
      <div class="image" style="padding: 0px"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="padding-left: 0px; padding-right: 0px">
        <center><h4 style="padding-left: 15px; padding-right: 15px"><a href="<?php echo $product['href']; ?>" class="blog-featured-link"><?php echo $product['name']; ?></a></h4>
        <div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.2; padding-left: 0px; padding-right: 0px; font-size: 14px; height: 52px;"><span><?php echo $product['description']; ?></span></div>

        <div class="read-more-btn-blog"><a href="<?php echo $product['href']; ?>" class="header_link" style="display: block;">Read More</a></div>
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
</div>
