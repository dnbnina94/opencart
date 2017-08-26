<!--<div class="list-group">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>-->

<div style="margin-top: 40px">
  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $refines_text; ?></span>
  <div style="border: 1px solid #3FADBC; margin-top: 20px; margin-bottom: 20px"></div>

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $brand_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 30px;">
    <div style="margin: 10px 5px; max-height: 200px; overflow-y: scroll">
      <table style="width: 100%">
      <?php foreach ($manufacturers as $man) { ?>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="brand_filter" value="<?php echo $man['name']; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $man['name']; ?></span></td>
        </tr>
      <?php } ?>
      </table>
    </div>
  </div>

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $price_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 30px">
    <div style="margin: 10px 5px;">
      <table style="width: 100%">
        <?php foreach ($prices as $price) { ?>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="price_filter" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $price ?></span></td>
        </tr>
        <?php } ?>
      </table>
    </div>
  </div>

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $savings_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 30px">
    <div style="margin: 10px 5px;">
      <table style="width: 100%">
        <tr>
          <td style="width: 20px"><input type="checkbox" name="savings_filter" value="<?php echo '<25'; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $up_to_25_savings_text; ?></span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="savings_filter" value="<?php echo '25-50'; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $between_25_50_savings_text; ?></span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="savings_filter" value="<?php echo '50-100'; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $between_50_75_savings_text; ?></span></td>
        </tr>
      </table>
    </div>
  </div>

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $avg_reviews_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 50px">
    <div style="margin: 10px 5px;">
      <table style="width: 100%">
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo '0-1'; ?>" /></td>
          <td><span style="color: black; font-size: 14px">0-1</span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo '1-2'; ?>" /></td>
          <td><span style="color: black; font-size: 14px">1-2</span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo '2-3'; ?>" /></td>
          <td><span style="color: black; font-size: 14px">2-3</span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo '3-4'; ?>" /></td>
          <td><span style="color: black; font-size: 14px">3-4</span></td>
        </tr>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo '4-5'; ?>" /></td>
          <td><span style="color: black; font-size: 14px">4-5</span></td>
        </tr>
      </table>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {

  });
</script>
