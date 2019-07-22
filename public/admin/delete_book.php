<?php 
require_once("../../resources/config.php");

if(isset($_GET['id'])){

	$query = query("DELETE FROM books WHERE book_id = " . escape_string($_GET['id']) . "");
	confirm($query);

	set_message("Book Deleted");
	redirect("books.php");
}