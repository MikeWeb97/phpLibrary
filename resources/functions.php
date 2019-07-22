<?php

//helper functions
$upload_directory = "uploads";

function display_image($picture){
global $upload_directory;

return $upload_directory . DS . $picture;
}

function redirect($location){
    header("Location: $location");
}

function set_message($msg){

if(!empty($msg)) {

$_SESSION['message'] = $msg;

} else {

$msg = "";
}
}

function display_message() {

    if(isset($_SESSION['message'])) {

        echo $_SESSION['message'];
        unset($_SESSION['message']);

    }
}

function query($sql){
    global $connection;
    return mysqli_query($connection, $sql);
}

function confirm($result){
    global $connection;
    
    if(!$result){
        die("QUERRY FAILED" . mysqli_error($connection));
    }
}

function escape_string($string){
    global $connection;
    return mysqli_real_escape_string($connection, $string);
}

function fetch_array($result){
return mysqli_fetch_array($result);
}



function get_books(){
$query = query("SELECT * FROM books");
confirm($query);
while($row = fetch_array($query)){
$book_image = display_image($row['book_image']);
$book_text = substr($row['book_description'],0,91);
$book = <<<DELIMITER
    <div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <a href="item.php?id={$row['book_id']}"><img width=100 height=100 src= "../resources/{$book_image}" alt="image">
        </a>
        <div class="caption">
            <h4 class="pull-down">&#36;{$row['book_price']}</h4>
            <h4><a href="item.php?id={$row['book_id']}">{$row['book_title']}</a>
            </h4>
            <p>$book_text...</p>
            <a class="btn btn-primary" target="_blank" href="cart.php?add={$row['book_id']}">Add to cart</a>
        </div>
    </div>
</div>
DELIMITER;
    echo $book;
}
}

function get_categories(){
    $query = query("SELECT * FROM categories");
    confirm($query);
    
while($row = fetch_array($query)){
$cat_link = <<<DELIMITER
<a href='category.php?id={$row['cat_id']}' class='list-group-item'>{$row['cat_title']}</a>
DELIMITER;
echo $cat_link;
}
}

function books_cat_page(){
$query = query("SELECT * FROM books WHERE book_category_id = " . escape_string($_GET['id']) . " ");
confirm($query);
while($row = fetch_array($query)){
$book_text = substr($row['book_description'],0,91);
$book_image = display_image($row['book_image']);
$book = <<<DELIMITER
    <div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail">
        <a href="item.php?id={$row['book_id']}"><img width=100 height=100 src= "../resources/{$book_image}" alt="image">
        </a>
        <div class="caption">
            <h4 class="pull-down">&#36;{$row['book_price']}</h4>
            <h4><a href="item.php?id={$row['book_id']}">{$row['book_title']}</a>
            </h4>
            <p>$book_text...</p>
            <a class="btn btn-primary" target="_blank" href="cart.php?add={$row['book_id']}">Add to cart</a>
        </div>
    </div>
</div>
DELIMITER;
    echo $book;
}
}


function login_user(){
    if(isset($_POST['submit'])){
     $username = escape_string($_POST['username']);
     $password = escape_string($_POST['password']);
    
    $query= query("SELECT * FROM users WHERE username = '{$username}' AND password = {$password}");
    confirm($query);

    if(mysqli_num_rows($query) == 0){
    redirect("login.php");
}
    else{
        redirect("admin");
    }
}
}

function go_email(){
    if(isset($_POST['submit'])){
        $to = "support@LIIBRAY.ro";
        $name = $_POST['his_name'];
        $email = $_POST['email'];
        $subject = $_POST['subject'];
        $message = $_POST['message'];

        $header = "From: {$name} {$email}";

        $the_mail = mail($to, $subject, $message, $header);

        if(!$the_mail){
            echo "The mail was not send!";
        }
        else{ echo "You successfully sent the mail!"; }

    }
}

// --------BACK END ADMIN FUNCTIONS -------------


///////////////ADMIN-BOOKS//////////////
function updated_category($book_category_id){

$category_query = query("SELECT * FROM categories WHERE cat_id = '{$book_category_id}' ");
confirm($category_query);

while($category_row = fetch_array($category_query)) {

return $category_row['cat_title'];

}
}

function view_books_admin(){
$query = query("SELECT * FROM books");
confirm($query);
while($row = fetch_array($query)){
$book_image = display_image($row['book_image']);
$responsive_category = updated_category($row['book_category_id']);
$book = <<<DELIMITER
      <tr>
            <td>{$row['book_id']}</td>
            <td><a href="edit_book.php?id={$row['book_id']}">{$row['book_title']}</a></td>
            <td><a href="edit_book.php?id={$row['book_id']}"><img width="100" src= "../../resources/{$book_image}" alt="image"></a></td>
            </td>
            <td>$responsive_category</td>
            <td>{$row['book_price']}</td>
            <td>{$row['book_quantity']}</td>
            <td><a class='btn btn-danger' href="delete_book.php?id={$row['book_id']}"><span class='glyphicon glyphicon-remove'></span></a></td>
        </tr>
DELIMITER;
    echo $book;
}
}


function create_book(){ // CREATE BOOKS IN ADMIN

if(isset($_POST['publish'])){

$book_title         = escape_string($_POST['book_title']);
$book_category_id   = escape_string($_POST['book_category_id']);
$book_description   = escape_string($_POST['book_description']);
$book_price         = escape_string($_POST['book_price']);
$book_quantity      = escape_string($_POST['book_quantity']);

$book_image = escape_string($_FILES['image'] ['name']);
$book_image_temp = $_FILES['image'] ['tmp_name'];

// move_uploaded_file($book_image_temp , UPLOAD_FOLDER . DS . $book_image);

    if(!is_writable($book_image_temp)) {
        set_message("Temp file {$book_image_temp} is not writable!");
        redirect("books.php");
        exit;
    }
    if(!is_writable(UPLOAD_FOLDER . DS)) {
        set_message("Upload destination " . UPLOAD_FOLDER . DS . " is not writable!");
        redirect("books.php");
        exit;
    }
    
    if($_FILES['image']['error'] === UPLOAD_ERR_OK) {
        if(move_uploaded_file($_FILES['image'] ['tmp_name'] , UPLOAD_FOLDER . DS . $book_image)) {

            $add_book = query("INSERT INTO books(book_title, book_category_id, book_description, book_price, book_quantity, book_image) VALUES('{$book_title}', '{$book_category_id}', '{$book_description}', '{$book_price}', '{$book_quantity}', '{$book_image}')");
            confirm($add_book);
            set_message("New Book Added!");
            redirect("books.php");
            exit;
        }
        else {
            set_message("Cannot create book!");
            redirect("books.php");
            exit;
        }
    }
    else {
        set_message("Cannot upload image: error no " . $_FILES['image']['error']);
        redirect("books.php");
        exit;
    }
}
}

function update_book(){ // EDIT BOOKS IN ADMIN

if(isset($_POST['update'])){

$book_title         = escape_string($_POST['book_title']);
$book_category_id   = escape_string($_POST['book_category_id']);
$book_description   = escape_string($_POST['book_description']);
$book_price         = escape_string($_POST['book_price']);
$book_quantity      = escape_string($_POST['book_quantity']);

$book_image = escape_string($_FILES['image'] ['name']);
$book_image_temp = $_FILES['image'] ['tmp_name'];



    if(!is_writable($book_image_temp) && $book_image_temp != "") {
        set_message("Temp file {$book_image_temp} is not writable!");
        redirect("books.php");
        exit;
    }
    
    if(!is_writable(UPLOAD_FOLDER . DS)) {
        set_message("Upload destination " . UPLOAD_FOLDER . DS . " is not writable!");
        redirect("books.php");
        exit;
    }
    
    if(($_FILES['image']['error'] === UPLOAD_ERR_OK) || ($_FILES['image']['error'] === UPLOAD_ERR_NO_FILE)) {
        $continueUpdate = true;
        $edit_book_sql = "UPDATE `books` SET `book_title` = '{$book_title}', `book_category_id` = '{$book_category_id}', `book_description` = '{$book_description}', `book_price` = '{$book_price}', `book_quantity` = '{$book_quantity}' ";
                
        if(!empty($book_image)) {
            $edit_book_sql .= ", `book_image` = '{$book_image}' ";
            if(!move_uploaded_file($_FILES['image'] ['tmp_name'] , UPLOAD_FOLDER . DS . $book_image)) $continueUpdate = false;
        }
        $edit_book_sql .= "WHERE `books`.`book_id` = " . escape_string($_GET['id']);
        if($continueUpdate) {
            $edit_book = query($edit_book_sql);
            confirm($edit_book);
            set_message("Book was updated!");
            redirect("books.php");
            exit;
        }
        else {
            set_message("Cannot update book!");
            redirect("books.php");
            exit;
        }
    }
    else {
        set_message("Cannot upload image: error no " . $_FILES['image']['error']);
        redirect("books.php");
        exit;
    }
}
}

function show_categories_add_books(){
$query = query("SELECT * FROM categories");
confirm($query);
    
while($row = fetch_array($query)){

$cat_option = <<<DELIMITER
<option value="{$row['cat_id']}">{$row['cat_title']}</option>
DELIMITER;
echo $cat_option;
}
}

///////// ADMIN - CATEGORIES /////////////////
function show_categories(){

$query = query("SELECT * FROM categories");
confirm($query);

while($row = fetch_array($query)){

$all_categories = <<<DELIMITER
        <tr>
            <td>{$row['cat_id']}</td>
            <td>{$row['cat_title']}</td>
            <td><a class='btn btn-danger' href="categories.php?id={$row['cat_id']}"><span class='glyphicon glyphicon-remove'></span></a></td>
        </tr>
DELIMITER;
        echo $all_categories;
}
}

function add_category(){
    if(isset($_POST['add_cat'])){
    $new_cat = escape_string($_POST['add_category']);
    $query = query("INSERT INTO categories(cat_title) VALUES('{$new_cat}')");
    confirm($query);
    }
}

function delete_category(){
    if(isset($_GET['id'])){
    $del_ct = $_GET['id'];
    $del_cat=query("DELETE FROM categories WHERE cat_id = $del_ct");
    confirm($del_cat);
    }
}

/////////////////////ADMIN USERS/////////////////

function display_users(){
    
$user_query = query("SELECT * FROM users");
confirm($user_query);

while($row = fetch_array($user_query)){
$users = <<<DELIMITER
<tr>
<td>{$row['user_id']}</td>
<td>{$row['username']}</td>
<td>{$row['password']}</td>
<td>{$row['email']}</td>
<td><a class='btn btn-danger' href="users.php?id={$row['user_id']}"><span class='glyphicon glyphicon-remove'></span></a></td>
</tr>
DELIMITER;
echo $users;
}
}

function delete_users(){

if(isset($_GET['id'])){
    $del_us = $_GET['id'];
    $delete_user = query("DELETE FROM users WHERE user_id = $del_us");
    confirm($delete_user);
}
}

function add_users(){
    if(isset($_POST['add'])){
    $username = $_POST['user_name'];
    $password = $_POST['user_password'];
    $email = $_POST['user_email'];

    $add_user = query("INSERT INTO users(username, password,email) VALUES('{$username}', '{$password}', '{$email}')");
    confirm($add_user);
    redirect("users.php");
    }
}

/////////////////////////////// USERS ORDERS /////////////////////////
function updated_products($product_id){

$book_query = query("SELECT * FROM books WHERE book_id = '{product_id}' ");
confirm($book_query);

while($book_row = fetch_array($book_query)) {
return $book_row['book_title'];
}
}

function view_orders_admin(){
$query = query("SELECT * FROM orders");
confirm($query);
while($row = fetch_array($query)){
$book = <<<DELIMITER
      <tr>
            <td>{$row['order_id']}</td>
            <td>{$row['lastname']}</td>
            <td>{$row['email']}</td>
            <td>{$row['address']}</td>
            <td>{$row['phone']}</td>
            <td>{$row['order_date']}</td>
            <td>{$row['status']}</td>
            <td><a class='btn btn-danger' href="delete_order.php?id={$row['order_id']}"><span class='glyphicon glyphicon-remove'></span></a></td>
            <td><a class='btn btn-primary' href="invoice.php?id={$row['order_id']}"><span class='glyphicon glyphicon-file'></span></a></td>
        </tr>
DELIMITER;
    echo $book;
}
}
/////////////////////////////////ADMIN HOMEPAGE COUNT///////////////////////////
function count_orders(){
$query = query("SELECT COUNT(*) AS total FROM orders");
confirm($query);
$data = fetch_array($query);
echo $data['total'];
}

function count_books(){
$query = query("SELECT COUNT(*) AS total FROM books");
confirm($query);
$data = fetch_array($query);
echo $data['total'];
}

function count_categories(){
$query = query("SELECT COUNT(*) AS total FROM categories");
confirm($query);
$data = fetch_array($query);
echo $data['total'];
}

////////////////////////////SLIDES FUNCTION//////////////////////////////////



function add_slides(){
if(isset($_POST['add_slide'])){

$slide_title = escape_string($_POST['slide_title']);

$slide_image= escape_string($_FILES['image'] ['name']);
$slide_image_temp = $_FILES['image'] ['tmp_name'];

move_uploaded_file($slide_image_temp , UPLOAD_FOLDER . DS . $slide_image);

$query = query("INSERT INTO slides (`slide_title`, `slide_image`) VALUES('{$slide_title}', '{$slide_image}')");
confirm($query);

}
}


function get_current_slide_admin(){
$query = query("SELECT * FROM slides ORDER BY slide_id DESC LIMIT 1");
confirm($query);

while ($row = fetch_array($query)) {
$slide_image = display_image($row['slide_image']);
$slide_active_admin = <<<DELIMITER
    <img class="img-responsive" src= "../../resources/$slide_image" alt="image">


DELIMITER;
echo $slide_active_admin;

}

}


function get_active_slide(){
$query = query("SELECT * FROM slides ORDER BY slide_id DESC LIMIT 1");
confirm($query);

while ($row = fetch_array($query)) {
$slide_image = display_image($row['slide_image']);
$slide_active = <<<DELIMITER
<div class="item active">
    <img class="slide-image" src= "../resources/{$slide_image}" alt="image">
</div>
DELIMITER;
echo $slide_active;

}
}


function get_slides(){
$query = query("SELECT * FROM slides");
confirm($query);

while ($row = fetch_array($query)) {
$slide_image = display_image($row['slide_image']);
$slides = <<<DELIMITER
<div class="item">
    <img class="slide-image" src= "../resources/{$slide_image}" alt="">
</div>

DELIMITER;
echo $slides;

}
}

function get_slides_admin_picture(){

$query = query("SELECT * FROM slides ORDER BY slide_id ASC");
confirm($query);

while ($row = fetch_array($query)) {
$slide_image = display_image($row['slide_image']);
$slide_pic_admin = <<<DELIMITER
<div class = "col-xs-6 col-md-3">
   
    <a href="delete_slide.php?id={$row['slide_id']}">
        <img width = "100" class= "img-reponsive slide_image" src= "../../resources/$slide_image" alt="">

    </a>

</div>
DELIMITER;
echo $slide_pic_admin;

}

} 

//////////////////////////ADMIN INVOICE ////////////////////////////////
function product_invoice(){
if (isset($_GET['id'])){
$query = query("SELECT books.book_title as book_title, order_details.qty as qty, order_details.price as price, order_details.qty * order_details.price as total FROM order_details join orders on order_details.order_id=orders.order_id join books on books.book_id=order_details.product_id where orders.order_id= " . escape_string($_GET['id']));
confirm($query);

while($row = fetch_array($query)){
$book_name = escape_string($row['book_title']);
$book_quantity = escape_string($row['qty']);
$book_price = escape_string($row['price']);
$book_total = escape_string($row['total']);

$products= <<<DELIMITER
      <tr>
            <td>{$book_name}</td>
            <td>{$book_quantity} buc.</td>
            <td>&#36 {$book_price}</td>
            <td>&#36 {$book_total}</td>
        </tr>
DELIMITER;
       
echo $products; 
      }
}
}

function total_invoice(){
    if(isset($_GET['id'])){
        $query = query("SELECT SUM(price) AS total FROM order_details WHERE order_id = " . escape_string($_GET['id']) . " ");
        confirm($query);
        $data = fetch_array($query);
        echo $data['total'];
    }
}
?>