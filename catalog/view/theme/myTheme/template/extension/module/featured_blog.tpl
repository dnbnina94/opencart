
<div class="container" style="width: 100% !important; padding-top: 50px; padding-bottom: 50px">
<div class="row featured-row" style="max-width: 1000px; margin: 0 auto; padding-bottom: 30px">
<?php foreach ($products as $product) { ?>
<div class="col-md-6">
  <h4><a style="font-size: 36px;" href="<?php echo $product['href']; ?>" class="blog-featured-link"><?php echo $product['name']; ?></a></h4>
  <div style="border: 3px solid #3FADBC; margin-top: 20px; width: 130px"></div>
  <div style="line-height: 1.2; padding-right: 30%; font-size: 14px; color: black; padding-top: 20px"><?php echo $product['description']; ?></div><br/>
<div class="read-more-btn-blog" style="margin-top: 0px"><a href="<?php echo $product['href']; ?>" class="header_link" style="display: block;">Read More</a></div>
  <!--<div class="caption" style="padding-left: 0px; padding-right: 0px">
        <center><h4 style="padding-left: 15px; padding-right: 15px"><a href="<?php echo $product['href']; ?>" class="blog-featured-link"><?php echo $product['name']; ?></a></h4>
        <div style="color: black; margin-left: 15px; margin-right: 15px; line-height: 1.2; padding-left: 0px; padding-right: 0px; font-size: 14px; height: 52px;"><span><?php echo $product['description']; ?></span></div>

        <div class="read-more-btn-blog"><a href="<?php echo $product['href']; ?>" class="header_link" style="display: block;">Read More</a></div>
      </center>
      </div>-->
</div>
<div class="col-md-6">
  <div class="image" style="padding: 0px"><a href="<?php echo $product['href']; ?>"><img style="margin: 0 auto; width: 100%" src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
</div>
<?php } ?>

</div>
</div>
