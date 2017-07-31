<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1; border: none !important; max-width: 1140px; margin: 0 auto">
  <?php foreach ($banners as $banner) { ?>
  <div class="item" style="background: url(<?php echo $banner['image']; ?>); height: 380px">
    <div class="slideshow-item-header">
      <?php echo $title; ?>
    </div>
    <div class="slideshow-item-desc">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sagittis neque. Duis luctus sapien quis ipsum tempor, vitae tincidunt mi euismod.
    </div>
    <div class="slideshow-item-btn-wrapper">
      <a href="#">
        <div class="slideshow-item-btn">SHOP NOW</div>
      </a>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ["<i class='fa fa-angle-left slideshow_arrow'></i>", "<i class='fa fa-angle-right slideshow_arrow'></i>"],
	pagination: false
});
--></script>