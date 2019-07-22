<?php require_once("../resources/config.php"); ?>
<?php require_once("cart.php"); ?>
<?php include(TEMPLATE_FRONT . DS . "header.php"); ?>

   
    <!-- Page Content -->
    <div class="container">


<!-- /.row --> 

<div class="row">
      <h4 class="text-center bg-danger"><?php display_message() ?></h4>
      <h1>Checkout - step 2</h1>

<form action="checkout2.php" method="post" class="form-horizontal">
	<div class="form-group">
	<label for="lastname" class="col-xs-3 control-label">Nume</label>
	<div class="col-xs-9">
	<input type="text" name="lastname" id="lastname" class="form-control">
	</div>

	</div>
	<div class="form-group">
	<label for="firstname" class="col-xs-3 control-label">Prenume</label>
	<div class="col-xs-9">
	<input type="text" name="firstname" id="firstname" class="form-control">
	</div>
	</div>

	<div class="form-group">
	<label for="email" class="col-xs-3 control-label">Email</label>
	<div class="col-xs-9">
	<input type="email" name="email" id="email" class="form-control">
	</div>
	</div>

	<div class="form-group">
	<label for="phone" class="col-xs-3 control-label">Telefon</label>
	<div class="col-xs-9">
	<input type="text" name="phone" id="phone" class="form-control">
	</div>
	</div>

	<div class="form-group">
	<label for="town" class="col-xs-3 control-label">Oras</label>
	<div class="col-xs-9">
	<input type="text" name="town" id="town" class="form-control">
	</div>
	</div>

	<div class="form-group">
	<label for="address" class="col-xs-3 control-label">Adresa</label>
	<div class="col-xs-9">
	<input type="text" name="address" id="address" class="form-control">
	</div>
	</div>

	<div class="form-group">
	<label for="payment_method" class="col-xs-3 control-label">Metoda de plata</label>
	<div class="col-xs-9">
	<select name="payment_method" id="payment_method" class="form-control">
	<option value="Card">Card</option>
	<option value="Cash">Cash</option>
	</select>
	</div>
	</div>

	<div class="form-group">
	<label for="delivery_method" class="col-xs-3 control-label">Metoda de livrare</label>
	<div class="col-xs-9">
	<select name="delivery_method" id="delivery_method" class="form-control">
	<option value="Post">Prin posta</option>
	<option value="PickUp">Ridicare personala</option>
	</select>
	</div>
	</div>
	<div class="form-group">
	<div class="col-xs-3 control-label">Total comanda: </div>
	<div class="col-xs-9"><strong><span class="amount">$ <?php echo isset($_SESSION['total_price']) ? $_SESSION['total_price'] : $_SESSION['total_price'] = "0"; ?></span></strong>
	</div></div>
	<div class="form-group">
	<div class="col-xs-3 control-label">Numar produse comandate: </div>
	<div class="col-xs-9"><span class="amount"><?php echo isset($_SESSION['total_books']) ? $_SESSION['total_books'] : $_SESSION['total_books'] = '0';?></span>
	</div>
	</div>
	<div class="form-group">
	<div class="col-xs-offset-3 col-xs-9">
	<button type="checkout" class="btn btn-warning">Comanda!</button></div></div>
</form>


 </div><!--Main Content-->


    <?php include(TEMPLATE_FRONT . DS . "footer.php"); ?>
	