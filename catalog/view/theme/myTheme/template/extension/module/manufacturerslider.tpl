<div class="container" style="width: 100% !important;">
  <div class="featured_header"><center><h3 style="color: black"><?php echo $heading_title; ?></h3>
      <div style="border-top: 2px solid black; width: 50px; padding-bottom: 5px"></div>
      <p><?php echo $heading_description; ?></p></center></div>
  <div class="row featured-row" style="max-width: 1140px; margin: 0 auto; border-bottom: 2px solid #3fadbc;padding-bottom: 1%">
    <div class="col-md-12" id="col1">
      <div id="slideshow" class="owl-carousel" style="opacity: 1; border: none !important; max-width: 1140px; margin: 0 auto; border: 0; padding-left: 10px; padding-right: 10px">
        <?php foreach ($products as $product) { ?>
        <div class="item">
          <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 100%">
            <div class="product-thumb transition">
              <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
              <div class="caption" style="padding-left: 0px; padding-right: 0px">
                <h4 style=""><a href="<?php echo $product['href']; ?>" class="featuredLink3" style="font-size: 16px; text-transform: uppercase;"><?php echo $product['name']; ?></a></h4>
                <!--<div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.0; padding-left: 0px; padding-right: 0px"><span><?php echo $product['description']; ?></span></div>-->
                <table style="width: 100%">
                  <tr>
                    <td style="width: 50%;">
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
                    <td style="width: 50%; text-align: right; vertical-align: bottom;">
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
                  <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" style="width: 100%; background-color: black; color: white; border: none; box-shadow: none; padding: 7px 10px; margin-top: 5px; font-size: 18px; text-transform: uppercase;"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
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
              items: 4,
              autoPlay: 3000,
              singleItem: false,
              navigation: true,
              navigationText: ["<i class='fa fa-angle-left slideshow_arrow'></i>", "<i class='fa fa-angle-right slideshow_arrow'></i>"],
              pagination: false
          });
          --></script>
    </div>
    <div class="col-md-12 view-all"><a href="#">VIEW ALL</a></div>
  </div>
</div>
<script>
    $(window).load(function() {
        $("#col2").height($("#col1").height()-20);
    });
</script>
