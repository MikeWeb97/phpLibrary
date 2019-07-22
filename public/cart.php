<?php require_once("../resources/config.php"); ?>

<?php 

  if(isset($_POST['firstname'])) {
	$order_lastname         = escape_string($_POST['lastname']);
	$order_firstname   = escape_string($_POST['firstname']);
	$order_email   = escape_string($_POST['email']);
	$order_phone   				= escape_string($_POST['phone']);
  $order_town     = escape_string($_POST['town']);
	$order_address         		= escape_string($_POST['address']);
	$order_delivery_method    = escape_string($_POST['delivery_method']);
	$order_payment_method      = escape_string($_POST['payment_method']);
	
	$add_order = query("INSERT INTO orders (`status`, `lastname`, `firstname`, `email`, `phone`, `town`, `address`, `delivery_method`, `payment_method`) VALUES(0, '{$order_lastname}', '{$order_firstname}', '{$order_email}', '{$order_phone}', '{$order_town}', '{$order_address}', '{$order_delivery_method}', '{$order_payment_method}')");
	confirm($add_order);
	$order_id = mysqli_insert_id($connection);
	
	foreach($_SESSION as $name => $value){
		if($value > 0 ){
			if(substr($name, 0, 5 ) == "book_"){
				$name_length = strlen($name) - 5;
				$id =  substr($name, 5, $name_length);
				$add_order_details = query("INSERT INTO order_details (`order_id`, `product_id`, `qty`, `price`) SELECT '{$order_id}', '{$id}', '{$value}', `book_price` FROM `books` WHERE `book_id` = {$id}");
				confirm($add_order_details);
        $quantity_dinamic = query("UPDATE books SET `book_quantity` = `book_quantity` - {$value} WHERE  `book_id` = {$id}");
        confirm($quantity_dinamic);
			}
		}
	}
	
    set_message("Comanda plasata cu succes!");
  }

//CART - ADD ITEM - FUNCTION
  if(isset($_GET['add'])) {

    $add_book = query("SELECT * FROM books WHERE book_id=" . escape_string($_GET['add']). " ");
    confirm($add_book);

    while($row = fetch_array($add_book)) {
      if($row['book_quantity'] != $_SESSION['book_' . $_GET['add']]){
        $_SESSION['book_' . $_GET['add']]+=1;
        redirect("checkout.php");
     } 
     else { 
        set_message("Avem doar " . $row['book_quantity'] . " exemplare din " . "{$row['book_title']}" . " disponibile pe stoc!");
        redirect("../public/checkout.php");
      }

 }
 }

 //CART - REMOVE ITEM - FUNCTION
  if(isset($_GET['remove'])) {

    $_SESSION['book_' . $_GET['remove']]--;
    if($_SESSION['book_' . $_GET['remove']] < 1) {
      unset($_SESSION['total_price']);
      unset($_SESSION['total_books']);
      redirect("../public/checkout.php");

    } else {
      redirect("../public/checkout.php");
     }
  }


// CART - DELETE - FUNCTION
 if(isset($_GET['delete'])) { 
  $_SESSION['book_' . $_GET['delete']] = '0';
  unset($_SESSION['total_price']);
  unset($_SESSION['total_books']);
  redirect("../public/checkout.php");
 }

 function cart(){

$total = 0;
$total_books = 0; $sub_total=0;
$item_name = 1;
$item_number = 1;
$amount = 1;
$quantity = 1;

foreach($_SESSION as $name => $value){

if($value > 0 ){
if(substr($name, 0, 5 ) == "book_"){
//(substr) Imi poate numara literele, de la 0 la cat ii spun eu.
$name_length = strlen($name) - 5;
$id =  substr($name, 5, $name_length);

$query = query("SELECT * FROM books WHERE book_id = " . escape_string($id). " ");
confirm($query);

while($row = fetch_array($query)){   
    $sub_total = $row['book_price'] * $value;
    $total_books += $value;

    $book = <<<DELIMITER

<tr>
    <td>{$row['book_title']}</td>
    <td>&#36;{$row['book_price']}</td>
    <td>{$value}</td>
    <td>&#36;{$sub_total}</td>
    <td><a class='btn btn-warning' href="cart.php?remove={$row['book_id']}"><span class='glyphicon glyphicon-minus'></span></a>   <a class='btn btn-success' href="cart.php?add={$row['book_id']}"><span class='glyphicon glyphicon-plus'></span></a>
<a class='btn btn-danger' href="cart.php?delete={$row['book_id']}"><span class='glyphicon glyphicon-remove'></span></a></td>
</tr>
  <input type="hidden" name="item_name_{$item_name}" value="{$row['book_title']}">
  <input type="hidden" name="item_number_{$item_number}" value="{$row['book_id']}">
  <input type="hidden" name="amount_{$amount}" value="{$row['book_price']}">
  <input type="hidden" name="quantity_{$quantity}" value="$value">
DELIMITER;
echo $book;
$item_name ++;
$item_number ++;
$amount ++;
$quantity++;
} 
    $_SESSION['total_price'] = $total += $sub_total;
    $_SESSION['total_books'] = $total_books;
}
}
}
}   
 ?>