<div style="position: relative">
	<div id="search_brands" class="input-group search_brand_group">
	  <div style="width: 100%; height: 40px; background-color: white; color: #999999; border: 1px solid #CCCCCC; cursor: pointer; line-height: 40px; padding-left: 10px" id="chosen_manufacturer"><?php echo $text_manufacturers ?></div>
	  <span class="input-group-btn">
	    <button type="button" class="btn-md search_button"><i class="fa fa-angle-down" style="color: white;"></i></button>
	  </span>
	</div>
	<div class="manufacturers-dropdown">
		<div style="padding: 10px; background-color: #EBEBEB" id="search_brand">
			<div class="input-group input-group-sm">
  				<span class="input-group-addon" id="sizing-addon3" style="border-radius: 0px; background-color: white; border: none"><i class="fa fa-search" aria-hidden="true"></i></span>
  				<input type="text" name="search_brand" class="form-control" placeholder="" aria-describedby="sizing-addon3" style="border-radius: 0px !important; border: none" id="search_brand_input">
			</div>
		</div>
		<div class="manufacturers-dropdown-box">
		</div>
  </div>
</div>

<script>

	$(document).click(function() {
		$(".manufacturers-dropdown").removeClass("manufacturers-dropdown-visible");
	});

	/*$(".manufacturer-name-wrapper").click(function(e) {
		$("#chosen_manufacturer").text($(this).text());
	});*/

	$("#search_brand").click(function(e) {
		e.stopPropagation(); 
	});

	$("#search_brand_input").click(function() {
		$("#search_brand_input").css("box-shadow", "none");	
	});

	$("#search_brand_input").keyup(function() {
		var htmlContent = "";
		<?php foreach ($manufacturers_all as $man) { ?>
			var $man_name = "<?php echo $man['name']; ?>";
			if ($man_name.toLowerCase().match("^"+$("#search_brand_input").val().toLowerCase()))
			htmlContent += "<a href='<?php echo $base_url; ?>index.php?route=product/manufacturer/info&manufacturer_id=<?php echo $man['manufacturer_id']; ?>' class='manufacturer_link'><div 						 class='manufacturer-name-wrapper'><?php echo $man['name']; ?></div></a>";
		<?php } ?>

		$(".manufacturers-dropdown-box").html(htmlContent);

  		if ($(".manufacturers-dropdown-box").height() < 200)
  			$(".manufacturers-dropdown-box").css("overflow-y", "hidden");
  		else
  			$(".manufacturers-dropdown-box").css("overflow-y", "scroll");
	});

	$(".search_brand_group").click(function(e) {
		e.stopPropagation(); // This is the preferred method.  
		if (!$( ".manufacturers-dropdown" ).hasClass( "manufacturers-dropdown-visible" )) {
			$(".manufacturers-dropdown").addClass("manufacturers-dropdown-visible");

			var htmlContent = "";
			<?php foreach ($manufacturers_all as $man) { ?>
  				htmlContent += "<a href='<?php echo $base_url; ?>index.php?route=product/manufacturer/info&manufacturer_id=<?php echo $man['manufacturer_id']; ?>' class='manufacturer_link'><div class='manufacturer-name-wrapper'><?php echo $man['name']; ?></div></a>";
  			<?php } ?>

  			$(".manufacturers-dropdown-box").html(htmlContent);

  			if ($(".manufacturers-dropdown-box").height() < 200)
  				$(".manufacturers-dropdown-box").css("overflow-y", "hidden");
  			else
  				$(".manufacturers-dropdown-box").css("overflow-y", "scroll");

  			$("#search_brand_input").focus();
  			$("#search_brand_input").css("box-shadow", "none");	

  			$("#search_brand_input").val("");

		} else
			$(".manufacturers-dropdown").removeClass("manufacturers-dropdown-visible");
	});


</script>
