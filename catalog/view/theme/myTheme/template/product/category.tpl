<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php $i=0; $len = count($breadcrumbs); ?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb_link"><?php echo $breadcrumb['text']; ?></a></li>
    <?php $i++; if($i < $len) echo"<li>/</li>"; ?>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <!--<?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>-->
        <div class="col-md-12" style="color: #3FADBC; font-size: 40px; text-transform: uppercase; font-weight: bold;"><?php echo $heading_title; ?></div>
        <?php if ($description) { ?>
        <div class="col-sm-9" id="cat_col_1" style="margin-top: 20px; color: black; padding-left: 17px; line-height: 1.3; font-size: 14px"><?php echo $description; ?></div>

        <?php if($products) { ?>
        <div class="col-sm-3 text-right" id="cat_col_2" style="vertical-align: bottom; color: black; font-size: 14px; text-transform: uppercase;">
          <?php echo $product_total; ?>
        </div>
        <?php } ?>

        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row" style="margin-top: 40px; margin-bottom: 30px;">
        <!--<div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>-->
        <div class="col-md-5 col-xs-12">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort" style="border: none; background-color: transparent; font-size: 14px; color: black"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control classic" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>

        <div class="col-md-7 col-xs-12 text-right">
          <?php echo $pagination; ?>
        </div>
        <!--<div class="col-md-3 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>-->
      </div>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <div style="height: 55px; font-weight: bold"><a href="<?php echo $product['href']; ?>" class="featuredLink3" style="font-size: 16px; text-transform: uppercase;"><?php echo $product['name']; ?></a></div>
                <!--<p><?php echo $product['description']; ?></p>-->

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
                  <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" style="width: 100%; background-color: black; color: white; border: none; box-shadow: none; padding: 7px 10px; margin-top: 5px; font-size: 18px; text-transform: uppercase;"><span><?php echo $button_cart; ?></span></button>
                </center>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row" style="padding-top: 30px; padding-bottom: 50px">
        <div class="col-sm-12 text-right">
          <?php echo $pagination; ?>
        </div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>

      <div class="row">
        <?php if (!$description) { ?>
        <div class="col-md-12" style="color: #3FADBC; font-size: 40px; text-transform: uppercase; font-weight: bold;"><?php echo $heading_title; ?></div>
        <?php } ?>
        <div class="col-sm-9" style="margin-top: 20px; color: black; padding-left: 17px; line-height: 1.3; font-size: 14px;"><?php echo $text_empty; ?></div>
        <div class="col-sm-3 text-right" style="vertical-align: bottom; color: black; font-size: 14px; text-transform: uppercase; margin-top: 19px">
          <?php echo $product_total; ?>
        </div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    





    <div class="col-md-3">
      <div style="margin-top: 40px">
  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $refines_text; ?></span>
  <div style="border: 1px solid #3FADBC; margin-top: 20px; margin-bottom: 20px"></div>

  <style>
    .brand-box {
      overflow-y: scroll; 
    }
  </style>

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $brand_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 30px;">
    <div class="brand-box" style="margin: 10px 5px; max-height: 200px">
      <table style="width: 100%">
      <?php foreach ($manufacturers as $man) { ?>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="brand_filter" value="<?php echo $man['name']; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $man['name'] . " (" . $man['count'] . ")"; ?></span></td>
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
          <td style="width: 20px"><input type="checkbox" name="price_filter" value="<?php echo $price['value'] ?>"/></td>
          <td><span style="color: black; font-size: 14px"><?php echo $price['price'] ?></span></td>
        </tr>
        <?php } ?>
      </table>
    </div>
  </div>

  <!--
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
  -->

  <span style="text-transform: uppercase; color: black; font-size: 18px"><?php echo $avg_reviews_text; ?></span>
  <div style="border-top: 2px solid #3FADBC; margin-top: 10px; margin-bottom: 50px">
    <div style="margin: 10px 5px;">
      <table style="width: 100%">
        <?php foreach ($ratings as $rating) { ?>
        <tr>
          <td style="width: 20px"><input type="checkbox" name="avg_rating_filter" value="<?php echo $rating['value']; ?>" /></td>
          <td><span style="color: black; font-size: 14px"><?php echo $rating['rating_text']; ?></span></td>
        </tr>
        <?php } ?>
      </table>
    </div>
  </div>
</div>
    </div>








    </div>
</div>
<script>
  $(document).ready(function() {
    $cat_col_1_height = $("#cat_col_1").height();
    $("#cat_col_2").css("padding-top", $cat_col_1_height - 5);

    if ($(".brand-box").height() < 200)
      $(".brand-box").css("overflow-y", "hidden"); 
  });
</script>
<?php echo $footer; ?>
