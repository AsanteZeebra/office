<?php 
include_once('connect.php');

$email = mysqli_real_escape_string($conn,$_POST['email']);
$password = mysqli_real_escape_string($conn,$_POST['password']);
$confirmpass = sha1($password);

$sql = "UPDATE account SET password='$confirmpass' WHERE email = '$email'";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "PASSWORD CHANGED SUCCESSFULLY";
}else{
    mysqli_error($conn);
}

?>