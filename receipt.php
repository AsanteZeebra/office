<?php

require_once('tcpdf/tcpdf.php');
$obj_pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$obj_pdf->SetCreator(PDF_CREATOR);
$obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);
$obj_pdf->setHeaderFont(array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$obj_pdf->setFooterFont(array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$obj_pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
$obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$obj_pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);
$obj_pdf->setPrintHeader(false);
$obj_pdf->setPrintFooter(false);
$obj_pdf->SetAutoPageBreak(TRUE, 10);
$obj_pdf->SetFont('courier', '', 13, '', false);
$obj_pdf->AddPage();
$obj_pdf->SetFont('courier','',12);



$content = '
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
 
</head>
<body>
<tab
 <hr>
 <h2 style="color:#AAAAAA; margin-left:20px; font-size:20px;">RECEIPT</h2><br>
<table style="width:98%; margin-left:20px;" >
  <tr>
    <td style="text-align:left;"><b>Receipt no:</b>#12556998 <br><b>Date:</b>2024 November,13th <br><b>Country:</b> Romania</td>
    <td style="text-align:right"><b>Receiver:</b><br>Ama Siaw Consult <br>0249117809 <br>G2556985</td>
  </tr>
</table><br><br>

<table border="1" style="width:98%; margin-left:20px;">
<thead >
  <tr>
    <th style="background-color:#AAAAAA;font-size:14px;"><b>Description</b></th>
    <th style="background-color:#AAAAAA;font-size:14px;"><b>Amount</b></th>
    <th style="background-color:#AAAAAA;font-size:14px;"><b>Quantity</b></th>
    <th style="background-color:#AAAAAA;font-size:14px;"><b>Subtotal()</b></th>
  </tr>
</thead> 
<tbody>
<tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
  <tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
  <tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
  <tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
  <tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
  <tr>
    <td>Romania down payment</td>
    <td>500.00</td>
    <td>1</td>
    <td>500.00</td>
  </tr>
</tbody>
<tfoot>
  <tr>
    <td></td>
    <td></td>
    <td><b>Total:</b></td>
    <td><b>500.00</b></td>
  </tr>
</tfoot>

</table>
<br>
<br>
<br>
<hr>



 
</body>
</html>
';

$obj_pdf->writeHTML($content);
$obj_pdf->Output('file.pdf', 'I');

?>
