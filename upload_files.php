 
<?php
if (!empty($_FILES)) {
    // Include the database configuration file 
    include_once('connect.php');

    // File path configuration 
    $uploadDir = "uploads/";
    $fileName = basename($_FILES['file']['name']);
    $uploadFilePath = $uploadDir . $fileName;
    $date_created = date("Y-M-jS");
    $passport = $_POST['passport'];
    $client = $_POST['name'];
    $month = date('F');
    $year = date('Y');
    // Upload file to server 
    if (move_uploaded_file($_FILES['file']['tmp_name'], $uploadFilePath)) {
        // Insert file information in the database 
        $sql = "INSERT INTO files (client,passport_number,file_name,month,year,date_created) VALUES ('$client','$passport','" . $fileName . "','$month','$year','$date_created')";
        $insert = $conn->query($sql);
    }
}
?>