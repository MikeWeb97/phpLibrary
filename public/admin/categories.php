<?php require_once("../../resources/config.php") ?>
<?php include(TEMPLATE_BACK . "/header.php") ?>
    
<?php add_category(); ?>
<?php delete_category(); ?>

    <div id="page-wrapper">
    <div class="container-fluid">
<h1 class="page-header">
  Book Categories

</h1>


<div class="col-md-4">
    
    <form action="" method="post">
    
        <div class="form-group">
            <label for="category-title">Add Category</label>
            <input type="text" name="add_category"class="form-control">
        </div>

        <div class="form-group">
            
            <input type="submit" name="add_cat" class="btn btn-primary" value="Add Category">
        </div>      
  
    </form>


</div>


<div class="col-md-8">

    <table class="table">
            <thead>

        <tr>
            <th>id</th>
            <th>Title</th>
        </tr>
            </thead>


    <tbody>
     <?php show_categories(); ?>
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