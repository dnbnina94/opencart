<div class="container" style="width: 100% !important;">
<div class="featured_header"><center><h3 style="color: black"><?php echo $heading_title; ?></h3>
<div style="border-top: 2px solid black; width: 50px; padding-bottom: 5px"></div>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto;">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb product-thumb2 transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <center><h4><a href="<?php echo $product['href']; ?>" class="featuredLink2"><?php echo $product['name']; ?></a></h4>
        <!--<span style="color: black"><?php echo $product['description']; ?></span>-->
        <?php if ($product['rating']) { ?>
        <!--<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>-->
        <?php } ?>
        <?php if ($product['price']) { ?>
        <!--<p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>-->
        <?php } ?>
        <div class="shop-now-btn-wrapper">
        <a href="<?php echo $product['href']; ?>" class="header_link" style="display: block"><div class="shop-now-btn">SHOP NOW</div></a>
        </div>
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
