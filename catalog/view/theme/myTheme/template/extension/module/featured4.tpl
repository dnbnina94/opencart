<div class="container" style="width: 100% !important;">
<div class="featured_header"><center><h3 style="color: black"><?php echo $heading_title; ?></h3>
<div style="border-top: 2px solid black; width: 50px; padding-bottom: 5px"></div>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto; border-bottom: 2px solid #B9B9B9;">
  <div class="col-md-6" id="col1" style="padding-left: 0px; padding-right: 0px">
<div id="slideshow" class="owl-carousel owl-carousel-featured4" style="opacity: 1; border: none !important; max-width: 1140px; margin: 0 auto; border: 0; padding-left: 30px; padding-right: 30px;">
  <?php foreach ($products as $product) { ?>
  <div class="item">
  <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 100%; padding-right: 10px; padding-left: 10px">
    <div class="product-thumb transition">
      <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="padding-left: 0px; padding-right: 0px;">
        <div style="padding-left: 5px; padding-right: 5px; width: 100% !important; height: 55px"><a href="<?php echo $product['href']; ?>" class="featuredLink3" style="font-size: 16px; width: 100%; text-transform: uppercase; font-weight: bold;"><?php echo $product['name']; ?></a></div>
        <!--<div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.0; padding-left: 0px; padding-right: 0px"><span><?php echo $product['description']; ?></span></div>-->
        <table style="width: 100%;">
          <tr>
            <td style="width: 50%; padding-left: 5px">
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
                <?php if (!$product['special']) { ?>
                <span class="cur-price"><?php echo $product['price']; ?></span>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </td>
            <td style="width: 50%; text-align: right; vertical-align: bottom; padding-right: 5px">
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x" style="color: #3FADBC"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } else { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                </div>
              <?php } ?>
            </td>
          </tr>
        </table>
      <center>
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" style="width: 100%; background-color: black; color: white; border: none; box-shadow: none; padding: 7px 10px; margin-top: 5px; font-size: 18px; text-transform: uppercase;"><span><?php echo $button_cart; ?></span></button>
      </center>
      </div>
      <!--<div class="button-group">
        
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>-->
    </div>
  </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow').owlCarousel({
  items: 2,
  autoPlay: 3000,
  singleItem: false,
  navigation: true,
  navigationText: ["<i class='fa fa-angle-left slideshow_arrow'></i>", "<i class='fa fa-angle-right slideshow_arrow'></i>"],
  pagination: false
});
--></script>
  </div>
  <div class="col-md-6" style="height: 100%; padding-left: 10px" id="col2">
    <div style="width: 100%; height: 100%; background: url('<?php echo $image; ?>'); background-repeat: no-repeat; background-size: cover">
    </div>
  </div>
</div>
</div>
<script>
  $(window).load(function() {
    $("#col2").height($("#col1").height()-20);
  });
</script>
