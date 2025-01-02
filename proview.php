<?php 
include_once('load_session.php');
include_once('connect.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>View Candidate | Preview</title>
  <?php include_once('head.php'); ?>
 
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
 <?php include_once('navbar.php') ?>
  <!-- /.navbar -->
  <?php include_once('sidebar_agent.php'); ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) --> 
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Client info</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">client</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
    <?php
        $pass = $_GET['psn'];
        $sql = "SELECT * FROM clients WHERE passport_number = '$pass'";
        $result = mysqli_query($conn, $sql);

        if ($result && mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
    ?>

    <!-- Client Details Section -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <!-- Passport Details Table -->
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Passport Number</th>
                                <th>Date Added</th>
                                <th>House Address</th>
                                <th>Application Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?php echo $row['passport_number']; ?></td>
                                <td><?php echo $row['date_created']; ?></td>
                                <td><?php echo $row['address']; ?></td>
                                <td><?php echo $row['status']; ?></td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- Personal Info Section -->
                    <div class="section-header mt-4">
                        <h4 class="text-primary">Personal Info <i class="fa fa-address-card"></i></h4>
                        <hr>
                    </div>
                    <table class="table table-striped">
                        <tbody>
                            <tr>
                                <td><b>Fullname</b></td>
                                <td><?php echo $row['fullname']; ?></td>
                                <td><b>Region</b></td>
                                <td><?php echo $row['region']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Marital Status</b></td>
                                <td><?php echo $row['marital']; ?></td>
                                <td><b>Place of Birth</b></td>
                                <td><?php echo $row['birthplace']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Date of Birth</b></td>
                                <td><?php echo $row['dob']; ?></td>
                                <td><b>Occupation</b></td>
                                <td><?php echo $row['occupation']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Nationality</b></td>
                                <td><?php echo $row['nationality']; ?></td>
                                <td><b>Destination</b></td>
                                <td><?php echo $row['country']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Email</b></td>
                                <td><?php echo $row['email']; ?></td>
                                <td><b>Job Skill</b></td>
                                <td><?php echo $row['skill']; ?></td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- Family Info Section -->
                    <div class="section-header mt-4">
                        <h4 class="text-primary">Family Info <i class="fa fa-users"></i></h4>
                        <hr>
                    </div>
                    <table class="table table-striped">
                        <tbody>
                            <tr>
                                <td><b>Spouse Name</b></td>
                                <td><?php echo $row['spouse']; ?></td>
                                <td><b>Date of Birth</b></td>
                                <td><?php echo $row['spousedate']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Occupation</b></td>
                                <td><?php echo $row['occupation']; ?></td>
                                <td><b>City/Town</b></td>
                                <td><?php echo $row['spousecity']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Mother's Name</b></td>
                                <td><?php echo $row['mother']; ?></td>
                                <td><b>Father's Name</b></td>
                                <td><?php echo $row['father']; ?></td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- Additional Documents Section -->
                    <div class="section-header mt-4">
                        <h4 class="text-primary">Additional Documents</h4>
                        <hr>
                    </div>
                    <table class="table table-striped">
                        <tbody>
                            <tr>
                                <td><b>Passport Photo</b></td>
                                <td>
                                    <!-- <img src="<?php //echo $row['pictures']; ?>" alt="Passport Photo" style="width: 150px; height: 150px; object-fit: cover;">
                                -->
                                    <?php echo $row['pictures'] ?>
                                  </td>
                                <td><b>Medical Report</b></td>
                                <td><?php echo $row['medical']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Police Report</b></td>
                                <td><?php echo $row['police_report']; ?></td>
                                <td><b>Issue Date</b></td>
                                <td><?php echo $row['issue_date']; ?></td>
                            </tr>
                            <tr>
                                <td><b>Expiry Date</b></td>
                                <td><?php echo $row['expiry_date']; ?></td>
                                <td><b>Issuing Authority</b></td>
                                <td><?php echo $row['issueing_authority']; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <?php
            }
        } else {
            echo '<div class="alert alert-warning">No Record Found!</div>';
        }
    ?>
</section>


    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 <?php include_once('footer.php'); ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->



<?php include_once("scripts.php"); ?>


</body>
</html>
