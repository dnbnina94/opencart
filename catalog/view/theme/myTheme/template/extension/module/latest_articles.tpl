
<div class="container" style="background-color: #EDF4F7; width: 100% !important; padding-top: 70px; padding-bottom: 20px">
<div class="row featured-row" style="max-width: 1140px; margin: 0 auto;">
<?php $i=0; foreach ($latest_blogs as $blog) { ?>
  <div class="col-sm-6" style="border-top: 2px solid #3FADBC; padding: 30px 0px; overflow: hidden">
    <a href="<?php echo $blog['href']; ?>"><div style="width: 200px; height: 200px; background: url('<?php echo $blog['image']; ?>') no-repeat center center; background-size: cover; float: left">
    </div></a>
    <div style="height: 200px; max-width: 340px; float: left; padding-left: 30px">
      <a href="<?php echo $blog['href']; ?>"><div style="font-size: 22px; color: #3FADBC; text-transform: uppercase; line-height: 1.2;"><?php echo $blog['name']; ?></div></a>
      <a href="<?php echo $blog['href']; ?>"><div style="line-height: 1.2; font-size: 14px; color: black; margin-top: 10px">
        <?php echo $blog['intro_text']; ?>
      </div></a>
      <div class="read-more-btn-blog"><a href="<?php echo $blog['href']; ?>" class="header_link" style="display: block;">Read More</a></div>
    </div>
  </div>
<?php $i++; } ?>
<?php if (($i % 2) == 1) { ?>
  <div class="col-sm-6" style="border-top: 2px solid #3FADBC; padding: 30px 0px; overflow: hidden"></div>
<?php } ?>
<div class="col-sm-12" style="border-top: 2px solid #3FADBC"></div>
</div>
</div>

<div style="height: 100px"></div>
