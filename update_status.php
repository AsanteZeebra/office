<?php 

include_once('connect.php');

$passport = mysqli_real_escape_string($conn,$_POST['passport']);
$status = mysqli_real_escape_string($conn, $_POST['status']);

$sql = "UPDATE clients SET status='$status' WHERE passport_number='$passport'";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "Status updated successfully";
}else{
    echo mysqli_error($conn);
}

?>