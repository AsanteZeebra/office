<?php 
include_once('connect.php');

$supply = mysqli_real_escape_string($conn,$_POST['supply']);
$id = mysqli_real_escape_string($conn,$_POST['id']);

$sql = "UPDATE jobs SET supplied='$supply' WHERE id='$id' ";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "Data Recorded Successfully";
}else{
    mysqli_error($conn);
}
?>