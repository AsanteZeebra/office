<?php 
include_once('connect.php');

$client = mysqli_real_escape_string($conn,$_POST['client']);
$passport = mysqli_real_escape_string($conn,$_POST['passport']);
$destination = mysqli_real_escape_string($conn,$_POST['destination']);
$flight = mysqli_real_escape_string($conn,$_POST['flight']);
$departure = mysqli_real_escape_string($conn,$_POST['departuredate']);
$confirm = mysqli_real_escape_string($conn,$_POST['confirm']);
$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");
$time =  date("H:i:a");

$sql = "INSERT INTO ticket(client,passport_number,destination,flight_number,confirmation,departure_date,month,year,date_created) VALUES ('$client','$passport','$destination','$flight','$confirm','$departure','$month','$year','$date_created')";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "BOOKING SAVED SUCCESSFULLY";
}else{
    mysqli_error($conn);
}
?>