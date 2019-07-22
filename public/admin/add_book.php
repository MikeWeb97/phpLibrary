<?php require_once("../../resources/config.php") ?>
<?php include(TEMPLATE_BACK . "/header.php") ?>
<?php create_book(); ?>

<div id="page-wrapper">

<div class="container-fluid">

<div class="col-md-12">

<div class="row">
<h1 class="page-header">
   Add BOOK
</h1>
</div>
               


<form action="" method="post" enctype="multipart/form-data">


<div class="col-md-8">

<div class="form-group">
    <label for="book-title">Book Title </label>
        <input type="text" name="book_title" class="form-control">
       
    </div>


    <div class="form-group">
           <label for="book-title">Book Description</label>
      <textarea name="book_description" id="" cols="30" rows="10" class="form-control"></textarea>
    </div>



    <div class="form-group row">

      <div class="col-xs-3">
        <label for="book-price">Book Price</label>
        <input type="number" name="book_price" class="form-control" size="60">
      </div>
    </div>




    
    

</div><!--Main Content-->


<!-- SIDEBAR-->


<aside id="admin_sidebar" class="col-md-4">

     
    <div class="form-group">
        <input type="submit" name="publish" class="btn btn-primary btn-lg" value="Publish">
    </div>


     <!-- Product Categories-->

    <div class="form-group">
         <label for="book-category">Book Category</label>
          <select name="book_category_id" id="" class="form-control">
            <option value="">Select Category</option>
            <?php show_categories_add_books(); ?>
        </select>


</div>
    <!-- Product Brands-->


    <div class="form-group">
      <label for="book-title">Book Quantity</label>
      <input type="number" name="book_quantity" class="form-control">
    </div>


<!-- Product Tags -->


    <!-- Product Image -->
    <div class="form-group">
        <label for="book_image">Book Image</label>
        <input type="file" name="image">
      
    </div>

</aside><!--SIDEBAR-->


    
</form>

          </div>
            <!-- /.container-fluid -->

        </div>
      <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php include(TEMPLATE_BACK . "/footer.php") ?>
