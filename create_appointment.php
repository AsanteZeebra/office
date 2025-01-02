<?php 
include_once('connect.php');

$client = mysqli_real_escape_string($conn, $_POST['client']);
$telephone = mysqli_real_escape_string($conn, $_POST['telephone']);
$email = mysqli_real_escape_string($conn, $_POST['mail']);
$visa = mysqli_real_escape_string($conn, $_POST['visa']);
$aptime = mysqli_real_escape_string($conn, $_POST['aptime']);
$date = mysqli_real_escape_string($conn, $_POST['date']);
$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");
$time =  date("H:i:a");
$status = "Booked";
$reference = mysqli_real_escape_string($conn, $_POST['reference']);

$sql = "INSERT INTO appointment(client,telephone,mail,aptime,appointment_date,visa_type,month,year,time,date_created,status,reference) VALUES ('$client','$telephone','$email','$aptime','$date','$visa','$month','$year','$time','$date_created','$status','$reference')";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "Appointment Created Successfully";
}else{
    mysqli_error($conn);
}

?>