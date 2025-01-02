<?php 
include_once('connect.php');

$id = mysqli_real_escape_string($conn,$_POST['idcode']);

$sql = "DELETE FROM gallery WHERE id = '$id'";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "Image Deleted Successfully";
}else{
    mysqli_error($conn);
}


?>