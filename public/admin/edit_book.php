<?php require_once("../../resources/config.php") ?>
<?php include(TEMPLATE_BACK . "/header.php") ?>
<?php update_book(); ?>

<?php 
if(isset($_GET['id'])){
$query = query("SELECT * FROM books WHERE book_id = " . escape_string($_GET['id']) . " ");
confirm($query);

while($row = fetch_array($query)){
$book_title         = escape_string($row['book_title']);
$book_category_id   = escape_string($row['book_category_id']);
$book_description   = escape_string($row['book_description']);
$book_price         = escape_string($row['book_price']);
$book_quantity      = escape_string($row['book_quantity']);
$book_image         = escape_string($row['book_image']);
}
}

 ?>

<div id="page-wrapper">

<div class="container-fluid">

<div class="col-md-12">

<div class="row">
<h1 class="page-header">
   EDIT BOOK
</h1>
</div>
               


<form action="" method="post" enctype="multipart/form-data">


<div class="col-md-8">

<div class="form-group">
    <label for="book-title">Book Title </label>
        <input type="text" name="book_title" class="form-control" value="<?php echo $book_title; ?>">
       
    </div>


    <div class="form-group">
           <label for="book-title">Book Description</label>
      <textarea name="book_description" id="" cols="30" rows="10" class="form-control"><?php echo $book_description; ?></textarea>
    </div>



    <div class="form-group row">

      <div class="col-xs-3">
        <label for="book-price">Book Price</label>
        <input type="number" value="<?php echo $book_price; ?>" name="book_price" class="form-control" size="60">
      </div>
    </div>




    
    

</div><!--Main Content-->


<!-- SIDEBAR-->


<aside id="admin_sidebar" class="col-md-4">

     
    <div class="form-group">
        <input type="submit" name="update" class="btn btn-primary btn-lg" value="Update">
    </div>


     <!-- Book Categories-->

    <div class="form-group">
         <label for="book-category">Book Category</label>
          <select name="book_category_id" id="" class="form-control">
            <option value="">Select Category</option>
            <?php show_categories_add_books(); ?>
        </select>


</div>

    <!-- Book Brands-->


    <div class="form-group">
      <label for="book-title">Book Quantity</label>
      <input type="number" value="<?php echo $book_quantity; ?>"name="book_quantity" $book_description class="form-control">
    </div>


<!-- Book Tags -->


    <!-- Product Image -->
    <div class="form-group">
        <label for="book_image">Book Image</label>
		<img src="../../resources/uploads/<?php echo $book_image; ?>" style="max-width: 100%;">
		<p>&nbsp;</p>
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
