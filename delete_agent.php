<?php 
include_once('connect.php');

$agent_id = $_POST['idd'];

$querry = "DELETE FROM agents WHERE agent_id='$agent_id' ";
$push = mysqli_query($conn, $querry);
if($push === true){
    echo "$agent_id AGENT DELETED SUCCESSFULLY";
}else{
    echo mysqli_error($conn);
}
?>