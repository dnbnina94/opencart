
<div class="container" style="background-color: #EDF4F7; width: 100% !important;">
<div class="featured_header"><center><h3 style="color: black"><?php echo $heading_title; ?></h3>
<div style="border-top: 2px solid black; width: 50px; padding-bottom: 5px"></div>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto;">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12" style="padding-left: 35px; padding-right: 35px">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="padding-left: 0px; padding-right: 0px">
        <center><h4 style="padding-left: 15px; padding-right: 15px"><a href="<?php echo $product['href']; ?>" class="featuredLink3"><?php echo $product['name']; ?></a></h4>
        <div style="width: 50px; border-top: 2px solid black; padding-bottom: 15px; margin-top: 15px"></div>
        <div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.0; padding-left: 0px; padding-right: 0px; height: 36px"><span><?php echo $product['description']; ?></span></div>

        <a href="<?php echo $product['href']; ?>" class="header_link" style="display: block;"><div class="shop-now-btn3" style="margin-top: 20px">Read More</div></a>
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
<div class="container" style="width: 100% !important; margin-top: 40px; margin-bottom: 40px">
  <div class="row" style="max-width: 820px; margin: 0 auto;">
    <div class="col-md-7" style="text-align: right; font-size: 16px; line-height: 40px"><?php echo $text_vip_offers; ?></div>
    <div class="col-md-5">
      <div id="search" class="input-group subscription">
        <input type="text" name="subscription" value="" placeholder="<?php echo $email_placeholder; ?>" class="form-control input-lg" style="border-radius: none !important" />
          <span class="input-group-btn">
          <button type="button" class="btn-md" style="color: white; background-color: black !important"><?php echo $submit_btn?></button>
          </span>
      </div>
    </div>
  </div>
</div>
