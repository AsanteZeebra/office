<?php
include_once('connect.php');

$name = mysqli_real_escape_string($conn, $_POST['fullname']);
$dob = mysqli_real_escape_string($conn, $_POST['dob']);
$marital = mysqli_real_escape_string($conn, $_POST['marital']);
$birthplace = mysqli_real_escape_string($conn, $_POST['birthplace']);
$region = mysqli_real_escape_string($conn, $_POST['region']);
$telephone = mysqli_real_escape_string($conn, $_POST['telephone']);
$city = mysqli_real_escape_string($conn, $_POST['city']);
$mail = mysqli_real_escape_string($conn, $_POST['email']);
$skill = mysqli_real_escape_string($conn, $_POST['skill']);
$experience = mysqli_real_escape_string($conn, $_POST['experience']);
$children = mysqli_real_escape_string($conn, $_POST['children']);
$nationality = mysqli_real_escape_string($conn, $_POST['nationality']);
$country = mysqli_real_escape_string($conn, $_POST['country']);

$spouse = mysqli_real_escape_string($conn, $_POST['spouse']);
$spousedate = mysqli_real_escape_string($conn, $_POST['spousedate']);
$occupation = mysqli_real_escape_string($conn, $_POST['occupation']);
$spousecity = mysqli_real_escape_string($conn, $_POST['spousecity']);
$spouseregion = mysqli_real_escape_string($conn, $_POST['spouseregion']);
$spousephone = mysqli_real_escape_string($conn, $_POST['spousephone']);
$mother = mysqli_real_escape_string($conn, $_POST['mother']);
$father = mysqli_real_escape_string($conn, $_POST['father']);
$spouseaddress = mysqli_real_escape_string($conn, $_POST['address']);

$passport = mysqli_real_escape_string($conn, $_POST['passport']);
$authoity = mysqli_real_escape_string($conn, $_POST['authority']);
$passportnumber = mysqli_real_escape_string($conn, $_POST['passportnumber']);
$issuedate = mysqli_real_escape_string($conn, $_POST['issuedate']);
$expirydate = mysqli_real_escape_string($conn, $_POST['expirydate']);
$pictures = mysqli_real_escape_string($conn, $_POST['pictures']);
$medical = mysqli_real_escape_string($conn, $_POST['medical']);
$police_report = mysqli_real_escape_string($conn, $_POST['police_report']);
$status = "Registered";
$agent_id = mysqli_real_escape_string($conn, $_POST['agent_id']);
$agent_name = mysqli_real_escape_string($conn, $_POST['agent_name']);

$approval = "No";

$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");
$time =  date("H:i:a");


$sqlc = " SELECT *  FROM agents WHERE agent_id='$agent'";
$run = mysqli_query($conn, $sqlc);
if (mysqli_num_rows($run) > 0) {

   $sql = " INSERT INTO clients (fullname,dob,marital,birthplace,region,telephone,city,skill,experience,children,nationality,country,spouse,spousedate,spousephone,occupation,spousecity,spouseregion,mother,father,address,passport,issueing_authority,passport_number,issue_date,expiry_date,pictures,medical,police_report,status,agent_name,agent_id,approval,time,month,year,date_created) 

  VALUES('$name','$dob','$marital','$birthplace','$region','$telephone','$city','$skill','$experience','$children','$nationality', '$country','$spouse','$spousedate','$spousephone', '$occupation','$spousecity','$spouseregion','$mother','$father','$spouseaddress','$passport','$authoity','$passportnumber','$issuedate','$expirydate','$pictures','$medical','$police_report',
  '$status','$agent_name','$agent_id', '$approval', '$time','$month','$year','$date_created')";

  $execute = mysqli_query($conn, $sql);
  if ($execute === true) {

    echo 'FORM SUBMITTED SUCCESSFULLY';
    
//Timeline
$tittle = "Registeration Successfull";
$description = "Registration has been done and candidate is now elligible to apply for job";


$sql = "INSERT INTO timeline (client,passport_number, destination,tittle,message,date,time,month,year) 
VALUES('$name','$passportnumber','$country','$tittle','$description','$date_created','$time','$month','$year')";
 $execute = mysqli_query($conn,$sql);
 if ($execute === true) {

    //echo 'timeline saved successfully';
  } else {
    echo  mysqli_error($conn);
  }

  } else {
    echo  mysqli_error($conn);
  }
} else {

  echo "AGENT ID DOES NOT EXIST";
  
}

