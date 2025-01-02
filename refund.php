<?php 
include_once('connect.php');

// Check if POST['id'] is set to avoid undefined index errors
if (isset($_POST['id'])) {
    // Use prepared statements to prevent SQL injection
    $sql = "UPDATE payment SET status = ?, refund = ? WHERE id = ?";
    $stmt = $conn->prepare($sql);
    
    if ($stmt) {
        // Bind parameters and execute the statement
        $status = 'Refunded';
        $refund = 'Yes';
        $id = $_POST['id'];
        
        $stmt->bind_param('ssi', $status, $refund, $id); // 'ssi' specifies types: string, string, integer
        
        if ($stmt->execute()) {
            echo "Refund has been recorded successfully.";
        } else {
            echo "Error: " . $stmt->error;
        }
        
        $stmt->close(); // Close the prepared statement
    } else {
        echo "Error preparing statement: " . $conn->error;
    }
} else {
    echo "No ID provided.";
}

$conn->close(); // Close the database connection
?>
