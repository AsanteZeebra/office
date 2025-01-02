<?php 
include_once('connect.php');

$passport = mysqli_real_escape_string($conn,$_POST['passport']);

$check = "SELECT * FROM appointment WHERE id = '$passport'";
$run = mysqli_query($conn,$check);
if(mysqli_num_rows($run) >0){
    $sql = " DELETE FROM appointment WHERE id ='$passport'";
    $execute = mysqli_query($conn,$sql);
   if($execute === true){
    echo "Appointment deleted Successfully";
   }else{
    mysqli_error($conn);
   }
}else{
    echo "Data Not Found";
}



?>