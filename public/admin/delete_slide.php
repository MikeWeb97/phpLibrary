<?php 
require_once("../../resources/config.php");

if(isset($_GET['id'])){

	$query = query("DELETE FROM slides WHERE slide_id= " . escape_string($_GET['id']) . "");
	confirm($query);

	set_message("Slide Deleted");
	redirect("slides.php");
}