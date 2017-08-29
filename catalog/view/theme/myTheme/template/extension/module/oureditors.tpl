<div class="container" style="width: 100% !important; margin-top: 30px;">
<div class="featured_header editors-title" style="padding-bottom: 30px"><center><h3 style="color: #3FADBC; text-transform: uppercase"><?php echo $heading_title; ?></h3>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1050px; margin: 0 auto; padding-bottom: 30px">
  <div class="col-md-12" id="col1">
      <div id="slideshow" class="owl-carousel owl-carousel-featured4" style="opacity: 1;">
  <?php foreach ($editors as $editor) { ?>
  <div class="item">
  <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 100%; max-height: 249px;">
    <a href="<?php echo $editor['href']; ?>"><div class="product-thumb transition" style="margin-bottom: 0px">
      <!--<div class="image-featured-category editors-image"><a href="<?php echo 'LINK'; ?>"><img src="<?php echo $base_link.'image/'.$editor['image']; ?>" alt="<?php echo $editor['firstname'].' '.$editor['lastname']; ?>" title="<?php echo $editor['firstname']; ?>" class="img-responsive" /></a></div>-->
      <div class="square">
        <div class="pic" style="background: url(<?php echo $editor['image']; ?>) no-repeat center center fixed; background-size: cover; ">
        </div>
      </div>
      <div class="caption" style="padding-top: 20px">
        <center><h4 style="margin-bottom: 5px"><a href="<?php echo $editor['href']; ?>" class="featuredLink" style="text-transform: uppercase;font-weight: 600;"><?php echo $editor['firstname'].' '.$editor['lastname']; ?></a></h4>
        <div style="line-height: 1.0;"><span style="color: black"><?php echo $editor['short_description']; ?></span></div>
        <div class="shop-now-btn-wrapper">
        </div>
      </center>
      </div>
    </div></a>
  </div>
  </div>
  <?php } ?>
</div>
</div>
</div>
</div>

<script>
$('#slideshow').owlCarousel({
  items: 4,
  autoPlay: false,
  singleItem: false,
  navigation: true,
  navigationText: ["<i class='fa fa-angle-left slideshow_arrow'></i>", "<i class='fa fa-angle-right slideshow_arrow'></i>"],
  pagination: false
});
</script>
