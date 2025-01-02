<?php 
include_once('connect.php');

// Validate POST inputs
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = trim($_POST['fullname']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];
    $position = $_POST['role'];

    // Hash the password securely
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Set date and time values
    $month = date('F');
    $year = date('Y');
    $date_created = date("Y-m-d H:i:s");

    // Check if the account already exists
    $check_sql = "SELECT id FROM account WHERE email = ?";
    if ($check_stmt = $conn->prepare($check_sql)) {
        $check_stmt->bind_param("s", $email);
        $check_stmt->execute();
        $check_stmt->store_result();

        if ($check_stmt->num_rows > 0) {
            echo "Error: An account with this email already exists.";
        } else {
            // Prepare an insert statement
            $sql = "INSERT INTO account (fullname, role, email, password, month, year, date_created) VALUES (?, ?, ?, ?, ?, ?, ?)";
            if ($stmt = $conn->prepare($sql)) {
                $stmt->bind_param("sssssss", $fullname, $position, $email, $hashed_password, $month, $year, $date_created);

                // Attempt to execute the statement
                if ($stmt->execute()) {
                    echo "Account created successfully.";
                } else {
                    echo "Error: Could not execute query. " . $stmt->error;
                }

                $stmt->close();
            } else {
                echo "Error: Could not prepare statement. " . $conn->error;
            }
        }

        $check_stmt->close();
    } else {
        echo "Error: Could not prepare check statement. " . $conn->error;
    }

    $conn->close();
} else {
    echo "Please submit the form.";
}
?>
