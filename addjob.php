<?php 
include_once('connect.php');

$agent = mysqli_real_escape_string($conn,$_POST['agent']);
$company = mysqli_real_escape_string($conn,$_POST['company']);
$agent_id = mysqli_real_escape_string($conn,$_POST['agentid']);
$country = mysqli_real_escape_string($conn,$_POST['country']);
$number = mysqli_real_escape_string($conn,$_POST['number']);

$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");
$time =  date("H:i:a");


$sql = "INSERT INTO jobs(agent_name,company,Identification_number,country,demand,month,year,time,date_created) VALUES('$agent','$company','$agent_id','$country','$number','$month','$year','$time','$date_created')";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "DATA RECORDED SUCCESSFULLY";
}else{
    mysqli_error($conn);
}


?>