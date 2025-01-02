<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require_once __DIR__ . '/PHPMailer/PHPMailer/src/Exception.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/PHPMailer.php';
require_once __DIR__ . '/PHPMailer/PHPMailer/src/SMTP.php';

require_once __DIR__ . '/vendor/autoload.php';

$client_name = $_POST['fullname'];
$passport_number = $_POST['passport'];
$telephone = $_POST['telephone'];
$destination = $_POST['destination'];
$payfor = $_POST['payfor'];
$amount = $_POST['amount'];
$currency = $_POST['currency'];
$payment_mode = $_POST['payment_mode'];
$reference = $_POST['reference'];

$date_created = date("Y-M-d");

$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPDebug = 0;
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'ssl';
$mail->Host = "smtp.gmail.com";
$mail->Port = 465; // or 587
$mail->IsHTML(true);
$mail->Username = "nanakweku608@gmail.com";
$mail->Password = "cdnammtwnzkmbzos";
$mail->From = "office@fremikeconsult.com";
$mail->FromName = "Fremike Consult";

$mail->Subject = "Payment Confirmation";

$mail->addEmbeddedImage(dirname(__FILE__) . '/dist/img/fmk.png', 'cmg');
$mail->addEmbeddedImage(dirname(__FILE__) . '/dist/img/sign.jpg', 'sign');

$mail->Body = "<div style='font-family: Arial, sans-serif; color: #333; max-width: 600px; margin: auto; border: 1px solid #ddd; border-radius: 10px; padding: 20px;'>
    <div style='text-align: center;'>
        <img src='cid:cmg' alt='Fremike Consult Logo' style='height: 100px;'>
    </div>
    <h2 style='text-align: center; color: #555;'>Payment Receipt</h2>
    <p>Dear <strong>$client_name</strong>,</p>
    <p>We are pleased to confirm that we have successfully received your payment. Below are the details:</p>
    <table style='width: 100%; border-collapse: collapse; margin: 20px 0;'>
        <tr style='background-color: #f9f9f9;'>
            <td style='padding: 10px; border: 1px solid #ddd;'><strong>Client Name:</strong></td>
            <td style='padding: 10px; border: 1px solid #ddd;'>$client_name</td>
        </tr>
        <tr>
            <td style='padding: 10px; border: 1px solid #ddd;'><strong>Amount Paid:</strong></td>
            <td style='padding: 10px; border: 1px solid #ddd;'>$currency $amount.00</td>
        </tr>
        <tr style='background-color: #f9f9f9;'>
            <td style='padding: 10px; border: 1px solid #ddd;'><strong>Payment Mode:</strong></td>
            <td style='padding: 10px; border: 1px solid #ddd;'>$payment_mode</td>
        </tr>
        <tr>
            <td style='padding: 10px; border: 1px solid #ddd;'><strong>Date Received:</strong></td>
            <td style='padding: 10px; border: 1px solid #ddd;'>$date_created</td>
        </tr>
    </table>
    <p>Thank you for choosing Fremike Consult. If you have any questions or need further assistance, please feel free to contact us using the information below.</p>
    <div style='margin-top: 30px; text-align: center;'>
        <img src='cid:sign' alt='Signature' style='height: 50px;'>
        <p><strong>Asante Michael</strong><br/>C.E.O</p>
    </div>
    <footer style='margin-top: 20px; font-size: 0.9em; color: #777;'>
        <hr/>
        <p>For further enquiries, kindly contact Fremike Consult via:</p>
        <p>
            Telephone (TELECEL): +233 (0) 20 681 7724<br/>
            Telephone (MTN): +233 (0) 53 164 1798<br/>
            Email: info@fremikeconsult.com<br/>
            Email: office@fremikeconsult.com<br/>
            Website: <a href='http://www.fremikeconsult.com' style='color: #007bff;'>www.fremikeconsult.com</a>
        </p>
        <hr/>
    </footer>
</div>";

$mail->addAddress($reference);

if (!$mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message has been sent";
}
?>
