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
    <title>Permits & Visas </title>

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
                            <h1>Permits & Visas</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Permits&Visas</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <div class="modal fade" id="mdquestion">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete Record <i class="fa fa-question"></i></h5>
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

                <div class="modal fade" id="mdpay">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title"><i class="fa fa-passport"></i> Permits & Visas</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- /.col -->
                                <div class="col-md-12">
                                    <div class="card card-primary card-outline">
                                        <div class="card-header">
                                            <h3 class="card-title">Permits & Visas</h3>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">

                                            <form method="POST" id="pnv">

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="client">Client</label>
                                                            <select name="client" id="" class="form-control select2bs4 tfclient" data-placeholder="Choose Client">
                                                                <option value=""></option>
                                                                <?php
                                                                $query = "SELECT * FROM clients";
                                                                $execute = mysqli_query($conn, $query);
                                                                if ($execute) {
                                                                    while ($row = mysqli_fetch_array($execute)) {
                                                                        $name = $row['fullname'];

                                                                ?>
                                                                        <option value="<?php echo  $name; ?>"><?php echo  $name; ?></option>
                                                                <?php
                                                                    }
                                                                } else {
                                                                    echo "No data found";
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="">Company</label>
                                                                <select name="company" class="form-control select2bs4 tfcompany" data-placeholder="Choose company">
                                                                    <option value=""></option>
                                                                    <?php
                                                                    $query = "SELECT * FROM jobs";
                                                                    $execute = mysqli_query($conn, $query);
                                                                    if ($execute) {
                                                                        while ($row = mysqli_fetch_array($execute)) {
                                                                            $name = $row['company'];

                                                                    ?>
                                                                            <option value="<?php echo  $name; ?>"><?php echo  $name; ?></option>
                                                                    <?php
                                                                        }
                                                                    } else {
                                                                        echo "No data found";
                                                                    }
                                                                    ?>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label for="">Skill</label>
                                                                <input type="text" name="skill" class="form-control tfskill" placeholder="Skill">
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="client">Passport No.</label>
                                                            <select name="passport" id="" class="form-control select2bs4 tfpass" data-placeholder="Passport No.">
                                                                <option value=""></option>
                                                                <?php
                                                                $query = "SELECT * FROM clients";
                                                                $execute = mysqli_query($conn, $query);
                                                                if ($execute) {
                                                                    while ($row = mysqli_fetch_array($execute)) {
                                                                        $name = $row['fullname'];
                                                                        $pass = $row['passport_number'];

                                                                ?>
                                                                        <option value="<?php echo  $pass; ?>"><?php echo  $name; ?>: <?php echo  $pass; ?></option>
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
                                                            <label for="client">Destination</label>
                                                            <select name="destination" id="" class="form-control select2bs4 tfdestination" data-placeholder="Choose destination">
                                                                <option value=""></option>
                                                                <option value="Malta"> Malta</option>
                                                                <option value="Hungary">Hungary</option>
                                                                <option value="Romania">Romania</option>
                                                                <option value="Moldova">Moldova</option>
                                                                <option value="Mauritius">Mauritius</option>
                                                            </select>
                                                        </div>
                                                    </div>


                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="client">Permit</label>
                                                            <select name="permit" id="" class="form-control select2bs4 tfpermit" data-placeholder="Choose">
                                                                <option value=""></option>
                                                                <option value="Yes"> Yes</option>
                                                                <option value="No">No</option>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="client">Visa</label>
                                                            <select name="visa" id="" class="form-control select2bs4 tfvisa" data-placeholder="Choose ">
                                                                <option value=""></option>
                                                                <option value="Yes"> Yes</option>
                                                                <option value="No">No</option>

                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
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
                <div class="card card-primary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">Permits & Visas</h3>
                        <button class="btn btn-primary btn-sm" style="float:right;" data-toggle="modal" data-target="#mdpay"><i class="fa fa-plus"></i> Record</button>
                    </div>
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="nobuttons">

                            <thead>

                                <tr>
                                    <th hidden>ID</th>
                                    <th>Client</th>
                                    <th>Destination</th>
                                    <th>Company</th>
                                    <th>Skill</th>
                                    <th>Permit</th>
                                    <th>Visa</th>

                                    <th><i class="fa fa-bars"></i></th>
                                </tr>
                            </thead>
                            <?php
                            $sql = "SELECT * from  docs";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {
                                    $client = $row['client'];
                                    $company = $row['company'];
                                    $country = $row['destination'];
                                    $skill = $row['skill'];
                                    $permit = $row['permit'];
                                    $visa = $row['visa'];

                                    $id = $row['id'];
                            ?>
                                    <tbody>
                                        <tr>
                                            <td hidden><?php echo $id; ?></td>
                                            <td><?php echo $client; ?></td>
                                            <td><?php echo $country; ?></td>
                                            <td><?php echo $company; ?></td>
                                            <td><?php echo $skill; ?></td>
                                            <?php if ($permit == "Yes") {
                                                echo "<td> <i class='fa fa-check-circle' style='color:green;'> </i> </td>";
                                            } else {
                                                echo "<td > <i class='fa fa-times' style='color:red';> </i> </td>";
                                            }
                                            ?>

                                            <?php if ($visa == "Yes") {
                                                echo "<td> <i class='fa fa-check-circle' style='color:green;'> </i> </td>";
                                            } else {
                                                echo "<td > <i class='fa fa-times' style='color:red';> </i> </td>";
                                            }
                                            ?>

                                            <td>
                                                <a class="text-muted tdel" data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i> </a>

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
    <?php include_once('validate_docs.php'); ?>



    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>