<?php 
require_once("../../resources/config.php");

if(isset($_GET['id'])){

$query = query("SELECT * FROM orders WHERE order_id = " . escape_string($_GET['id']) . " ");
confirm($query);
while($row = fetch_array($query)){
$order_id               = escape_string($row['order_id']);
$order_lastname         = escape_string($row['lastname']);
$order_firstname        = escape_string($row['firstname']);
$order_email            = escape_string($row['email']);
$order_date             = escape_string($row['order_date']);
$order_town             = escape_string($row['town']);
$order_address          = escape_string($row['address']);
$order_delivery         = escape_string($row['delivery_method']);
$order_payment          = escape_string($row['payment_method']);
}


}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Factura #<?php echo $order_id; ?></title>
    <link rel="stylesheet" href="css/invoice.css" media="all" />
  </head>
  <body>
    <header class="clearfix">
      <div id="logo">
        <img src="css/img.png">
      </div>
      <h1>Factura #<?php echo $order_id?></h1>
      <div id="company" class="clearfix">
        <div>LIIBRAY</div>
        <div>Romania, Bucuresti<br /> Strada Mihai Bravu, NR.24</div>
        <div>Telefon: 021 341 233</div>
        <div><a href="support@LIIBRAY.com">support@LIIBRAY.com</a></div>
      </div>
      <div id="project">
        <div><span>Client</span><?php echo $order_lastname . " " . $order_firstname; ?></div>
        <div><span>Oras</span>Romania, <?php echo $order_town; ?></div>
        <div><span>Adresa</span><?php echo $order_address; ?></div>
        <div><span>Email</span><a href="mailto:<?php echo $order_email; ?>"><?php echo $order_email; ?></a></div>
        <div><span>Plata</span><?php echo $order_payment; ?></div>
		<div><span>Livrare</span><?php echo $order_delivery; ?></div>
        <div><span>Data comanda</span> <?php echo $order_date; ?></div>

      </div>
    </header>

    <main>
      <table>
        <thead>
          <tr>
            <th class="service">Carti</th>
            <th class="desc">Numar exemplare</th>
            <th>Pret</th>
            <th>TOTAL</th>
          </tr>
        </thead>
        <tbody>
            <?php product_invoice(); ?>
          <tr>
            <td colspan="3">TOTAL</td>
            <td class="total">$<?php total_invoice(); ?></td>
          </tr>
        </tbody>
      </table>
      <div id="notices">
        <div>ATENTIE:</div>
        <div class="notice">Comanda va fi livrata in maxim 3 zile de la plasarea comenzii pe site.</div>
      </div>
    </main>
  </body>
</html>
