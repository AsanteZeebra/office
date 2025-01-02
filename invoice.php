<?php

session_start();


// Check if the user is logged in, if not then redirect him to login page
if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
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
    <title>Clients | Payment </title>

    <?php include_once('head.php'); ?>
</head>

<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <?php include_once('navbar.php'); ?>

        <?php include_once('sidebar.php'); ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Client's Transactions</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Transactions</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

            <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           

            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <b style="color:#FF1F1F;font-size: 50px;">Fremike</b> <b style="font-size: 50px;">Consult</b>
                    <small class="float-right"></small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-3 invoice-col">
                  From
                  <address>
                    <strong>Fremike Consult</strong><br>
                    Tebibiano Washingbay<br>
                    BushRoad, Accra - Ghana<br>
                    Phone: (233) 206817724<br>
                    Email: office@fremikeconsult.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-3 invoice-col">
                  To
                  <address>
                  <?php
                                                            $payment_id = $_GET['psn'];
                                                                $sql = "SELECT * from  payment WHERE id = '$payment_id'";
                                                                $result = mysqli_query($conn, $sql);
                                                                if ($result) {
                                                                    while ($row = mysqli_fetch_array($result)) {


                                                                      

                                                                ?>
                    <strong><?php echo $row['client']; ?></strong><br>
                    <b>Country:</b><?php echo $row['destination']; ?> <br>
                    <b>Mode of Payment:</b> <?php echo $row['payment_mode']; ?>(<?php echo $row['currency']; ?>)<br>
                    <b>Phone:</b> <?php echo $row['telephone'] ?><br>
                    <b>Email:</b> <?php echo $row['reference']; ?>
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-3 invoice-col">
                 <br>
                  <br>
                  <b>Transaction No.:</b> <?php echo $row['transaction_id']; ?><br>
                  <b>Payment Date:</b> <?php echo $row['date_created']; ?><br>
                  <b>Client/Agent #ID:</b> <?php echo $row['passport_number']; ?>
                </div>
              
                <!-- /.col -->
                <div class="col-sm-3 invoice-col">
                 <img src="uploads/lgg.png" alt="" style="width:120;height:120px">
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                     
                      <th>Country</th>
                      <th>Serial #</th>
                      <th>Description</th>
                      <th>Subtotal</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                     
                      <td><?php echo $row['destination']; ?></td>
                      <td><?php echo $row['transaction_id']; ?></td>
                      <td><?php echo $row['payfor']; ?> </td>
                      <td><?php echo $row['currency']; ?><?php echo number_format($row['amount'],2) ?></td>
                    </tr>
                  
                   
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Terms of Service:</p>
                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                  Any Amount paid for job placement confirmation documents and registration fee are non refundable after job placement documents has been secured for the client. We are not a visa processing office nor works with any Embassy for visa issuance therefore we cannot guarantee you a visa. It is only the Embassy that has the power to make a decision
                  </p> <br>
                  <?php
                  if($row['paytype'] ==='Receipt' && $row['status'] ==='Paid') {
                     echo "<h2 style='color:green'>Paid <i class='fa fa-check-circle'></i></h2>";
                 
                  }elseif ($row['paytype']==='Invoice') {
                    echo "<h2 style='color:#FFBE39'>Pending <i class='fa-solid fa-rotate'></i></h2>";
                  }elseif ($row['paytype']==='Receipt' && $row['status']==='Refunded') {
                    echo "<h2 style='color:red'>Refunded <i class='fa fa-check-circle'></i></h2>";
                  }
                  ?>


                </div>
             
                <!-- /.col -->
                <div class="col-6">
                  <p class="lead">Payment Breakdown</p>

                  <B class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td><?php echo $row['currency']; ?><?php echo number_format($row['amount'],2) ?></td>
                      </tr>
                      
                     
                      <tr>
                        <th>Total:</th>
                        <td><?php echo $row['currency']; ?><?php echo number_format($row['amount'],2) ?></td>
                      </tr>
                    </table>
                    <br>
                    <img src="uploads/sign.jpg" alt="sign" style="width:150px; margin-left:30%"><br>-------------------------------------------------------------------------------------------
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
              <?php
                                                                    }
                                                                } else {
                                                                    echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                                                                }
                                                                ?>
              <!-- this row will not appear when printing -->
              <div class="row no-print">
               
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div>
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
    


    <script>
  window.addEventListener("load", window.print());
</script>

</body>

</html>