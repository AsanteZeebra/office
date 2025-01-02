<?php
include_once('connect.php');

$client = $_POST['client'];
$status =$_POST['status'];
$reference = $_POST['reference'];
$id = $_POST['id'];
$email = $_POST['email'];

$sql = "UPDATE appointment SET status='$status' WHERE id='$id'";
$execute = mysqli_query($conn,$sql);

if($execute === true){
    echo "STATUS CHANGED";
}else{
    mysqli_error($conn);
}

?>

