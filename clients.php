<?php

session_start();
 
  
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

include_once('connect.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Clients </title>

  <?php include_once('head.php'); ?>


</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Preloader -->
    <?php include_once('preloader.php'); ?>

    <!-- Navbar -->
    <?php include_once('navbar.php'); ?>

    <!-- Main Sidebar Container -->
    <?php include_once('sidebar.php');  ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Clients</h1>

            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Clients</li>

              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">

          <!-- /col -->
          <div class="row">
          <?php
            $sql = "SELECT count(*) as total FROM clients";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $total = $row['total'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
          <!-- /Col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-info"><i class="fa fa-users"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Registered</span>
                  <span class="info-box-number"><?php echo $total; ?></span>
                </div>
              </div>
            </div>

            <?php
            $sql = "SELECT count(*) as vs FROM clients WHERE status='Visa Approved'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $visa = $row['vs'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <!-- /col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-success"><i class="fa fa-check-square"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Visa Approved</span>
                  <span class="info-box-number"><?php echo $visa; ?></span>
                </div>
              </div>
            </div>

            <?php
            $sql = "SELECT count(*) as pm FROM clients WHERE status='Permit Approved'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $permit = $row['pm'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <!-- col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-warning"><i class="fa fa-spinner"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Permits Approved</span>
                  <span class="info-box-number"><?php echo $permit; ?></span>
                </div>
              </div>
            </div>
            <!-- /.col -->
            
            <?php
            $sql = "SELECT count(*) as waiting FROM clients WHERE status='Waiting for Permit'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $wait = $row['waiting'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-danger"><i class="fa fa-file"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Awaiting Permits</span>
                  <span class="info-box-number"><?php echo $wait; ?></span>
                </div>
              </div>
            </div>


            <div class="modal fade" id="mdstat">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Client <i class="fa fa-arrow-circle-right"></i> Status </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form id="form" method="POST">
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-md-12">
                          <input type="text" hidden class="form-control mdclient" readonly placeholder="Client Name">
                          <input type="text" hidden class="form-control mdpass" readonly placeholder="passport No.">
                          <select name="options" class="form-control select2bs4 mdstatus" data-placeholder="--Choose status--">
                            <option value=""></option>
                            <option value="Waiting to be placed">Waiting to be placed </option>
                            <option value="Waiting for job response">Waiting for job response</option>
                            <option value="Waiting for Permit">Waiting for Permit</option>
                            <option value="Permit Approved">Permit Approved</option>
                            <option value="Booking Appointment">Booking Appointment</option>
                            <option value="Appointment confirmed">Appointment confirmed</option>
                            <option value="Submited for visa">Submited for visa</option>
                            <option value="Waiting for visa">Waiting for visa decision</option>
                            <option value="Visa Approved">Visa Approved</option>
                            <option value="Visa Denied">Visa Denied</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
                <!-- /.modal-content -->
                </form>

              </div>
              <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="card" style="width:100%">
              <div class="card-header">
                <h3 class="card-title">All clients</h3>
                <a href="addclient.php? mid=<?php $md = $_GET['mid']; echo $md; ?>" class="btn btn-primary btn-sm" style="float: right;"> <i class="fa fa-plus"></i> Add Client</a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">

                <table id="example1" class="table table-hover table-striped">
                  <thead style="text-align: center;">
                    <tr>
                      <th hidden>Passport No.</th>
                      <th>Client Name</th>
                      <th>Skill</th>
                      <th>Destination</th>
                      <th>Address</th>
                      <th>Telephone</th>
                      <th>Status</th>
                      <th><i class="fa fa-bars"></i></th>
                    </tr>
                  </thead>
                 
                      <tbody style="text-align:center;">
                           <?php
                  include_once('connect.php');
                  
                  $sql = "SELECT * from  clients ORDER BY id DESC";
                  $result = mysqli_query($conn, $sql);
                  if ($result) {
                    while ($row = mysqli_fetch_array($result)) {

                      $client = $row['fullname'];
                      $skill = $row['skill'];
                      $destination = $row['country'];
                      $address = $row['address'];
                      $phone = $row['telephone'];
                      $status = $row['status'];
                      $passportnumber = $row['passport_number'];


                  ?>
                        <tr>
                          <td hidden><?php echo $passportnumber; ?></td>
                          <td style="text-align: left;"><a href="dproview.php? psn=<?php echo $passportnumber ?> && mid=<?php $dd = $_GET['mid']; echo $dd; ?>"><?php echo $client; ?></a> </td>
                          <td style="text-align: left;"> <?php echo $skill; ?></td>
                          <td style="text-align: left;"><?php echo $destination; ?></td>
                          <td><?php echo $address; ?></td>
                          <td><?php echo $phone; ?> </td>
                          <?php if ($status == "Permit Approved") {
                            echo '<td class="tdstat"> <label class="badge bg-success"> Permit Approved <i class="fa fa-check"> </i> </label> </td>';
                          } else if ($status == "Waiting to be placed") {
                            echo '<td class="tdstat"> <label class="badge bg-warning">Not placed </label> </td>';
                          } else if ($status == "Booking Appointment") {
                            echo '<td class="tdstat"> <label class="badge bg-warning"> <i class="fa fa-clock"> </i> Booking Appointment </label> </td>';
                          } else if ($status == "Visa Approved") {
                            echo '<td class="tdstat"> <label class="badge bg-success">Visa Approved <i class="fa fa-check"> </i>  </label> </td>';
                          } else if ($status == "Waiting for visa") {
                            echo '<td class="tdstat"> <label class="badge bg-warning"> <i class="fa fa-clock"> </i> Processing visa </label> </td>';
                          } else if ($status == "Visa Denied") {
                            echo '<td class="tdstat"> <label class="badge bg-danger"> <i class="fa fa-times"> </i> Visa Denied </label> </td>';
                          } else {
                            echo '<td class="tdstat"> <label class="badge bg-info"> <i class="fa fa-clock"> </i> Processing</label> </td>';
                          }
                          ?>
                          <td>
                          <a href="files.php? client=<?php echo $client?> & psn=<?php echo $passportnumber; ?> && mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" class="text-muted"><i class="fa fa-file" title="View client uploaded files"></i></a>
                            <a class="text-muted" href="profile.php? psn=<?php echo $passportnumber ?> && mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" title="Edit profile information"><i class="fa fa-edit"></i> </a>
                            <a href="timeline.php? psn=<?php echo $passportnumber; ?> & name=<?php echo $client; ?> && mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" title="Track progress in timeline" class="text-muted"><i class="fa fa-clock"></i> </a>
                           
                          </td>
                        </tr>

                    <?php    }
                  } else {
                    echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                  } ?>
                      </tbody>

                </table>
              </div>
              <!-- /.card-body -->


            </div>


            <!-- col -->


            <!-- end of table -->
          </div>
        </div>
    </div>
    <!-- /.row -->
  </div>
  <!-- /.row -->

  </div>






  </div>
  <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
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

  <?php include_once('scripts.php'); ?>
  <?php include_once('validate_status.php'); ?>
  <?php include_once('charts.php'); ?>

  <script>
    $('.tdstat').on('click', function() {
      $('#mdstat').modal('show');

      $tr = $(this).closest('tr');

      var data = $tr.children("td").map(function() {
        return $(this).text();
      }).get();

      console.log(data);


      var pass = $('.mdpass').val(data[0]);
      var client = $('.mdclient').val(data[1]);
    })
  </script>
</body>

</html>