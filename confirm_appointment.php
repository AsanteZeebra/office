<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/PHPMailer/PHPMailer/src/Exception.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/PHPMailer.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/SMTP.php';

require_once __DIR__ . '/vendor/autoload.php';

$client = $_POST['client'];
$telephone =$_POST['telephone'];
$email = $_POST['mail'];
$visa = $_POST['visa'];
$aptime = $_POST['aptime'];
$date =  $_POST['date'];
$month = date('F');
$year = date('Y');
$date_created = date("Y-M-jS");
$time =  date("H:i:a");
$status = "Booked";
$reference = $_POST['reference'];


$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPDebug = 1;
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'ssl';
$mail->Host = "smtp.gmail.com";
$mail->Port = 465; // or 587
$mail->IsHTML(true);
$mail->Username = "centralmigrationgrace@gmail.com";
$mail->Password = "oiktpbatyqrnvmms";
$mail->From = "centralmigrationgrace@gmail.com";
$mail->FromName = "Central Migration Grace";



$mail->Subject = "Appointment Confirmation";

$mail-> addEmbeddedImage(dirname(__FILE__).'/dist/img/hsign.png','sign');

$mail->Body = " <div style='width:70%;font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;'> 
<br/>
<br/>

<div style='width:100%; height:150px; background-color:#00005B; color:white;'> <h2 style='padding:50px'> Appointment Confirmation <br/> Ref:$reference </h2> </div> <br/>

Dear  <b>$client</b>, <br/>  Your appointment has been confirmed on <b>$date</b> at <b>$aptime</b>.<br/>
Kindly note that the appointment is 30 minutes.
<br/>
<br/>



Thank you

<br/>
<br/>
<br/>
<br/>
REGARDS:
<br/>

<div><img src='cid:sign' style='height: 50px;'></div>

<br/>
ALIFA ADAMS - C.E.O

<br/>
<br/>
</div>
<footer>
<hr/>
For further enquiries, kindly contact CMG via: <br/>
Telephone(MTN): +233 (0) 59 703 0141 <br/>
Telephone (VODAPHONE): +233 (0)50 029 1066 <br/>
Email: info@centralmigrationgrace.com <br/>
Email: office@centralmigrationgrace.com <br/>
Website: www.centralmigrationgrace.com
<hr/>
<a><i class='fa fa-pen'></i></a>
</footer>
";


$mail->addAddress($email);

if (!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message has been sent";
}

?>