<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
            <div class="col-md-8  col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2 editor-block">
                <div class="editor-picture">
                          <div class="losange">
                        <img src="<?php echo $editor['image']; ?>"  />

                    </div>
                </div>
                <div class="editor-name" style="text-align: center;">
                    <h2 style="color: #3FADBC;font-weight: 700;"><?php echo $editor['firstname']." ".$editor['lastname']; ?></h2>
                </div>
                <div class="editor-short-description" style="text-align: center;">
                    <h4 style="color:#4fb3c1; font-weight: 500;"><?php echo $editor['short_description']; ?></h4>
                </div>
                <div class="col-md-10  col-sm-10 col-xs-12 col-md-offset-1 col-sm-offset-1 editor-description" style="text-align: center">
                    <h4><?php echo $editor['description']; ?></h4>
                    <div style="border-top: 3px solid #3FADBC;width: 20%;margin: 7% auto;"></div>
                </div>

            </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
