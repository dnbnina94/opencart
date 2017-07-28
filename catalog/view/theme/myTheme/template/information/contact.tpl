<?php echo $header; ?>
<div class="container">
    <div class="col-md-12 col-sm-12 col-xs-12">
        OVDE IDE MAPA
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12 contact-container">
        <div class="col-md-6 col-sm-12  col-xs-12">
            <p class="contact-title">CITYLOOKS - SALON BELGRADE</p>
            <div class="col-md-6 col-sm-6  col-xs-12">
                <p class="contact-content">
                    Naša filozofija je zasnovana na uverenju da lepota dolazi kroz prirodan izgled. Naglašavamo stil i
                    kvalitet naših usluga. Vrujemo da je svaki klijent jedinstven, kao i njegove potrebe, njegovo lice,
                    njegov način života. Inspirisani smo onim što vidimo, osećamo i čujemo na ulicama velikih gradova.
                    CITZLOOKS je pod uticajem svega što ga okružuje, apsorbuje energiju, ponovo otkriva granice.
                </p>
            </div>
        </div>
        <div class="col-md-3 col-sm-12  col-xs-12">
            <p class="contact-title">OPENING TIMES</p>
            <div class="col-md-6 col-sm-6  col-xs-6 contact-workhours">
                <p>Ponedeljak</p>
                <p>Utorak</p>
                <p>Sreda</p>
                <p>Četvrtak</p>
                <p>Petak</p>
                <p>Subota</p>
                <p>Nedelja</p>
            </div>
            <div class="col-md-6 col-sm-6  col-xs-6 contact-workhours">
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>Zatvoreno</p>
            </div>
        </div>
        <div class="col-md-3 col-sm-12  col-xs-12">
            <p class="contact-title">BOOK NOW</p>
            <div class="col-md-12 col-sm-12  col-xs-12 contact-inf">
                <p>T: 011 328 5177</p>
                <p>MOB: +381 638 8294</p>
                <p>citylooks@outlook.com</p>
            </div>
        </div>
    </div>


    <!--<div class="col-md-12  col-sm-12 col-xs-12 contact-informations">
        <div class="col-md-6 col-sm-6  col-xs-6">
            <p class="contact-content">
                Naša filozofija je zasnovana na uverenju da lepota dolazi kroz prirodan izgled. Naglašavamo stil i
                kvalitet naših usluga. Vrujemo da je svaki klijent jedinstven, kao i njegove potrebe, njegovo lice,
                njegov način života. Inspirisani smo onim što vidimo, osećamo i čujemo na ulicama velikih gradova.
                CITZLOOKS je pod uticajem svega što ga okružuje, apsorbuje energiju, ponovo otkriva granice.
            </p>
        </div>
        <div class="col-md-3 col-sm-3  col-xs-3">
            <div class="col-md-6 col-sm-6  col-xs-6 contact-workhours">
                <p>Ponedeljak</p>
                <p>Utorak</p>
                <p>Sreda</p>
                <p>Četvrtak</p>
                <p>Petak</p>
                <p>Subota</p>
                <p>Nedelja</p>
            </div>
            <div class="col-md-6 col-sm-6  col-xs-6 contact-workhours">
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>9am - 5pm</p>
                <p>Zatvoreno</p>
            </div>
        </div>
        <div class="col-md-3 col-sm-3  col-xs-3 contact-inf">
            <p>T: 011 328 5177</p>
            <p>MOB: +381 638 8294</p>
            <p>citylooks@outlook.com</p>
        </div>
    </div>-->
    <div class="col-md-8  col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2 ">
        <div class="row contact-form">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                    <div class="form-group required">
                        <!--<label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>-->


                        <div class="col-sm-6">
                            <input type="text" name="name" placeholder="First name" value="<?php echo $name; ?>" id="input-name"
                                   class="form-control form-input"/>
                            <?php if ($error_name) { ?>
                            <div class="text-danger"><?php echo $error_name; ?></div>
                            <?php } ?>
                        </div>


                        <div class="col-sm-6">
                            <input type="text" name="lastName" placeholder="Last name"  value="<?php echo $lastName; ?>" id="input-name"
                                   class="form-control form-input"/>
                            <?php if ($error_lastName) { ?>
                            <div class="text-danger"><?php echo $error_lastName; ?></div>
                            <?php } ?>
                        </div>


                    </div>
                    <div class="form-group required">
                        <div class="col-sm-12">
                            <input type="text" name="email"  placeholder="Email"  value="<?php echo $email; ?>" id="input-email"
                                   class="form-control form-input"/>
                            <?php if ($error_email) { ?>
                            <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <div class="col-sm-12">
                            <input type="text" name="title" placeholder="<?php echo $entry_title; ?>" id="input-title"
                                   class="form-control form-input"/>
                            <?php if ($error_title) { ?>
                            <div class="text-danger"><?php echo $error_title; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <div class="col-sm-12">
                        <textarea name="enquiry" rows="10" id="input-enquiry"
                                  placeholder="<?php echo $entry_enquiry; ?>"
                                  class="form-control"><?php echo $enquiry; ?></textarea>
                            <?php if ($error_enquiry) { ?>
                            <div class="text-danger"><?php echo $error_enquiry; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <?php echo $captcha; ?>
                </fieldset>
                <div class="buttons">
                    <div style="text-align: center">
                        <input class="btn btn-send" type="submit" value="<?php echo $button_submit; ?>"/>
                    </div>
                </div>
            </form>
            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>

<?php echo $footer; ?>
