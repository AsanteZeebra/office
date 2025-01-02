<?php 
include_once('connect.php');

$agent = $_POST['agentname'];
$businessname = $_POST['businessname'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];
$address = $_POST['address'];
$date_created = date("Y-M-jS");
$agent_id = $_POST['idd'];



$sql = "UPDATE agents SET agent_name='$agent', business_name='$businessname', email='$email', telephone='$telephone', address='$address' WHERE agent_id='$agent_id'";


$execute = mysqli_query($conn, $sql);
if($execute === true){
    echo "$agent_id AGENT PROFILE UPDATED SUCCESSFULLY";
}else{
    echo mysqli_error($conn);
}


?>