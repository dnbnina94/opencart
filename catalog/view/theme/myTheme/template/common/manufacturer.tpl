<div style="position: relative">
	<div id="search_brands" class="input-group search_brand_group">
	  <div style="width: 100%; height: 40px; background-color: white; color: #999999; border: 1px solid #CCCCCC; cursor: pointer; line-height: 40px; padding-left: 10px" id="chosen_manufacturer"><?php echo $text_manufacturers ?></div>
	  <span class="input-group-btn">
	    <button type="button" class="btn-md search_button"><i class="fa fa-angle-down" style="color: white;"></i></button>
	  </span>
	</div>
	<div class="manufacturers-dropdown">
		<div class="manufacturers-dropdown-box">
			<?php foreach ($manufacturers_all as $man) { ?>
  				<a href="<?php echo $base_url; ?>index.php?route=product/manufacturer/info&manufacturer_id=<?php echo $man['manufacturer_id']; ?>" class="manufacturer_link"><div class="manufacturer-name-wrapper"><?php echo $man['name']; ?></div></a>
  			<?php } ?>
		</div>
  </div>
</div>

<script>
	$(".search_brand_group").click(function(e) {
		e.stopPropagation(); // This is the preferred method.  
		if (!$( ".manufacturers-dropdown" ).hasClass( "manufacturers-dropdown-visible" )) {
			$(".manufacturers-dropdown").addClass("manufacturers-dropdown-visible");
		} else
			$(".manufacturers-dropdown").removeClass("manufacturers-dropdown-visible");
	});

	$(".manufacturer-name-wrapper").click(function(e) {
		$("#chosen_manufacturer").text($(this).text());
	});

	$(document).click(function() {
		$(".manufacturers-dropdown").removeClass("manufacturers-dropdown-visible");
	});
</script>
