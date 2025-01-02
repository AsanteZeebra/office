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
    <title>Manage Job Requests </title>

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
                            <h1>Clients Supply List</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Supply list</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                

                <div class="modal fade" id="mdsupply">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header" style="background-color:#343A40;">
                                <h4 class="modal-title" style="color: white;"><i class="fa fa-chart-bar" style="color: white;"></i> Record Job Supply</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- /.col -->
                                <div class="col-md-12">
                                    <div class="card card-primary card-outline">
                                        <div class="card-header">
                                            <h3 class="card-title"> Client Suplly </h3>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">

                                            <form method="POST" id="supply">

                                                <div class="form-group">
                                                    <label for="text">Agent name</label>
                                                    <input type="text" name="agent" class="form-control agent" placeholder="Enter Agent Name" readonly>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Country</label>
                                                            <input type="text" name="country" class="form-control tfcountry" placeholder="Enter Country" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Job Tittle</label>
                                                            <input type="text" name="tittle" class="form-control tftittle" placeholder="Enter job tittle" readonly>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Demanded</label>
                                                            <input type="number" name="demand" class="form-control tfdemand" placeholder="Enter quantity demanded" readonly>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Supplied</label>
                                                            <input type="number" name="supply" class="form-control tfsupply" placeholder="Enter quantity supplied">
                                                        </div>
                                                    </div>


                                                </div>
                                                <input type="hidden" class="form-control tfcode" >
                                              </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <div class="float-right">
                                                <button type="submit" class="btn btn-primary"> submit</button>
                                            </div>
                                            <button type="reset" class="btn btn-default " data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                                            </form>
                                        </div>

                                        <!-- /.card-footer -->
                                    </div>
                                    <!-- /.card -->
                                </div>
                                <!-- /.col -->
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
                        <h3 class="card-title">Agent Supplies</h3>
                        
                    </div>
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="nobuttons">

                            <thead>

                                <tr>
                                    <th hidden>ID</th>
                                    <th>Company</th>
                                    <th>Country</th>
                                   
                                    <th>Demanded</th>
                                    <th>Supllied</th>
                                    <th><i class="fa fa-bars"></i></th>
                                </tr>
                            </thead>
                            <?php
                            $sql = "SELECT * from  jobs";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {

                                    $company = $row['company'];
                                    $country = $row['country'];
                                   
                                    $quantity = $row['demand'];
                                   $supplied = $row['supplied'];
                                    $id = $row['id'];
                            ?>
                                    <tbody>
                                        <tr>
                                            <td hidden><?php echo $id; ?></td>
                                            <td><?php echo $company; ?></td>
                                            <td><?php echo $country; ?></td>
                                            
                                            <td><?php echo $quantity; ?></td>
                                            <td><?php echo $supplied; ?></td> 
                                           
                                            
                                            <td>
                                                <a class="text-muted tdsupply"><i class="fa fa-edit" data-toggle="modal" data-target="#mdsupply"></i> </a> 

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
    <script src="validate_supply.js"></script>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>