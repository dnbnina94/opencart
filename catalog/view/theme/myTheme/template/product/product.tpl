<?php echo $header; ?>
<div class="container" style="margin-bottom: 35px">
  <ul class="breadcrumb">
    <?php $i=0; $len = count($breadcrumbs); ?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumb_link"><?php echo $breadcrumb['text']; ?></a></li>
    <?php $i++; if($i < $len) echo"<li>/</li>"; ?>
    <?php } ?>
  </ul>
  <div class="row">
    <div class="col-md-12" style="margin-bottom: 10px"><img src="<?php echo $logo_img ?>" class="img-responsive" /></div>
  <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
        <div style="font-weight: bold; color: black; font-size: 40px; line-height: 40px; text-transform: uppercase"><?php echo $heading_title; ?></div>
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" style="border: none; margin-bottom: 10px; padding: 0"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="product-img" style="padding-top: 20px; padding-bottom: 20px"/></a></li>
            <?php } ?>
            <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" style="border: none !important"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <!--<ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>-->

          <!--<div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_title; ?></label>
                    <input type="text" name="title" value="" id="input-title" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>-->


          <?php if ($products) { ?>
            <div style="font-weight: bold; color: black; text-transform: uppercase; font-size: 16px; margin-top: 20px"><?php echo $text_related; ?>:</div>
            <div class="row" style="padding-right: 30%;">
              <?php foreach ($products as $product) { ?>
              <div class="col-md-12" style="margin-top: 50px">
                <div class="col-xs-3" style="padding-left: 0px; padding-right: 0px">
                  <div><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" style="width: 130px; height: 130px;"/></a></div>
                </div>
                <div class="col-xs-9" style="height: 100%;">
                  
                        <span style="font-size: 20px"><a href="<?php echo $product['href']; ?>" class="bought_item_link"><?php echo $product['name']; ?></a></span>
                        <div style="height: 20px"></div>
                        <?php if ($product['price']) { ?>
                        <p class="price">
                        <?php if (!$product['special']) { ?>
                        <span class="bought_price"><a href="<?php echo $product['href']; ?>" class="bought_item_link"><?php echo $product['price']; ?></a></span>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        </p>
                        <?php } ?>      

                </div>
              </div>        
            <?php } ?>
          </div>
      <?php } ?>



        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>" style="color: black">
          <!--<div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>-->
          <!--<ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>-->
          <?php if ($price) { ?>
          <div class="row">
            <div class="col-xs-6" style="text-align: left; padding-left: 0px; padding-right: 0px">
              <div style="font-weight: bold; font-size: 40px; color: black; line-height: 40px"><?php echo $price; ?></div>
              <div style="font-size: 24px; text-transform: uppercase; margin-top: 5px"><?php echo $free_del_text; ?></div>
            </div>
            <div class="col-xs-6" style="text-align: right; padding-left: 0px; padding-right: 0px">
              <?php if ($review_status) { ?>
                <div class="rating">
                  <div>
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($rating < $i) { ?>
                    <span><i class="fa fa-star-o fa-5" aria-hidden="true" style="font-size: 22px;"></i></span>
                    <?php } else { ?>
                    <span><i class="fa fa-star fa-5" style="color: #3FADBC;font-size: 22px;" aria-hidden="true"></i></span>
                    <?php } ?>
                  <?php } ?>
                  </div>
                  <div style="font-size: 16px; padding-top: 21px;">
                     <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" class="reviews-link"><?php echo $reviews; ?></a> <!--/ <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>-->
                  </div>
             
            <!-- AddThis Button BEGIN -->
            <!--<div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>-->
            <!-- AddThis Button END -->
                </div>
              <?php } ?>
            </div>
            <div class="col-md-12" style="padding-left: 0px; padding-right: 0px">

              <div id="product">
            <?php if ($options) { ?>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <label style="font-size: 14px; padding-left: 5px; margin-bottom: 10px"><?php echo $option['name']; ?>:</label>
                    <div class="select-model-wrapper">
                      <select id="select-model">
                        <option value="pls_choose" disabled selected><?php echo $pls_choose_text; ?></option>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                          <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['model']; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <ul style="list-style: none outside none; margin:0; padding: 0; margin-top: 10px; ">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <li style="float: left;">
                          <div class="radio">
                        <label style="padding-left: 5px">
                          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" style="display: none"
                                 id="<?php echo $option_value['product_option_value_id']; ?>"/>
                          <?php if ($option_value['image']) { ?>
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" id="option-img<?php echo $option_value['product_option_value_id']; ?>" style="display: none"/> 
                          <?php } ?>                    
                          <div style="background-color: <?php echo $option_value['name']; ?>; height: 50px; width: 50px; position: relative;" class="shade" radio_val="<?php echo $option_value['product_option_value_id']; ?>">
                            <div style="position: absolute; bottom: 0; left: 4px"><i class="circle fa fa-circle-o" style="color: white" radio_val="<?php echo $option_value['product_option_value_id']; ?>"></i></div>
                          </div>
                        </label>
                      </div>
                        </li>
                      <?php } ?>
                                            </ul>
                    </div>
                  </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <!--<label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>-->
              <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
              <div class="col-md-12" style="padding-left: 5px; padding-right: 5px">
                <div style="display: inline-block; font-size: 14px; padding-right: 20px"><?php echo $entry_qty; ?>:</div>
                <div style="display: inline-block; padding-right: 20px">
                  <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" maxlength="2" id="input-quantity" class="form-control" style="border: 2px solid #3FADBC; text-align: center; border-radius: 0px; width: 40px" />
                  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                </div>
                  <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn" style="background-color: #3FADBC; border: none; box-shadow: none; color: white; text-transform: uppercase; border-radius: 0px; font-size: 14px; line-height: 0px; margin-top: -3px; padding: 17px 15px" <?php if ($disable_button) echo"disabled"; ?> ><?php echo $button_cart; ?></button>
              </div>
              <div class="col-md-12" style="padding-left: 5px; padding-right: 5px; margin-top: 20px">
                <span style="font-weight: bold; font-size: 14px"><?php echo $stock; ?></span>
                <span style="font-size: 14px">&nbsp;<?php echo $text_dispatch; ?></span>
              </div>

              <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
              <div class="col-md-12" style="padding-left: 5px; padding-right: 5px">
                <span style="font-size: 16px; text-transform: uppercase; font-weight: bold"><?php echo $tab_description; ?></span>
                <div style="height: 10px"></div>
                <span style="font-size: 12px;">
                  <?php echo $description; ?>
                </span>
              </div>
            </div>

              <?php foreach ($attribute_groups as $attribute_group) { ?>
                <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
                <div class="col-md-12" style="padding-left: 5px; padding-right: 5px">
                  <span style="font-size: 16px; text-transform: uppercase; font-weight: bold"><?php echo $attribute_group['name']; ?></span>
                  <div style="height: 10px"></div>
                    <?php $i=0; $len=count($attribute_group['attribute']); foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <div class="col-xs-3" style="padding-left: 0px">
                      <?php echo $attribute['name']; ?>:
                    </div>
                    <div class="col-xs-9" style="padding-left: 0px;">
                      <span style="line-height: 14px">
                        <?php echo $attribute['text']; ?>
                      </span>
                    </div>
                    <?php $i++; if($i < $len) { ?>
                      <div class="col-xs-12" style="border-top: 1px solid #CECECE; margin-top: 20px; margin-bottom: 20px"></div>
                    <?php } ?>
                    <?php } ?>
                </div>
              <?php } ?>

              <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
              <div class="col-md-12" style="padding-left: 5px; padding-right: 5px">
                <span style="font-size: 16px; text-transform: uppercase; font-weight: bold"><?php echo $del_and_returns_header; ?></span>
                <div style="height: 10px"></div>
                <span style="font-size: 12px;">
                  <?php echo $del_and_returns_desc; ?>
                </span>
              </div>

              <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px"></div>
              <div class="col-md-12" style="padding-left: 5px; padding-right: 5px">
                <span style="font-size: 16px; text-transform: uppercase; font-weight: bold"><?php echo $not_happy_header; ?></span>
                <div style="height: 10px"></div>
                <span style="font-size: 12px;">
                  <?php echo $not_happy_desc; ?>
                </span>
              </div>
              
            
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>

              

            </div>
          </div>
          <!--<ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>-->
          <?php } ?>
        </div>

        <div class="col-md-12" style="margin-top: 100px; padding-left: 0px; padding-right: 0px">
          <center>
            <div style="color: black; text-transform: uppercase; font-size: 16px; font-weight: bold"><?php echo $reviews_text; ?></div>
          </center>
          <div class="col-md-12" style="border-top: 2px solid #3FADBC; width: 100%; margin-top: 20px; margin-bottom: 20px; padding-left: 0px; padding-right: 0px"></div>
          <center>
            <div style="color: black; font-size: 14px; width: 60%; margin: 0 auto"><?php echo $reviews_text_desc; ?></div>
            <div style="margin-top: 20px; margin-bottom: 20px; color: black; font-size: 16px; text-transform: uppercase; font-weight: bold"><?php echo $reviews_summary_header; ?></div>
          </center>
          <?php if ($review_status) { ?>
                <center>
                <table style="margin-top: 40px; margin-bottom: 50px">
                  <tr>
                    <td style="vertical-align: middle; text-align: right; padding-right: 10px; font-size: 42px; color: #3FADBC;">
                      <?php echo $rating; ?>
                    </td>
                    <td style="vertical-align: middle; text-align: left; padding-left: 10px; padding-top: 2px">
                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($rating < $i) { ?>
                        <span><i class="fa fa-star-o fa-5" aria-hidden="true" style="font-size: 22px; color: #3FADBC;"></i></span>
                        <?php } else { ?>
                        <span><i class="fa fa-star fa-5" style="color: #3FADBC;font-size: 22px;" aria-hidden="true"></i></span>
                        <?php } ?>
                      <?php } ?>
                    </td>
                  </tr>
                </table>
                </center>
              <?php } ?>

          <div class="row review_row" style="margin-right: 0px; margin-left: 0px; max-height: 500px">
          <?php $i=0; $len = count($reviews_arr); foreach ($reviews_arr as $review) { ?>
          <div class="col-md-12" style="border-top: 1px solid #CECECE; padding-left: 5px; padding-right: 5px">
            <div style="color: #3FADBC; text-transform: uppercase; margin-top: 20px; margin-bottom: 20px">
              <table>
                <tr>
                  <td style="font-size: 22px;"><?php echo $review['title']; ?></td>
                  <td style="vertical-align: middle; padding-left: 20px">
                    <div class="rating">
                      <div>
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                          <?php if ($review['rating'] < $i) { ?>
                            <span><i class="fa fa-star-o fa-5" aria-hidden="true" style=""></i></span>
                          <?php } else { ?>
                            <span><i class="fa fa-star fa-5" style="color: #3FADBC;" aria-hidden="true"></i></span>
                          <?php } ?>
                        <?php } ?>
                      </div>    
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            <div style="font-size: 14px; color: black; margin-bottom: 15px">
              <?php echo $review['text']; ?>
            </div>
            <div style="font-size: 12px; color: black; margin-bottom: 20px">
              <?php echo $review['date_author']; ?>
            </div>
          </div>
          <?php } ?>
          <div class="col-md-12" style="margin-bottom: 20px; border-top: 1px solid #CECECE; padding-left: 5px; margin-right: 5px; margin-bottom: 0px !important"></div>
          </div>

          <div>
            <form class="form-horizontal" id="form-review">
                <div class="col-xs-12" style="text-transform: uppercase; color: black; font-size: 30px; text-align: center; margin-top: 30px; margin-bottom: 30px"><?php echo $text_write; ?></div>
                <?php if ($review_guest) { ?>
                <div class="col-sm-12" id="text-review" style="padding-left: 0px; padding-right: 0px"></div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" placeholder="<?php echo $entry_name; ?>" style="border-radius: 0px; border: 1px solid #3FADBC"/>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <input type="text" name="title" value="" id="input-title" class="form-control" placeholder="<?php echo $entry_title; ?>" style="border-radius: 0px; border: 1px solid #3FADBC"/>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <textarea name="text" rows="5" id="input-review" class="form-control" placeholder="<?php echo $entry_review; ?>" style="border-radius: 0px; border: 1px solid #3FADBC; resize: vertical"></textarea>
                  </div>
                </div>
                <div class="form-group required">
                  <div style="text-align: center; margin-bottom: 10px">
                    <div>
                      <span><i class="fa fa-star-o fa-5 review-star" aria-hidden="true" radio_val="1"></i></span>&nbsp;
                      <span><i class="fa fa-star-o fa-5 review-star" aria-hidden="true" radio_val="2"></i></span>&nbsp;
                      <span><i class="fa fa-star-o fa-5 review-star" aria-hidden="true" radio_val="3"></i></span>&nbsp;
                      <span><i class="fa fa-star-o fa-5 review-star" aria-hidden="true" radio_val="4"></i></span>&nbsp;
                      <span><i class="fa fa-star-o fa-5 review-star" aria-hidden="true" radio_val="5"></i></span>
                    </div>   
                    <input type="radio" name="rating" value="1" style="display: none" />
                    <input type="radio" name="rating" value="2" style="display: none" />
                    <input type="radio" name="rating" value="3" style="display: none" />
                    <input type="radio" name="rating" value="4" style="display: none" />
                    <input type="radio" name="rating" value="5" style="display: none" />
                  </div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div style="text-align: center">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" style="border: 2px solid #3FADBC; border-radius: 0px; background-color: white !important; color: black; box-shadow: none; text-transform: uppercase; font-size: 16px; padding: 5px 10px"><?php echo $button_review; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
              <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; border: 1px solid #3FADBC; margin-top: 20px"></div>
          </div>

          <div class="col-md-12" style="padding-left: 0px; padding-right: 0px; margin-top: 30px">
            <center>
              <span style="font-weight: bold; font-size: 16px; text-transform: uppercase; color: black"><?php echo $recently_viewed_text; ?></span>
            </center>






            <div id="slideshow" class="owl-carousel owl-carousel-featured4" style="opacity: 1; max-width: 1140px; margin: 0 auto;  margin-top: 20px; padding-left: 0px; padding-right: 0px">


              <?php foreach($recentlyViewed as $value){ ?>


              <div class="item">
                <div class="product-layout col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width: 100%; padding-right: 10px; padding-left: 10px">
                  <div class="product-thumb transition">
                    <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $base.'image/'.$value['image']; ?>" alt="<?php echo $value['name']; ?>" title="<?php echo $value['name']; ?>" class="img-responsive" /></a></div>
                    <div class="caption" style="padding-left: 0px; padding-right: 0px; margin-top: 10px">
                      <div style="padding-left: 5px; padding-right: 5px; width: 100% !important; text-align: center"><a href="<?php echo $product['href']; ?>" class="recently-viewed-link"><?php echo $value['name']; ?></a></div>
                    </div>
                  </div>
                </div>
              </div>


              <?php } ?>


</div>
<script type="text/javascript"><!--
$('#slideshow').owlCarousel({
  items: 5,
  autoPlay: 3000,
  singleItem: false,
  navigation: true,
  navigationText: ["<i class='fa fa-angle-left slideshow_arrow'></i>", "<i class='fa fa-angle-right slideshow_arrow'></i>"],
  pagination: false
});
--></script>






          </div>
          
        </div>


      </div>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

//$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#text-review').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#text-review').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});

  if ($(".review_row").height() >= 500) {
    $(".review_row").css("overflow-y", "scroll");
    //$(".review_row").css("padding-left", "15px");
    $(".review_row").css("padding-right", "15px");
  }
});

$(window).resize(function () {
  if ($(".review_row").height() >= 500) {
    $(".review_row").css("overflow-y", "scroll");
    //$(".review_row").css("padding-left", "15px");
    $(".review_row").css("padding-right", "15px");
  } else {
    $(".review_row").css("overflow-y", "hidden");
    $(".review_row").css("padding-left", "0px");
    $(".review_row").css("padding-right", "0px");
  }
});

$(".review-star").click(function() {
  $radio_val = $(this).attr("radio_val");

  $i = 0;
  while ($i < $radio_val) {
    $(".review-star").eq($i).removeClass("fa-star-o");
    $(".review-star").eq($i).addClass("fa-star");
    $(".review-star").eq($i).css("color", "#3FADBC");
    $i++;
  }

  while ($i < 5) {
    $(".review-star").eq($i).removeClass("fa-star");
    $(".review-star").eq($i).addClass("fa-star-o");
    $(".review-star").eq($i).css("color", "#666666");
    $i++;
  }

  $("[name=rating]").val([$radio_val]);

});

$(".shade").click(function() {
  $( ".shade i" ).removeClass( "fa-dot-circle-o" );
  $( ".shade i" ).addClass('fa-circle-o');

  $(this).find('i:first').addClass('fa-dot-circle-o');
  $val = $(this).attr("radio_val");
  $(".select-model-wrapper select").val($val);

  $("#product-img").attr("src", $("#option-img" + $val).attr("src"));

  $("#button-cart").attr('disabled', false);
});

$("#select-model").change(function() {
  $val = $(this).val();
  $("#" + $val).attr('checked', 'checked');

  $( ".shade i" ).removeClass( "fa-dot-circle-o" );
  $( ".shade i" ).addClass('fa-circle-o');
  $(".circle[radio_val='" + $val + "']").addClass("fa-dot-circle-o");

  $("#product-img").attr("src", $("#option-img" + $val).attr("src"));

  $("#button-cart").attr('disabled', false);
});


//--></script>
<?php echo $footer; ?>
