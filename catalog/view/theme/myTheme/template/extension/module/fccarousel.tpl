<!--<div class="box fc_carousel" id="fc_carousel_<?php echo $module; ?>">
  <div class="box-header">
    <div class="row">
      <div class="col-sm-<?php echo ($show_navigation) ? 6 : 12; ?> col-xs-<?php echo ($show_navigation) ? 6 : 12; ?>">
		<?php if($name_as_title){ ?>
        <h3 class="fc_carousel-title"><?php echo $name; ?></h3>
		<?php } else { ?>
        <h3 class="fc_carousel-title"><?php echo $heading_title; ?></h3>
		<?php } ?>
      </div>
	  <?php if($show_navigation) { ?>
      <div class="col-sm-6 text-right">    
        <div class="fc_carousel-controls btn-group text-right" role="group">
          <button type="button" class="btn fc_carousel-left" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
          </button>
          <button type="button" class="btn fc_carousel-right" data-slide="next">
            <i class="fa fa-chevron-right"></i>
          </button>
        </div>
      </div>
	  <?php } ?>
    </div>
  </div>
  <div class="box-content row" id="featured_category_carousel_<?php echo $module; ?>">
      <?php foreach ($categories as $category) { ?>
      <div class="item">
		  <div class="category-layout">
			<div class="category-thumb transition">
				<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
				<?php if($show_title || $show_description){ ?>
				<div class="caption">
					<?php if($show_title){ ?>
					<h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
					<?php } ?>
					<?php if($show_description){ ?>
					<p class="description"><?php echo $category['description']; ?></p>
					<?php } ?>
				</div>
				<?php } ?>
			</div>
		  </div>
      </div>
      <?php } ?>
  </div>
</div>

<script>
var fc_carousel_<?php echo $module; ?> = $('#featured_category_carousel_<?php echo $module; ?>');
fc_carousel_<?php echo $module; ?>.owlCarousel({
  items: <?php echo $itemspage; ?>,  
  itemsDesktop: [1199,<?php echo $itemspage; ?>],
  itemsDesktopSmall: [979, <?php echo $itemspage; ?>],
  itemsTablet: [768, <?php echo $itemspage; ?>],
  itemsTabletSmall: [768, <?php echo $itemspage; ?>],
  itemsMobile: [479,1],
  autoPlay: <?php echo ($auto_play)?3000:'false'; ?>,
  pagination: <?php echo ($show_pagination)?'true':'false'; ?>,
  stopOnHover: <?php echo ($pause_on_hover)?'true':'false'; ?>
});
<?php if($show_navigation) { ?> 
// Custom Navigation Events
$("#fc_carousel_<?php echo $module; ?> .fc_carousel-right").click(function(){fc_carousel_<?php echo $module; ?>.trigger('owl.next'); });
$("#fc_carousel_<?php echo $module; ?> .fc_carousel-left").click(function(){ fc_carousel_<?php echo $module; ?>.trigger('owl.prev'); });
<?php } ?>
</script>-->



<div class="container" style="background-color: rgb(237,244,247) !important; width: 100% !important; margin-top: 20px;">
<div class="featured_header"><center><h3 style="color: #3FADBC; text-transform: uppercase"><?php echo $heading_title; ?></h3>
<p><?php echo $heading_description; ?></p></center></div>
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto;">
  <?php foreach ($categories as $category) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image-featured-category"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <center><h4><a href="<?php echo $category['href']; ?>" class="featuredLink" style="text-transform: uppercase;"><?php echo $category['name']; ?></a></h4>
        <div style="width: 20%; border-top: 2px solid black; padding-bottom: 15px"></div>
        <div style="line-height: 1.0;"><span style="color: black"><?php echo $category['description']; ?></span></div>
        <div class="shop-now-btn-wrapper">
        <a href="<?php echo $category['href']; ?>" class="header_link" style="display: block"><div class="shop-now-btn">SHOP NOW</div></a>
        </div>
      </center>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
</div>
