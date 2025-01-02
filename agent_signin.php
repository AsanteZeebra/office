<?php
// Start session
session_start();

// Database connection


$host = "localhost";
$username = "root";
$password = "0249kwaku";
$db_name = "centxgih_cmgpay";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db_name", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $agent_id = trim($_POST['agent_id']);
    $password = trim($_POST['password']);

    // Input validation
    if (empty($agent_id) || empty($password)) {
        echo "Agent ID and password are required.";
        exit;
    }

    // Prepare and execute query
    $stmt = $pdo->prepare("SELECT agent_id, password FROM agents WHERE agent_id = :ag_id");
    $stmt->bindParam(':ag_id', $agent_id);
    $stmt->execute();

    $agent = $stmt->fetch(PDO::FETCH_ASSOC);

    // Verify password
    if ($agent && password_verify($password, $agent['password'])) {
        // Set session variables
        $_SESSION['agent_id'] = $agent['id'];
        //echo "Login successful! Redirecting...";
        header("Location: dashboard.php");
        exit;
    } else {
        echo "Invalid Agent ID or password.";
    }
}