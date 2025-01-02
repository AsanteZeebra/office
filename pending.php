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
    <title>Clients | Forms </title>

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
                            <h1>Pending recieved forms</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Pending forms</li>
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
                                <h5 class="modal-title" style="width: 100%; text-align: center;">Do you want to approved <i class="fa fa-question"></i></h5>
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
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="example1">

                            <thead>

                                <tr>
                                    <th hidden>ID</th>
                                    <th>Client</th>
                                    <th>Destination</th>
                                    <th>Telephone</th>
                                    <th>Agent</th>
                                    <th>Status</th>
                                    
                                </tr>
                            </thead>
                           
                                    <tbody>
                                    <?php
                            $sql = "SELECT * from  clients WHERE approval='No' ORDER BY ID DESC";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {

                                    $id = $row['id'];
                                    $client = $row['fullname'];
                                    $destination = $row['country'];
                                    $telephone = $row['telephone'];
                                    $agent = $row['agent_id'];
                                    $stat = $row['approval'];
                                    
                            ?>
                                        <tr>
                                            <td hidden><?php echo $id; ?></td>
                                            <td><?php echo $client; ?></td>
                                            <td><?php echo $destination; ?></td>
                                            <td><?php echo $telephone; ?></td>
                                            <td><?php echo $agent; ?></td>
                                             <?php
                                             if($stat == 'No'){
                                                 echo "<td> <span class='badge badge-warning'>Pending Approval</span> </td>";
                                             }
                                             ?>
                                            
                                        </tr>
                                <?php   
                                
                                 }
                            } else {
                                echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                            } 
                            ?>
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
    <script src="verify.js"></script>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>