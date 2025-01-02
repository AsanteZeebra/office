<?php



include_once('connect.php');
include_once('load_session.php');
include_once('check_passports.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Welcome | Dashboard </title>

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

          <div class="modal fade" id="mdticket">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Record Bookings </h4>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form method="post" id="bookings">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="">Client</label>
                          <select name="client" class="form-control select2bs4 tfclient" data-placeholder="choose client">
                            <option value=""></option>
                            <?php
                            $sql = "SELECT * FROM clients";
                            $execute = mysqli_query($conn, $sql);
                            if ($execute) {
                              while ($row = mysqli_fetch_array($execute)) {

                                $client = $row['fullname'];
                            ?>
                                <option value="<?php echo $client; ?>"><?php echo $client; ?></option>
                            <?php
                              }
                            } else {
                              echo "No data found";
                            }
                            ?>
                          </select>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="">passport No.</label>
                          <select name="passport" class="form-control select2bs4 tfpass" data-placeholder="Passport No.">
                            <option value=""></option>
                            <?php
                            $sql = "SELECT * FROM clients";
                            $execute = mysqli_query($conn, $sql);
                            if ($execute) {
                              while ($row = mysqli_fetch_array($execute)) {

                                $pass = $row['passport_number'];
                                $name = $row['fullname'];
                            ?>
                                <option value=" <?php echo $pass; ?>"><?php echo $name; ?>:<?php echo $pass; ?></option>
                            <?php
                              }
                            } else {
                              echo "No data found";
                            }
                            ?>
                          </select>

                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="">Destination</label>
                          <select name="destination" class="form-control select2bs4 tfdestination" data-placeholder="Destination">
                            <option value=""></option>
                            <option value="Malta">Malta</option>
                            <option value="Hungary">Hungary</option>
                            <option value="Moldova">Moldova</option>
                            <option value="Romania">Romania</option>
                          </select>
                        </div>
                      </div>


                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="">Airline/Flight No.</label>
                          <input type="text" name="airline" class="form-control tfflight" placeholder="Airline/Flight No.">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="">Date of departure</label>
                          <input type="date" name="date" class="form-control tfdate">
                        </div>
                      </div>

                    </div>

                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="">Booking Confirmed?</label>
                        <select name="confirm" class="form-control select2bs4 tfconfirm" data-placeholder="choose booking status">
                          <option value=""></option>
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                    </div>

                </div>
                <div class="modal-footer justify-content-between">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                </form>
              </div>
              <!-- /.modal-content -->

            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- /.modal -->

          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php?mid=<?php $em = $_GET['mid'];
                                                                    echo $em; ?>">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
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
            <!-- /Col -->
            <div class="col-md-3 col-sm-6 col-12">
             <a href="clients.php?mid=<?php $em = $_GET['mid']; echo $em; ?>">
             <div class="info-box">
                <span class="info-box-icon bg-info"><i class="fa fa-users"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Clients</span>
                  <?php
                  $sql = "SELECT COUNT(*) as total FROM clients";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
             </a>
            </div>




            <!-- /.col -->

            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-danger"><i class="fa fa-file"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Docs.Completed</span>
                  <?php
                  $sql = "SELECT COUNT(PERMIT) as total FROM docs";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>

            <!-- col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon " style="background-color:#FF6C00"><i class="fa fa-passport" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Approved visas</span>
                  <?php
                  $sql = "SELECT COUNT(visa) as total FROM docs";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>
            <!-- col -->

            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon" style="background-color: #1798E1;"><i class="fa fa-handshake" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Transactions</span>
                  <?php
                  $sql = "SELECT sum(amount) as total FROM payment WHERE currency ='¢'";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number">¢<?php echo number_format($total); ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>

            <!-- col  -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon" style="background-color: #1798E1;"><i class="fa fa-calendar-check" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Appointments</span>
                  <?php
                  $sql = "SELECT COUNT(*) as total FROM appointment";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>

            <!-- col  -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon" style="background-color: #1A384C;"><i class="fa fa-list-alt" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Job Requests</span>
                  <?php
                  $sql = "SELECT SUM(quantity) as total FROM jobs";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>

            <!-- col  -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon" style="background-color: #ADD45C;"><i class="fa fa-chart-bar" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Supplied</span>
                  <?php
                  $sql = "SELECT sum(supplied) as total FROM jobs";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['total'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>

            <!-- col  -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon" style="background-color: #FF5733;"><i class="fa fa-building" style="color:white;"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Agents</span>
                  <?php
                  $sql = "SELECT COUNT(agent_name) AS name FROM agents";
                  $run = mysqli_query($conn, $sql);
                  if ($run) {
                    while ($row = mysqli_fetch_assoc($run)) {

                      $total = $row['name'];
                  ?>
                      <span class="info-box-number"><?php echo $total; ?></span>
                  <?php
                    }
                  } else {
                    echo "No records found";
                  }

                  ?>
                </div>
              </div>
            </div>


            <!-- Chart -->
            <div class="col-md-6">

              <!-- DONUT CHART -->
              <div class="card card-danger">
                <div class="card-header">
                  <h3 class="card-title">Permit & Visa Statistics</h3>

                  <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                </div>

                <?php


                $query = $conn->query("SELECT destination AS dest, COUNT(permit) AS pm, COUNT(visa) AS vs FROM docs WHERE permit='Yes' AND visa='Yes' GROUP BY dest");

                foreach ($query as $row) {


                  $dest[] = $row['dest'];

                  $permit[] = $row['pm'];

                  $visa[] = $row['vs'];

                 
                }
                ?>
                <div class="card-body">
                  <canvas id="dot" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->

            </div>

            <!-- Chart -->
            <div class="col-md-6">

              <!-- BAR CHART -->
              <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Supply Statistics</h3>

                  <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                </div>
                <div class="card-body">

                  <?php


                  $query = $conn->query("SELECT country AS dest, SUM(quantity) AS dm, SUM(supplied) as supply FROM jobs GROUP BY dest");

                  foreach ($query as $data) {


                    $country[] = $data['dest'];

                    $demand[] = $data['dm'];

                    $supply[] = $data['supply'];

                    
                  }
                  ?>
                  <div class="chart">

                    <canvas id="bar" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>

                  </div>

                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->

            </div>



            <div class="card card-primary" style="width:100%">
              <div class="card-header">
                <h3 class="card-title">Client Status Summary</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                  <a href="clients.php? mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" class="btn btn-tool btn-sm">
                    More
                  </a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-hover table-striped">
                  <thead style="text-align: center;">
                    <tr>
                      <th>Client</th>
                      <th>Skill</th>
                      <th>Destination</th>
                      <th>Telephone</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  <tbody style="text-align:center;">
                    <?php
                    $sql = "SELECT * FROM clients ORDER BY id DESC LIMIT 5";
                    $execute = mysqli_query($conn, $sql);
                    if ($execute) {
                      while ($row = mysqli_fetch_array($execute)) {
                        $client = $row['fullname'];
                        $skill = $row['skill'];
                        $destination = $row['country'];
                        $telephone = $row['telephone'];
                        $status = $row['status'];

                    ?>
                        <tr>
                          <td><?php echo $client; ?></td>
                          <td><?php echo $skill; ?></td>
                          <td><?php echo $destination; ?></td>
                          <td><?php echo $telephone; ?></td>
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
                        </tr>


                    <?php

                      }
                    } else {
                      echo "Data was not found";
                    }
                    ?>
                  </tbody>

                </table>
              </div>
              <!-- /.card-body -->


            </div>
            <!-- /.row -->



            <div class="card card-warning col-md-6">
              <div class="card-header border-0">
                <h3 class="card-title">Recent Payments</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                  <a href="payment.php? mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" class="btn btn-tool btn-sm">
                    More
                  </a>
                </div>
              </div>

              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                    <tr>
                      <th>Client</th>
                      <th>Amount</th>
                      <th>Fee Type</th>
                      <th><i class="fa fa-bars"></i></th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $sql = "SELECT * FROM payment ORDER BY id DESC LIMIT 4";
                    $execute = mysqli_query($conn, $sql);
                    if ($execute) {
                      while ($row = mysqli_fetch_array($execute)) {
                        $client = $row['client'];
                        $currency = $row['currency'];
                        $amount = $row['amount'];
                        $payfor = $row['payfor'];
                    ?>
                        <tr>
                          <td><?php echo $client ?></td>
                          <td> <?php echo $currency ?><?php echo $amount ?></td>
                          <td><?php echo $payfor ?></td>
                          <td><i class="fa fa-check-circle"></i></td>
                        </tr>
                    <?php
                      }
                    } else {
                      echo "Data was not found";
                    }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- col -->

            <div class="card card-success col-md-6">
              <div class="card-header border-0">
                <h3 class="card-title">Ready to Travel <i class="fa fa-plane"></i></h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                  <a class="btn btn-tool btn-sm" data-toggle="modal" data-target="#mdticket" title="Add ticket bookings">
                    <i class="fa fa-pen"></i>
                  </a>
                  <a class="btn btn-tool btn-sm" href="tickets.php? mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" title="View Bookings">
                    More
                  </a>

                </div>
              </div>

              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                    <tr>
                      <th>Client</th>
                      <th>Destination</th>
                      <th>Airline</th>
                      <th>Date</th>
                      <th></th>

                    </tr>
                  </thead>


                  <tbody>
                    <?php
                    $sql = "SELECT * FROM ticket ORDER BY id DESC LIMIT 3";
                    $execute = mysqli_query($conn, $sql);
                    if ($execute) {
                      while ($row = mysqli_fetch_array($execute)) {



                    ?>
                        <tr>
                          <td>
                            <?php echo $row['client']; ?>
                          </td>
                          <td><?php echo $row['destination']; ?></td>
                          <td><?php echo $row['flight_number']; ?></td>
                          <td><?php echo $row['departure_date']; ?></td>
                          <?php if ($row['confirmation'] == "Yes") {
                            echo "<td tittle='Booking confirmed'> <i class='fa fa-check-circle' style='color:green;'> </i> </td>";
                          } else {
                            echo "<td tittle='Booking not confirmed'> <i class='fa fa-times' style='color:red;'> </i> </td>";
                          }
                          ?>

                        </tr>

                    <?php
                      }
                    } else {
                      echo "No data found";
                    }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>
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

  <?php include_once('charts.php'); ?>

  <?php include_once('validate_bookings.php'); ?>
</body>

</html>