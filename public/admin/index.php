<?php require_once("../../resources/config.php") ?>

<?php include(TEMPLATE_BACK . "/header.php") ?>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small>Statistics Overview</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>

                        </ol>
                      <?php include(TEMPLATE_BACK . "/admin_content.php") ?>
                    </div>
                </div>
                <!-- /.row -->

                <?php 

                if(($_SERVER['REQUEST_URI'] == "/licenta/public/admin/") || ($_SERVER['REQUEST_URI'] == "/licenta/public/admin/index.php")){
                    include(TEMPLATE_BACK . "/admin_content.php");
                }
                ?>  


            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
<?php include(TEMPLATE_BACK . "/footer.php") ?>