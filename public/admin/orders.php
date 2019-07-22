<?php require_once("../../resources/config.php") ?>

<?php include(TEMPLATE_BACK . "/header.php") ?>

        <div id="page-wrapper">

            <div class="container-fluid">         

        <div class="col-md-12">
<div class="row">
<h1 class="page-header">
   All Orders

</h1>
</div>

<div class="row">
<table class="table table-hover">
    <thead>

      <tr>
           <th>Order ID</th>
           <th>C. Name</th>
           <th>C. Email</th>
           <th>C. Phone</th>
           <th>C. Adress</th>
           <th>Order Date</th>
           <th>Order Status</th>
           <th>Delete Order</th>
           <th>Order Invoice</th>
      </tr>
    </thead>
    <tbody>
        <?php view_orders_admin(); ?>
  </tbody>
</table>
</div>











            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

   <?php include(TEMPLATE_BACK . DS . "footer.php"); ?>
