<?php



// Select data from clients table
$query = "SELECT fullname, nationality, passport_number, issue_date, expiry_date, city, telephone FROM clients";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    // Prepare an insert statement with placeholders
    $stmt = $conn->prepare("INSERT INTO passports (fullname, nationality, passport_number, issue_date, expiry_date, city, telephone) 
                            SELECT ?, ?, ?, ?, ?, ?, ? FROM DUAL
                            WHERE NOT EXISTS (
                                SELECT 1 FROM passports WHERE passport_number = ?
                            )");
    
    // Bind parameters
    $stmt->bind_param("ssssssss", $fullname, $nationality, $passport_number, $issue_date, $expiry_date, $city, $telephone, $passport_number);

    // Loop through each client row
    while ($row = $result->fetch_assoc()) {
        // Set variables for the placeholders
        $fullname = $row['fullname'];
        $nationality = $row['nationality'];
        $passport_number = $row['passport_number'];
        $issue_date = $row['issue_date'];
        $expiry_date = $row['expiry_date'];
        $city = $row['city'];
        $telephone = $row['telephone'];

        // Execute the insert statement
        $stmt->execute();
    }

    // Close the statement
    $stmt->close();
} else {
    echo "No records found in clients table.";
}





// Select all passports data
$sql = "SELECT passport_number, issue_date, expiry_date, status FROM passports"; 
$result = mysqli_query($conn, $sql);

if ($result) {
    $currentDate = date('Y-m-d'); // Get current date in 'YYYY-MM-DD' format
    
    while ($row = mysqli_fetch_assoc($result)) {
        $expiryDate = $row['expiry_date'];
        $status = $row['status'];
        
        // Check if the expiry date has passed and status is not already 'expired'
        if ($expiryDate < $currentDate && $status !== 'expired') {
            $id = $row['passport_number']; // Assuming there's a unique ID for each passport entry
            
            // Update the status to 'expired'
            $updateSql = "UPDATE passports SET status = 'expired' WHERE passport_no = ?";
            $stmt = mysqli_prepare($conn, $updateSql);
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_close($stmt);
        }
    }
} else {
    echo "Error fetching data: " . mysqli_error($conn);
}



