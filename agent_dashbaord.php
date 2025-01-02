<?php

//include_once('load_session.php');

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
    <?php include_once('sidebar_agent.php'); ?>

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

          <!-- transactions -->
          <div class="modal fade" id="mdd">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Transactions</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>#ID</th>
                        <th>Name</th>
                        <th>Destination</th>
                        <th>Type</th>
                        <th>Amount(¢)</th>
                        <th>Status</th>
                        <th><i class="fa fa-bars"></i></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="modal-footer justify-content-between">

                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- /.modal -->

          <div class="modal fade" id="cls">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Clients</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <table id="example1" class="table table-hover table-striped">
                <thead style="text-align: center;">
                  <tr>
                    <th hidden>Passport No.</th>
                    <th>Client Name</th>
                    <th>Skill</th>
                    <th>Destination</th>
                    <th>Passport No.</th>
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
                        <td style="text-align: left;"><a
                            href="proview.php? psn=<?php echo $passportnumber ?> && mid=<?php $dd = $_GET['mid'];
                                echo $dd; ?>"><?php echo $client; ?></a>
                        </td>
                        <td style="text-align: left;"> <?php echo $skill; ?></td>
                        <td style="text-align: left;"><?php echo $destination; ?></td>
                        <td><?php echo $passportnumber; ?></td>
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
                          <a class="btn btn-primary btn-sm"
                            href="profile_agent.php? psn=<?php echo $passportnumber ?> && mid=<?php $eid = $_GET['mid'];
                                echo $eid; ?>"
                            title="Edit profile information"><i class="fa fa-edit"></i> </a>
                          <a href="files.php? client=<?php echo $client ?> & psn=<?php echo $passportnumber; ?> && mid=<?php $eid = $_GET['mid'];
                                 echo $eid; ?>"class=" btn btn-warning btn-sm"><i class="fa fa-file" title="View client uploaded files"></i></a>

                        </td>
                      </tr>

                    <?php }
                  } else {
                    echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                  } ?>
                </tbody>

              </table>

            </div>
           
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->


          <!-- Add clients -->
          <div class="modal fade" id="cdd">
            <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Add New Candidate</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">

                  <form id="form" method="post">

                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="name">Fullname*</label>
                          <input type="text" name="fullname" class="form-control tfname" placeholder="Enter Fullname">
                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="date">Date of birth*</label>
                          <input type="date" name="dob" class="form-control tfdate">
                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Marital Status*</label>
                          <select class="form-control select2bs5 cbmarital" name="status"
                            data-placeholder="Choose marital status">
                            <option value=""></option>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Divorced">Divorced</option>
                          </select>
                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="date">Place of birth*</label>
                          <input type="text" name="pob" class="form-control tfplace" placeholder="Enter place of birth">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Region*</label>
                          <input type="text" name="region" class="form-control tfregion" placeholder="Enter Region">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Nationality*</label>
                          <select name="national" class="form-control tfnational" data-placeholder="nationality">
                            <option value=""></option>
                            <option value="Ghanaian">Ghanaian</option>
                            <option value="Togolese">Togolese</option>
                            <option value="Nigerian">Nigerian</option>
                            <option value="Cameroonia">Cemeroonian</option>
                            <option value="Burkinabay">Burkinabay</option>
                            <option value="Indian">Indian</option>
                            <option value="Kenya">Kenya</option>
                            <option value="Guinea">Guinea</option>
                            <option value="South African">South African</option>


                          </select>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Country of interest*</label>
                          <select name="country" class="form- select2bs4 countrypicker tfcountry" multiple="multiple"
                            data-placeholder="Select country" data-live-search="true" data-flag="true"
                            style="width:100%;">

                          </select>
                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="telephone">Telephone*</label>
                          <input type="text" name="telephone" class="form-control tfphone" placeholder="xxx xxx xxxxxx">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="city">City/Town*</label>
                          <input type="text" name="city" class="form-control tfcity" placeholder="Enter City / Town">
                        </div>
                      </div>

                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="city">Email*</label>
                          <input type="email" name="mail" class="form-control tfmail" placeholder="Enter Email">
                        </div>
                      </div>

                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="skill">Job Skill/S*</label>
                          <select class=" form-control select2bs4 tfskill" name="skill" multiple="multiple"
                            data-placeholder="Select skill/s">

                            <option value="Unskilled">Unskilled</option>
                            <option value="Artisan">Artisan</option>
                            <option value="Professional">Professional</option>
                            <option value="Carpenter">Carpenter</option>
                            <option value="Maison">Maison</option>
                            <option value="Plumber">Plumber</option>
                            <option value="Tiler">Tiler</option>
                            <option value="Welder">Welder</option>
                            <option value="Labourer">Labourer</option>
                            <option value="Driver">Driver</option>
                          </select>

                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="date">Years of Experience*</label>
                          <input type="text" name="experience" class="form-control tfexperience"
                            placeholder="Enter years">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="Children">Children in custody*</label>
                          <input type="text" name="children" class="form-control tfchildren"
                            placeholder="eg. 1 child(2years)">
                        </div>
                      </div>



                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <br>
                            <h3>Family information <i class="fa fa-users" style="color:#0056B3;"></i></h3> <small>please
                              use N/A to fill empty input fields</small>
                            <hr>
                            <label for="name"> Spouse Name</label>
                            <input type="text" class="form-control tfspouse" name="spouse" placeholder="Enter Fullname">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Date of birth</label>
                            <input type="date" name="sdob" class="form-control tfsdob">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="occupation">Occupation</label>
                            <input type="text" name="occupation" class="form-control tfoccupation"
                              placeholder="Enter occupation">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Town">City / Town</label>
                            <input type="text" name="scity" class="form-control stfcity"
                              placeholder="Enter City / Town">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Region">Region</label>
                            <input type="text" class="form-control tfsregion" name="sregion" placeholder="Enter Region">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Telephone">Telephone</label>
                            <input type="text" name="sphone" class="form-control tfsphone" placeholder="xxx xxx xxxxxx">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Mother's Name</label>
                            <input type="text" name="mother" class="form-control tfmother"
                              placeholder="Enter Mother's Name">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Father's Name</label>
                            <input type="text" name="father" class="form-control tffather"
                              placeholder="Enter Mother's Name">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Address">House Address</label>
                            <input type="text" name="address" class="form-control tfaddress"
                              placeholder="Enter House Address">
                          </div>
                        </div>

                        <div class="col-md-12">
                          <br>
                          <h3>Documents <i class="fa fa-file" style="color:#0056B3;"></i></h3>
                          <hr>

                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Passport</label>
                            <select name="passport" class="form-control tfpassport" data-placeholder="passport">
                              <option value=""> </option>
                              <option value="Yes">Yes</option>
                              <option value="No">No</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Issueing Authority</label>
                            <input type="text" class="form-control tfissue" name="issueauthority"
                              placeholder="Enter passport Issueing Authority">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Passport No.</label>
                            <input type="text" class="form-control tfpassnumber" name="passportnumber"
                              placeholder="Enter passport Number">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Issue Date</label>
                            <input type="date" class="form-control issuedate" name="issuedate"
                              placeholder="Enter passport issue date">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Expiry Date</label>
                            <input type="date" class="form-control expirydate" name="expirydate"
                              placeholder="Enter passport expiry date">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Passport pictures</label>
                            <select name="pictures" class="form-control tfpictures"
                              data-placeholder="Passport pictures">
                              <option value=""></option>
                              <option value="Yes">Yes</option>
                              <option value="No">No</option>
                            </select>
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Medical report</label>
                            <select name="medical" class="form-control tfmedical" data-placeholder="Medical report">
                              <option value=""></option>
                              <option value="Yes">Yes</option>
                              <option value="No">No</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Police report</label>
                            <select name="police" class="form-control tfpolice" data-placeholder="Police report">
                              <option value=""></option>
                              <option value="Yes">Yes</option>
                              <option value="No">No</option>
                            </select>
                          </div>
                        </div>


                      </div>
                      <hr>
                      <button class="btn btn-primary" type="submit" style="float:right;"><i
                          class="fa fa-arrow-circle-right"></i> Submit</button>

                    </div>

                </div>

                </form>

              </div>
             
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


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
                        <select name="options" class="form-control select2bs4 mdstatus"
                          data-placeholder="--Choose status--">
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
              <a href="#" class="btn btn-primary btn-sm" style="float: right;" data-toggle="modal" data-target="#cdd"> <i class="fa fa-plus"></i> Add Client</a>
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
                        <td style="text-align: left;"><a
                            href="proview.php? psn=<?php echo $passportnumber ?> && mid=<?php $dd = $_GET['mid'];
                                echo $dd; ?>"><?php echo $client; ?></a>
                        </td>
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
                          <a class=" btn btn-primary btn-sm"
                            href="profile_agent.php? psn=<?php echo $passportnumber ?> && mid=<?php $eid = $_GET['mid'];
                                echo $eid; ?>"
                            title="Edit profile information" ><i class="fa fa-edit"></i> </a>
                          <a href="files.php? client=<?php echo $client ?> & psn=<?php echo $passportnumber; ?> && mid=<?php $eid = $_GET['mid'];
                                 echo $eid; ?>"
                            class="btn btn-warning btn-sm"><i class="fa fa-file" title="View client uploaded files"></i></a>

                        </td>
                      </tr>

                    <?php }
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
    $('.tdstat').on('click', function () {
      $('#mdstat').modal('show');

      $tr = $(this).closest('tr');

      var data = $tr.children("td").map(function () {
        return $(this).text();
      }).get();

      console.log(data);


      var pass = $('.mdpass').val(data[0]);
      var client = $('.mdclient').val(data[1]);
    })
  </script>
</body>

</html>