<footer>
  <div class="container" style="width: 100%; background-color: #EDF4F7; padding-bottom: 10px">
    <div class="row" style="max-width: 1140px; margin: 0 auto;">
      <?php if ($informations) { ?>
      <div class="col-sm-4">
        <div class="footer-information-title"><?php echo $text_information; ?></div>
        <ul class="list-unstyled">
          <li><?php echo $text_phone; ?></li>
          <li><?php echo $text_street; ?></li>
          <li><?php echo $text_opened1; ?></li>
          <li><?php echo $text_opened2; ?></li>
          <li><?php echo $text_opened3; ?></li>
        </ul>
        <!--<ul class="list-unstyled">

				<li><a href="<?php echo $blog['href']; ?>"><?php echo $blog['name']; ?></a></li>
            
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>" class="black_link"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>-->
      </div>
      <?php } ?>
      <div class="col-sm-4" style="text-align: center">
        <div style="display: inline-block;">
        <div class="footer-information-title">MYCITYLOOKS</div>
        <ul class="list-unstyled" style="text-align: left">
          <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
        </ul>
        </div>
        <!--<div class="footer-information-title"><?php echo $text_service; ?></div>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>" class="black_link"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>" class="black_link"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>" class="black_link"><?php echo $text_sitemap; ?></a></li>
        </ul>-->
      </div>
      <div class="col-sm-4" style="text-align: right">
        <div style="display: inline-block;">
        <div class="footer-information-title"><?php echo $text_service; ?></div>
        <ul class="list-unstyled" style="text-align: left">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>" class="black_link"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $contact; ?>" class="black_link"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>" class="black_link"><?php echo $text_return; ?></a></li>
        </ul>
        </div>
      </div>
      <!--<div class="col-sm-3">
        <div class="footer-information-title"><?php echo $text_extra; ?></div>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>" class="black_link"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>" class="black_link"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>" class="black_link"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>" class="black_link"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <div class="footer-information-title"><?php echo $text_account; ?></div>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>" class="black_link"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>" class="black_link"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>" class="black_link"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>" class="black_link"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>-->
    <!--<hr>
    <p><?php echo $powered; ?></p>-->
  </div>
  </div>
  <div class="container" style="width: 100%; background-color: #3FADBC;">
       <div class="row" style="max-width: 1140px; margin: 0 auto">
      <div class="col-sm-6">
        <table style="margin-top: 35px; margin-bottom: 35px">
            <tr>
                <td style="padding-right: 30px">
                    <a href="http://localhost/opencart"><img src="http://localhost/opencart/image/catalog/logo.png" class="img-responsive" style="max-height: 35px"/></a>
                </td>
                <td style="vertical-align: middle; color: white; font-size: 16px">
                    &copy; 2017 EVOKE | COPYRIGHT
                </td>
            </tr>
        </table>
      </div>
      <div class="col-sm-6" style="text-align: right; color: #1F545B; line-height: 105px">

            <i class="fa fa-google-plus fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-youtube-play fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-instagram fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-pinterest-p fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-facebook fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-twitter fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <i class="fa fa-comment fa-lg" aria-hidden="true" style="font-size: 22px !important"></i>

      </div>
    </div>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>