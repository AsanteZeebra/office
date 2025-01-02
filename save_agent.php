<?php 
include_once('connect.php');

$agent = $_POST['agentname'];
$businessname = $_POST['businessname'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];
$address = $_POST['address'];
$date_created = date("Y-M-jS");
$agent_id = $_POST["id"];


$check = "SELECT * FROM agents WHERE agent_name = '$agent'";
$run = mysqli_query($conn, $check);
if(mysqli_num_rows($run) > 0){
    echo "AGENT PROFILE ALREADY EXIST";
}else{

$sql = "INSERT INTO agents(agent_name,business_name,email,telephone,address,agent_id,date_created) VALUES('$agent','$businessname','$email','$telephone','$address','$agent_id','$date_created')";
$execute = mysqli_query($conn,$sql);
if($execute === true){
    echo "AGENT REGISTERED SUCCESSFULLY";
}else{

    echo mysqli_error($conn);
}
}

?>