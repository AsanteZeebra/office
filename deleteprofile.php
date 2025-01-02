<?php 
include_once('connect.php');

$client_id = $_POST['id'];

$querry = "DELETE FROM clients WHERE passport_number='$client_id' ";
$push = mysqli_query($conn, $querry);
if($push === true){
    echo "Client Information Deleted Successfully";
}else{
    echo mysqli_error($conn);
}
?>