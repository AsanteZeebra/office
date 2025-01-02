<?php 
include_once('connect.php');

$id = mysqli_real_escape_string($conn,$_POST['id']);

$check = "SELECT * FROM timeline WHERE id = '$id'";
$run = mysqli_query($conn,$check);
if(mysqli_num_rows($run) >0){
    $sql = " DELETE FROM timeline WHERE id='$id'";
    $execute = mysqli_query($conn,$sql);
   if($execute === true){
    echo "Timeline Deleted";
   }else{
    mysqli_error($conn);
   }
}else{
    echo "Data Not Found";
}



?>