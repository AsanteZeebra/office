
<?php

$localhost = "localhost";
$username = "root";
$password = "0249kwaku";
$DBname = "centxgih_cmgpay";

// Create connection
$conn = mysqli_connect($localhost, $username, $password, $DBname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";


?>
