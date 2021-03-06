<div class="container" style="width: 100% !important;">
<div class="featured_header"><center><h3 style="color: black"><?php echo $heading_title; ?></h3>
<div style="border-top: 2px solid black; width: 50px; padding-bottom: 5px"></div>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto; border-bottom: 2px solid #B9B9B9;">
  <div class="col-md-6" id="col1">
<div id="slideshow" class="owl-carousel" style="opacity: 1; border: none !important; max-width: 1140px; margin: 0 auto; border: 0">
  <?php foreach ($products as $product) { ?>
  <div class="item">
  <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 100%">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption" style="padding-left: 0px; padding-right: 0px">
        <h4 style=""><a href="<?php echo $product['href']; ?>" class="featuredLink3" style="font-size: 16px; text-transform: uppercase"><?php echo $product['name']; ?></a></h4>
        <!--<div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.0; padding-left: 0px; padding-right: 0px"><span><?php echo $product['description']; ?></span></div>-->
        <table style="width: 100%">
          <tr>
            <td style="width: 50%">
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </td>
            <td style="width: 50%">
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
            </td>
          </tr>
        </table>
      <center>
        <a href="<?php echo $product['href']; ?>" class="header_link" style="display: block"><div class="shop-now-btn3">Read More</div></a>
      </center>
      </div>
      <!--<div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
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
  <div class="col-md-6" style="height: 100%; background-color: #3FADBC" id="col2">
  </div>
</div>
</div>
<script>
  $(window).load(function() {
    $("#col2").height($("#col1").height()-20);
  });
</script>
