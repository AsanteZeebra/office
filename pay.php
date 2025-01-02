<?php
include('connect.php');

// Validate and sanitize inputs (if necessary)
$client_name = trim($_POST['fullname']);
$passport_number = trim($_POST['passport']);
$telephone = trim($_POST['telephone']);
$destination = trim($_POST['destination']);
$payfor = trim($_POST['payfor']);
$amount = trim($_POST['amount']);
$currency = trim($_POST['currency']);
$payment_mode = trim($_POST['payment_mode']);
$reference = trim($_POST['reference']);
$payment_type = trim($_POST['paytype']);

// Validate fields (optional but recommended)
if (!is_numeric($amount) || !is_numeric($telephone)) {
    echo "Invalid input provided for amount or telephone.";
    exit;
}

// Generate additional fields
$transaction_id = "CNA-" . uniqid();
$month = date('F');
$year = date('Y');
$date_created = date("Y-m-d H:i:s");
$status = "Paid";
$time = date("H:i:s");

// Use prepared statements for security
$sql = "INSERT INTO payment (client, passport_number, telephone, destination, payfor, amount, currency, payment_mode, reference, transaction_id, paytype, status, month, year, time, date_created) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = mysqli_prepare($conn, $sql);

if ($stmt) {
    // Bind parameters
    mysqli_stmt_bind_param(
        $stmt,
        "ssssssssssssssss",
        $client_name,
        $passport_number,
        $telephone,
        $destination,
        $payfor,
        $amount,
        $currency,
        $payment_mode,
        $reference,
        $transaction_id,
        $payment_type,
        $status,
        $month,
        $year,
        $time,
        $date_created
    );

    // Execute the query
    if (mysqli_stmt_execute($stmt)) {
        echo "PAYMENT RECORDED SUCCESSFULLY!";
    } else {
        error_log("Error executing query: " . mysqli_stmt_error($stmt));
        echo "An error occurred while processing your request. Please try again.";
    }

    // Close the statement
    mysqli_stmt_close($stmt);
} else {
    error_log("Failed to prepare the statement: " . mysqli_error($conn));
    echo "An error occurred while preparing your request.";
}

// Close the connection
mysqli_close($conn);
