<?php require_once("../../resources/config.php") ?>
<?php include(TEMPLATE_BACK . "/header.php") ?>
        <div id="page-wrapper">

            <div class="container-fluid">

             <div class="row">

<h1 class="page-header">
   All Books

</h1>
<h3 class = "bg-success"><?php display_message(); ?></h3>
<table class="table table-hover">


    <thead>

      <tr>
           <th>Id</th>
           <th>Title</th>
           <th>Image</th>
           <th>Category</th>
           <th>Price</th>
           <th>Quantity</th>
      </tr>
    </thead>
    <tbody>
        <?php view_books_admin(); ?>
  </tbody>
</table>

             </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->







    </div>
    <!-- /#wrapper -->

<?php include(TEMPLATE_BACK . "/footer.php") ?>