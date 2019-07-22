<?php require_once("../resources/config.php"); ?>
<?php include(TEMPLATE_FRONT . DS . "header.php"); ?>
    <!-- Page Content -->
    <div class="container">

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h3>Rezultatele Cautarii:</h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">
            <?php books_cat_page(); ?>
              <br>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
    <?php include(TEMPLATE_FRONT . DS . "footer.php"); ?>