<?php 
include_once('connect.php');

$client = mysqli_real_escape_string($conn,$_POST['client']);
$company = mysqli_real_escape_string($conn,$_POST['company']);
$destination = mysqli_real_escape_string($conn,$_POST['destination']);
$permit = mysqli_real_escape_string($conn,$_POST['permit']);
$visa = mysqli_real_escape_string($conn,$_POST['visa']);
$skill = mysqli_real_escape_string($conn,$_POST['skill']);
$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");

$sql = "INSERT INTO docs(client,destination,company,skill,permit,visa,month,year,date_created) VALUES ('$client','$destination','$company','$skill','$permit','$visa','$month','$year','$date_created')";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "Date Saved";
}else{

  echo  mysqli_error($conn);
}


?>