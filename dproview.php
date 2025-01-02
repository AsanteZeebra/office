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
  <?php include_once('sidebar.php'); ?>
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

                $sql = "SELECT * from  clients WHERE passport_number='$pass'";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                  while ($row = mysqli_fetch_array($result)) {

                   

                    ?>
      <!-- Default box -->
    <div class="row" >

 <div class="col-12">
  <div class="card">
    <div class="card-body">

    <center>
        <img src="dist/img/fmk.png" alt="" style="width: 150px;">
    </center>
<table class="table table-borderless">
    <thead>
        <tr>
            <th>Passport Number</th>
            <th>Date Added</th>
            <th>House Address</th>
            <th>Application status</th>
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
<br>
<div class="row">
<div class="col-sm-2"><b><h4>Personal Info <i class="fa fa-address-card"></i></h4></b> </div> <div class="col-sm-10"><hr style="background-color: #505050;"></div>
</div>
<div class="row">
    <div class="col-sm-10">
        <table class="table table-borderless">
            <tr>
                <td>Fullname</td>
                <td>Region</td>
                <td>Marital Status</td>
                <td>Place of Birth</td>
            </tr>
            <tr>
                <td><b><?php echo $row['fullname']; ?></b></td>
                <td><b><?php echo $row['region']; ?></b></td>
                <td><b><?php echo $row['marital']; ?></b></td>
                <td><b><?php echo $row['birthplace']; ?></b></td>
            </tr>
            <tr>
                <td>Date of birth</td>
                <td>Occupation</td>
                <td>House Address</td>
                <td>Passport Number</td>
            </tr>
            <tr>
                <td><b><?php echo $row['dob']; ?></b></td>
                <td><b><?php echo $row['occupation']; ?></b></td>
                <td><b><?php echo $row['address']; ?></b></td>
                <td><b><?php echo $row['passport_number']; ?></b></td>
            </tr>
            <tr>
                <td>Nationality</td>
                <td>Region</td>
                <td>Destination</td>
                <td>City/Town</td>
            </tr>
            <tr>
                <td><b><?php echo $row['nationality']; ?></b></td>
                <td><b><?php echo $row['region']; ?></b></td>
                <td><b><?php echo $row['country']; ?></b></td>
                <td><b><?php echo $row['city']; ?></b></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>Job skill</td>
                <td>Years of Experience</td>
                <td>Number of children</td>
            </tr>
            <tr>
                <td><b><?php echo $row['email']; ?></b></td>
                <td><b><?php echo $row['skill']; ?></b></td>
                <td><b><?php echo $row['experience']; ?></b></td>
                <td><b><?php echo $row['children']; ?></b></td>
            </tr>
        
        </table>
    </div>

    <div class="col-sm-2">
        <img src="uploads/bff.jpg" alt="" style="with: 150px; height: 150px;">
    </div>
</div>

<div class="row">
<div class="col-sm-2"><b><h4>Family Info <i class="fa fa-users"></i></h4></b></div> <div class="col-sm-10"><hr style="background-color: #505050;"></div>
</div>

<div class="row">
    <div class="col-sm-10">
        <table class="table table-borderless">
            <tr>
                <td>Spouse Name</td>
                <td>Date of birth</td>
                <td>Occupation</td>
                <td>City/Town</td>
            </tr>
            <tr>
                <td><b><?php echo $row['spouse']; ?></b></td>
                <td><b><?php echo $row['spousedate']; ?></b></td>
                <td><b><?php echo $row['occupation']; ?></b></td>
                <td><b><?php echo $row['spousecity']; ?></b></td>
            </tr>
            <tr>
                <td>Region</td>
                <td>Telephone</td>
                <td>Mother's Name</td>
                <td>Father's Name</td>
            </tr>
            <tr>
                <td><b><?php echo $row['spouseregion']; ?></b></td>
                <td><b><?php echo $row['spousephone']; ?></b></td>
                <td><b><?php echo $row['mother']; ?></b></td>
                <td><b><?php echo $row['father']; ?></b></td>
            </tr>
            <tr>
                <td>House address</td>
                <td>Passport</td>
                <td>Issueing Authority</td>
                <td>Passport Number</td>
            </tr>
            <tr>
                <td><b><?php echo $row['address']; ?></b></td>
                <td><b><?php echo $row['passport']; ?></b></td>
                <td><b><?php echo $row['issueing_authority']; ?></b></td>
                <td><b><?php echo $row['passport_number']; ?></b></td>
            </tr>
            <tr>
                <td>Issue Date</td>
                <td>Expiry Date</td>
                <td>Passport photo</td>
                <td>Medical Report</td>
            </tr>
            <tr>
                <td><b><?php echo $row['issue_date']; ?></b></td>
                <td><b><?php echo $row['expiry_date']; ?></b></td>
                <td><b><?php echo $row['pictures']; ?></b></td>
                <td><b><?php echo $row['medical']; ?></b></td>
            </tr>
          <tr>
            <td>Police Report</td>
          </tr>
          <tr>
            <td><b><?php echo $row['police_report']; ?></b></td>
          </tr>
        </table>
    </div>
</div>

      </div>
  </div>
</div>
  </div>
  <?php }
                  } else {
                    echo "No Record Found!";
                  } ?>
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
