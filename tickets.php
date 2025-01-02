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
    <title>Clients | Tickets </title>

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
                            <h1>Client Tickets</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Tickets</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="modal fade" id="mdquestion" style="margin-top: 15%;">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete Bookings <i class="fa fa-question"></i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <button class="btn btn-info" data-dismiss="modal">No</button>
                                    <button class="btn btn-danger mdel">Yes</button>
                                </center>
                                <form method="post">
                                    <input type="hidden" class="form-control tfid">
                                </form>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!-- Default box -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ticket</h3>
                    </div>
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="nobuttons">
                            <thead>
                                <tr>
                                    <th hidden>ID</th>
                                    <th>Client</th>
                                    <th>Passport_number</th>
                                    <th>Destination</th>
                                    <th>flight_number</th>
                                    <th>departure_date</th>
                                    <th><i class="fa fa-bars"></i></th>
                                </tr>
                            </thead>
                            <?php
                            $sql = "SELECT * from  ticket";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {
                                    $client = $row['client'];
                                    $passport_number = $row['passport_number'];
                                    $destination = $row['destination'];
                                    $flight = $row['flight_number'];
                                    $departure_date = $row['departure_date'];

                                    $id = $row['id'];
                                     ?>
                                    <tbody>
                                        <tr>
                                            <td hidden><?php echo $id; ?></td>
                                            <td><?php echo $client; ?></td>
                                            <td><?php echo $passport_number; ?></td>
                                            <td><?php echo $destination; ?></td>
                                            <td><?php echo $flight; ?></td>
                                            <td><?php echo $departure_date; ?></td>

                                            <td>
                                                <a class="text-muted tdedit" data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i> </a>

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
    <?php include('validate_bookings.php'); ?>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>