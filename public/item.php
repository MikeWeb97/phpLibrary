<?php require_once("../resources/config.php"); ?>
<?php include(TEMPLATE_FRONT . DS . "header.php"); ?>
<!-- Page Content -->
<div class="container">
		   <!-- Side Navigation -->
			<?php include(TEMPLATE_FRONT . DS . "side-nav.php"); ?>


	<?php
	$query = query(" SELECT * FROM books WHERE book_id= ". escape_string($_GET['id']) . " ");
	confirm($query);
	while($row = fetch_array($query)):
	$book_image = display_image($row['book_image']);
	?>
	<div class="col-md-9">
		<!--Row For Image and Short Description-->
		<div class="row">
			<div class="col-md-7">
			   <img class="img-responsive" src="<?php echo "../resources/$book_image"; ?>" alt="">
			</div>
			<div class="col-md-5">
				<div class="thumbnail">
					<div class="caption-full">
						<h4><a href="#"><?php echo $row['book_title']; ?></a> </h4>
						<hr>
						<h4 class=""><?php echo "$" . $row['book_price']; ?></h4>
					<p><b>Book Quantity: </b><?php echo $row['book_quantity'] ?></p>
				</div>
					<form action="">
						<div class="form-group">
							<a class="btn btn-primary" target="_blank" href="cart.php?add=<?php echo $row['book_id']; ?>">Add to cart</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--Row For Image and Short Description-->
		<hr>
		<!--Row for Tab Panel-->
		<div class="row">
			<div role="tabpanel">
			  <!-- Nav tabs -->
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
			  </ul>
			  <!-- Tab panes -->
			  <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<p></p>       
					<p><?php echo $row['book_description']; ?></p>
				</div>
			 </div>
			</div>
		</div>
		<!--Row for Tab Panel-->
	</div> <!-- The page ends here -->
	<?php endwhile; ?>
</div>
<!-- /.container -->

<?php include(TEMPLATE_FRONT . DS . "footer.php"); ?>