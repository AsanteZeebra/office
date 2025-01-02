<?php
include_once('connect.php');

$spouse = mysqli_real_escape_string($conn, $_POST['fullname']);
$spousedate = mysqli_real_escape_string($conn, $_POST['dob']);
$occupation = mysqli_real_escape_string($conn, $_POST['marital']);
$spousecity = mysqli_real_escape_string($conn, $_POST['birthplace']);
$region = mysqli_real_escape_string($conn, $_POST['region']);
$spousephone = mysqli_real_escape_string($conn, $_POST['telephone']);
$mother = mysqli_real_escape_string($conn, $_POST['city']);
$father = mysqli_real_escape_string($conn, $_POST['email']);
$address = mysqli_real_escape_string($conn, $_POST['skill']);





$sqlc = " SELECT *  FROM clients WHERE fullname='$name' and telephone='$telephone' and email='$email' ";
$run = mysqli_query($conn, $sqlc);
if (mysqli_num_rows($run) > 0) {

  echo "Data already exist";
} else {
  $sql = "UPDATE clients SET spouse,spousedate,spousephone,occupation,spousecity,spouseregion,mother,father,address WHERE fullname";

  $execute = mysqli_query($conn, $sql);
  if ($execute === true) {

    echo 'PROFILE SAVED';
  } else {
    echo  mysqli_error($conn);
  }
};




