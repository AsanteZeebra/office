<?php 

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/PHPMailer/PHPMailer/src/Exception.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/PHPMailer.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/SMTP.php';

require_once __DIR__ . '/vendor/autoload.php'; 

$agent = htmlspecialchars($_POST['agentname']);
$businessname = htmlspecialchars($_POST['businessname']);
$email = htmlspecialchars($_POST['email']);
$telephone = htmlspecialchars($_POST['telephone']);
$address = htmlspecialchars($_POST['address']);
$agent_id = htmlspecialchars($_POST['idd']);

$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPDebug = 1;
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'ssl';
$mail->Host = "smtp.gmail.com";
$mail->Port = 465; // or 587
$mail->IsHTML(true);
$mail->Username = "nanakweku608@gmail.com";
$mail->Password = "cdnammtwnzkmbzos"; 
$mail->From ="office@fremikeconsult.com";
$mail->FromName = "Fremike Consult";

$mail->Subject = "Agent Registration Confirmation";
$mail->addEmbeddedImage(dirname(__FILE__) . '/dist/img/fmk.png', 'cmg');
$mail->addEmbeddedImage(dirname(__FILE__).'/dist/img/sign.jpg','sign');
$mail->Body = "
<div style='font-family:Arial, sans-serif; line-height:1.6; color:#333;'>
    <img src='cid:cmg' alt='Fremike Consult Logo' style='max-width:200px; display:block; margin:0 auto;'>
    <br/>
    <p>Dear <b>$agent</b>,</p>
    <p>We are pleased to confirm your successful registration as a partner agent with Fremike Consult. Below are your registration details:</p>
    <ul style='list-style-type: none; padding: 0;'>
        <li><b>Business Name:</b> $businessname</li>
        <li><b>Registration Number:</b> $agent_id</li>
        <li><b>Email:</b> $email</li>
        <li><b>Telephone:</b> $telephone</li>
        <li><b>Address:</b> $address</li>
    </ul>
    <p>Please always use your registration number <b>$agent_id</b> for transactions and client registrations to ensure seamless tracking and processing.</p>
    <p>We look forward to a fruitful partnership. Should you have any questions, feel free to reach out to us via the contact details below.</p>
</div>
<br/>
<div>
    <p>Best Regards,</p>
    <img src='cid:sign' style='height: 50px;'><br/>
    <b>Asante Michael</b><br/>
    <i>Chief Executive Officer</i>
</div>
<footer style='font-size:small; color:#555; margin-top:20px;'>
    <hr/>
    <p>For further inquiries, kindly contact Fremike Consult via:</p>
    <ul style='list-style-type: none; padding: 0;'>
        <li><b>Telephone (Telecel):</b> +233 (0) 20 681 7724</li>
        <li><b>Telephone (MTN):</b> +233 (0) 53 164 1798</li>
        <li><b>Email:</b> info@fremikeconsult.com</li>
        <li><b>Website:</b> <a href='https://www.fremikeconsult.com' target='_blank'>www.fremikeconsult.com</a></li>
    </ul>
    <hr/>
</footer>
";

$mail->addAddress($email);

if(!$mail->Send())
{
    echo "Mailer Error: " . $mail->ErrorInfo;
}
else
{
    echo "Message has been sent";
}
