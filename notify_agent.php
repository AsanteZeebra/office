<?php 

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/PHPMailer/PHPMailer/src/Exception.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/PHPMailer.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/SMTP.php';

require_once __DIR__ . '/vendor/autoload.php'; 



$agent = $_POST['agentname'];
$businessname = $_POST['businessname'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];
$address = $_POST['address'];
$agent_id = $_POST['idd'];


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
$mail->From ="centralmigrationgrace@gmail.com";
$mail->FromName = "Central Migration Grace";



$mail->Subject = "Agent Registration Confirmation";
$mail-> addEmbeddedImage(dirname(__FILE__).'/dist/img/hsign.png','sign');
$mail->Body = "
<img src='images/cc.JPEG' alt=''> <br/> <br/>
<div style='width:70%'>

</div>
<br/>
<br/>
Thank you

<br/>
<br/>
<br/>
<br/>
REGARDS:
<br/>
<img src='cid:sign' style='height: 50px;'>
<br/>

<b>ALIFA ADAMS - C.E.O<b/>

<footer>
<hr/>
For further enquiries, kindly contact CMG via: <br/>
Telephone(MTN): +233 (0) 59 703 0141 <br/>
Telephone (VODAPHONE): +233 (0) 50 029 1066 <br/>
Email: info@centralmigrationgrace.com <br/>
Email: office@centralmigrationgrace.com <br/>
Website: www.centralmigrationgrace.com
<hr/>
<a><i class='fa fa-pen'></i></a>
</footer>
"

;

$mail->addAddress($email);

if(!$mail->Send())
{
    echo "Mailer Error: " . $mail->ErrorInfo;
}
else
{
    echo "Message has been sent";
}
