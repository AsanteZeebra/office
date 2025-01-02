<?php
include_once('connect.php');

$name = mysqli_real_escape_string($conn, $_POST['fullname']);
$dob = mysqli_real_escape_string($conn, $_POST['dob']);
$marital = mysqli_real_escape_string($conn, $_POST['marital']);
$birthplace = mysqli_real_escape_string($conn, $_POST['birthplace']);
$region = mysqli_real_escape_string($conn, $_POST['region']);
$telephone = mysqli_real_escape_string($conn, $_POST['telephone']);
$city = mysqli_real_escape_string($conn, $_POST['city']);
$email = mysqli_real_escape_string($conn, $_POST['mail']);
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

$id = mysqli_real_escape_string($conn,$_POST['id']);


$sqlc = " SELECT *  FROM clients WHERE passport_number='$id'";
$run = mysqli_query($conn, $sqlc);
if (mysqli_num_rows($run) == 0) {

  echo "Profile information does not exist";
} else {
  $sql = "UPDATE clients SET fullname='$name',dob='$dob',marital='$marital',birthplace='$birthplace',region='$region',telephone='$telephone',city='$city',email='$email',skill='$skill',experience='$experience',children='$children',nationality='$nationality',country='$country',spouse='$spouse',spousedate='$spousedate',spousephone='$spousephone',occupation='$occupation',spousecity='$spousecity',spouseregion='$spouseregion',mother='$mother',father='$father',address='$spouseaddress',passport='$passport',issueing_authority='$authoity',passport_number='$passportnumber',issue_date='$issuedate',expiry_date='$expirydate',pictures='$pictures',medical='$medical',police_report='$police_report' WHERE passport_number='$id'";
  $execute = mysqli_query($conn, $sql);
  if ($execute === true) {

    echo 'PROFILE UPDATED SUCCESSFULLY';
  } else {
    echo  mysqli_error($conn);
  }
}
