<?php

session_start();
 
  
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

include_once('connect.php');

?>
<?php include_once('connect.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Client | Invoice</title>

  <?php include_once('head.php'); ?>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <?php include_once('navbar.php'); ?>
    <!-- /.navbar -->

    <?php include_once('sidebar.php'); ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Job Demand & Supply</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">jobs</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">



              <!-- Main content -->
              <div class="invoice p-3 mb-3">
                <!-- title row -->
                <div class="row">
                  <div class="col-12">
                    <h5>
                      Demand & Supplies
                      <small class="float-right"><?php $date = Date("Y-M-jS");
                                                  echo $date; ?></small>
                    </h5>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- info row -->
                <div class="row invoice-info">
                 
                 
                 
                </div>
                <!-- /.row -->

                <!-- Table row -->
                <div class="row">
                  <div class="col-12 table-responsive">
                    <table class="table table-striped">
                      <thead style="text-align: center;">
                        <tr>
                          <th>Company</th>
                          <th>Country</th>
                          <th>Quantity_requested</th>
                          <th>Quantity_supplied</th>
                          <th>Request_date</th>
                          


                        </tr>
                      </thead>
                      <tbody style="text-align:center;">
                        <?php
                       

                        $sql = "SELECT * from  jobs GROUP BY company";

                        $result = mysqli_query($conn, $sql);
                        if ($result) {
                          while ($row = mysqli_fetch_array($result)) {


                            $company = $row['company'];
                            $country = $row['country'];
                            $quantity = $row['quantity'];
                            $supply = $row['supplied'];
                            $date = $row['date_created'];
                           


                        ?>

                            <tr>
                              <td><?php echo $company; ?></td>
                              <td><?php echo $country; ?></td>
                              <td><?php echo $quantity; ?></td>
                              <td><?php echo $supply; ?></td>
                              <td><?php echo $date; ?></td>
                             


                            </tr>
                        <?php    }
                        } else {
                          echo "<script> alert('Error', 'No Record Found!', ' error'); </script>";
                        } ?>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->

                <div class="row">
                  <!-- accepted payments column -->

                  <!-- /.col -->
                  <div class="col-6">
                    <p class="lead"><b>Supply Summary</b></p>

                    <div class="table-responsive">

                      <table class="table">
                        <?php
                       

                        $sql = "SELECT sum(quantity) AS qty from jobs";
                        $result = mysqli_query($conn, $sql);
                        if ($result) {
                          while ($row = mysqli_fetch_array($result)) {
                            $total = $row['qty'];
                        ?>
                            <tr>
                              <th>Total Requests</th>
                              <td><?php echo $total; ?></td>
                            </tr>
                        <?php
                          }
                        } else {
                          echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                        }
                        ?>

                        <?php
                        $sql = "SELECT SUM(supplied) AS supply from  jobs";
                        $result = mysqli_query($conn, $sql);
                        if ($result) {
                          while ($row = mysqli_fetch_array($result)) {
                            $supply = $row['supply'];
                        ?>
                            <tr>
                              <th>Total Supplied:</th>
                              <td><?php echo $supply; ?> </td>
                            </tr>

                        <?php
                          }
                        } else {
                          echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                        }
                        ?>
                      </table>
                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->

                <!-- this row will not appear when printing -->
                <div class="row ">
                  <div class="col-12">
                    <small>press (ctrl+p) to print sheet</small>
                  </div>
                </div>
              </div>
              <!-- /.invoice -->
            </div><!-- /.col -->
          </div><!-- /.row -->
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
</body>

</html>