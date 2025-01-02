<?php 
include_once('connect.php');

$id = mysqli_real_escape_string($conn,$_POST['id']);

$sql = "DELETE FROM docs WHERE id='$id'";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "DATA DELETED";
}else{
    mysqli_error($conn);
}
