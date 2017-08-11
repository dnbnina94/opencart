<div class="container" style="width: 100% !important; margin-top: 20px;">
<div class="featured_header editors-title"><center><h3 style="color: #3FADBC; text-transform: uppercase"><?php echo $heading_title; ?></h3>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto;">
  <?php foreach ($editors as $editor) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="">
      <!--<div class="image-featured-category editors-image"><a href="<?php echo 'LINK'; ?>"><img src="<?php echo $base_link.'image/'.$editor['image']; ?>" alt="<?php echo $editor['firstname'].' '.$editor['lastname']; ?>" title="<?php echo $editor['firstname']; ?>" class="img-responsive" /></a></div>-->
      <div class="losange">
          <img src="<?php echo $editor['image']; ?>"  />

      </div>
      <div class="caption">
        <center><h4><a href="<?php echo $editor['href']; ?>" class="featuredLink" style="text-transform: uppercase;font-weight: 600;"><?php echo $editor['firstname'].' '.$editor['lastname']; ?></a></h4>
        <div style="line-height: 1.0;"><span style="color: black"><?php echo $editor['short_description']; ?></span></div>
        <div class="shop-now-btn-wrapper">
        </div>
      </center>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
</div>
