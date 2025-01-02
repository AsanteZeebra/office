<?php

include_once('connect.php');

// Use prepared statements to prevent SQL injection
$stmt = $conn->prepare("SELECT * FROM account WHERE email = ?");
$stmt->bind_param("s", $_POST['email']);

$stmt->execute();
$result = $stmt->get_result();

if ($result && $result->num_rows == 1) {
    $memberDetails = $result->fetch_assoc();

    // Verify the password using password_verify()
    if (password_verify($_POST['password'], $memberDetails['password'])) {
        session_start();

        // Store data in session variables
        $_SESSION["loggedin"] = true;
        $_SESSION["email"] = $memberDetails['email'];
        $_SESSION["role"] = $memberDetails['role'];


        // function getPublicIp()
        // {
        //     // Fetch public IP address from ipify API
        //     $publicIp = file_get_contents('https://api.ipify.org');
        //     return $publicIp;
        // }

        

       
            // Insertion was successful, continue with the redirection based on the role
            switch ($memberDetails['role']) {
                case '':
                    header("Location: index.php?mid=" . urlencode($memberDetails['email']));
                    break;
                case 'Agent':
                    header("Location: agent_dashbaord.php?mid=" . urlencode($memberDetails['email']));
                    break;
              
                default:
                    echo json_encode(["status" => "unknown_role"]);
                    exit;
            }

            // Regenerate session ID for security
            session_regenerate_id(true);
            exit;

    } else {
        // Invalid password
        echo json_encode(["status" => "invalid_credentials"]);
        exit;
    }
}


