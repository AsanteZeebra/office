<?php
include_once('connect.php');

$id = mysqli_real_escape_string($conn,$_POST['idcode']);

$sql = "DELETE FROM ticket WHERE id = '$id'";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "BOOKINGS DELETED SUCESSFULLY";
}else{
    mysqli_error($conn);
}

?>