<?php require_once("../../resources/config.php") ?>
<?php include(TEMPLATE_BACK . "/header.php") ?>
<?php add_users(); ?>

<div id="page-wrapper">

<div class="container-fluid">

<div class="col-md-12">

<div class="row">
<h1 class="page-header">
   Add USER
</h1>
</div>
               


<form action="" method="post">


<div class="col-md-8">

    <div class="form-group row">
        <div class="col-xs-3">
        <label for="book-price">User Name</label>
        <input type="text" name="user_name" class="form-control" size="60">
    </div>
  </div>

    <div class="form-group row">
      <div class="col-xs-3">
        <label for="book-price">User Password</label>
        <input type="password" name="user_password" class="form-control" size="60">
      </div>
  </div>

      <div class="form-group row">
        <div class="col-xs-3">
        <label for="book-price">User Email</label>
        <input type="email" name="user_email" class="form-control" size="60">
    </div>
  </div>

      <div class="form-group">
        <input type="submit" name="add" class="btn btn-primary btn-lg" value="Add User">
    </div>
    </div>

    </div>
</form>

          </div>
        </div>
    </div>

<?php include(TEMPLATE_BACK . "/footer.php") ?>
