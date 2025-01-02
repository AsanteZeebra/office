<?php 

include_once('connect.php');

$id = mysqli_real_escape_string($conn, $_POST['id']);

$sql = "  DELETE FROM payment WHERE id ='$id'";

$execute = mysqli_query($conn, $sql);

if($execute === true){
    echo "PAYMENT DELETED SUCESSFULLY";
}else{
    mysqli_error($conn);
}

?>