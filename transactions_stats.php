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
    <title>Clients | Transactions Stats</title>

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
                            <h1>Transactions <i class="fa fa-chart-line"></i></h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Payment</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">


                <!-- Default box -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title"> Transactions</button></h3>
                         
                        <?php 
                        include_once('connect.php');

                        $sql = "SELECT SUM(amount) AS amount from payment WHERE currency ='¢'";
                        $execute = mysqli_query($conn,$sql);
                        if($execute){
                            while($row = mysqli_fetch_assoc($execute)){

                                echo "<h6 class='card-tittle' style='float:right;'>Total(¢): $row[amount].00 </h6>";
                            }
                        }
                        ?>
                    </div>
                    <div class="card-body">
                        <?php
                        

                        $years = date('Y');
                        
                        

                        $query = $conn->query("SELECT month AS monthly, SUM(amount) AS amount, currency AS currency FROM payment WHERE year='$years' GROUP BY month");

                        foreach ($query as $data) {

                            $month[] = $data['monthly'];

                            $amount[] = $data['amount'];

                            $currency[] = $data['currency'];

                           
                            

                        }
                        ?>
                        <canvas id="bar" style="max-width: 100%; height: 350px;"></canvas>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <!-- Footer content here -->
                    </div>
                    <!-- /.card-footer-->
                </div>
                <!-- /.card -->

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
    <script src="verify.js"></script>
    <?php include_once('transchart.php'); ?>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>