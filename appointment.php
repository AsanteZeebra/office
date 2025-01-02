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
    <title>Clients | Appointment </title>

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
                            <h1>Client Appointment</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Appointment</li>
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
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete Appointment <i class="fa fa-question"></i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <button class="btn btn-info" data-dismiss="modal">No</button>
                                    <button class="btn btn-danger delbtn">Yes</button>
                                </center>
                                <form method="post">
                                    <input type="" hidden class="form-control tfid">
                                </form>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                
                    <div class="modal fade" id="mdstat" style="margin-top: 15%;">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;">Change status</i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                
                                <form method="post">
                                    <input type="text" hidden class="form-control tfidd">
                                     <input type="text" hidden  class="form-control apclient">
                                      <input type="text" hidden  class="form-control apreference">
                                      <input type="text" hidden  class="form-control apmail">
                                      <input type="text" hidden  class="form-control apdate">
                                      <input type="text"  hidden class="form-control aptime">
                                      
                                       <div class="row">
                                    
                              <div class="col-md-8">
                                  
                                <div class="form-group"> 
                                <select class="form-control tfstatus">
                                    <option value="">-select-</option>
                                <option value="Rescheduled">Rescheduled</option>
                                <option value="Cancelled">Cancelled</option>
                                <option value="Pending">Pending</option>
                                <option value="Attended">Attended</option>
                                </select>
                                </div>
                              </div>
                                  
                                  
                                   <div class="col-md-4"> <button type="button" class="btn btn-primary changebtn">Change</button></div>  
                                </div>
                                <div class="row">
                                    
                                    <div class="col-md-6" >
                                        <div class="form-group">
                                            <input type="date" class="form-control rdate">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6" >
                                        <div class="form-group">
                                            <input type="time" class="form-control rtime" >
                                        </div>
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

                

                <div class="modal fade" id="mdappoint">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header" style="background-color:#343A40;">
                                <h4 class="modal-title" style="color: white;"><i class="fa fa-calenda" style="color: white;"></i> Appointment</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- /.col -->
                                <div class="col-md-12">
                                    <div class="card card-primary card-outline">
                                        <div class="card-header">
                                            <h3 class="card-title">Create Appointment </h3>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">

                                            <form method="POST" id="appoint">

                                                <div class="form-group">
                                                    <label for="text">Client / Customer Name</label>
                                                    <input class="form-control tfclient" placeholder="Client / Customer">
                                                       
                                                    </select>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Telephone</label>
                                                            <input class="form-control tfpass" name="passport" placeholder="Telephone">
                                                           
                                                        </div>
                                                    </div>

                                                   <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="">Email</label>
                                                        <input type="text" name="embassy" class="form-control tfmail" placeholder="Email">
                                                    </div>
                                                   </div>
                                                </div>
                                               
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="">Reason of appointment</label>
                                                            <textarea class="form-control tfvisa" name="visa" col="50" placeholder="type here"></textarea>
                                                            
                                                           
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                     <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Appointment Date</label>
                                                            <input type="date" name="date" class="form-control tfdate">
                                                        </div>
                                                    </div>
                                                    
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">time</label>
                                                            <input type="time" class="form-control tfdestination">
                                                        </div>
                                                    </div>

                                                   
                                                    
                                                    
                                                </div>
                                                
                                                
                                           <input type="text" name="ref" hidden class="form-control dd">
                                               
                                                
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <div class="float-right">

                                                <button type="submit" class="btn btn-primary"> Submit appointment</button>
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
                        <h3 class="card-title">Client Appointment</h3>
                        <button class="btn btn-primary btn-sm" style="float:right;" data-toggle="modal" data-target="#mdappoint"><i class="fa fa-plus"></i> Add Appointment</button>
                    </div>
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="example1">

                            <thead>

                                <tr>
                                    <th hidden>ID</th>
                                     <th>#ID</th>
                                    <th>Client</th>
                                    <th>Telephone</th>
                                    <th>Email</th>
                                    <th>Appointment_time</th>
                                    <th>Appointment_date</th>
                                    <th> </th>
                                   
                                    <th><i class="fa fa-bars"></i></th>
                                </tr>
                            </thead>
                           
                                    <tbody>
                                         <?php
                             $date_created = date("Y-m-d");
                             
                            $sql = "SELECT * from  appointment where appointment_date='$date_created'";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {

                                    $id = $row['id'];
                                    $client = $row['client'];
                                     $telephone = $row['telephone'];
                                    $email = $row['mail'];
                                    $apptime = $row['aptime'];
                                    $appointment_date = $row['appointment_date'];
                                    $status = $row['status'];
                                    $ref = $row['reference'];

                            ?>
                                        <tr>
                                             <td><?php echo $ref; ?></td>
                                            <td hidden><?php echo $id; ?></td>
                                            <td><?php echo $client; ?></td>
                                            <td><?php echo $telephone ?></td>
                                            <td><?php echo $email; ?></td>
                                            <td><?php echo $apptime; ?></td> 
                                            <td><?php echo $appointment_date;?></td>
                                           <?php if($status === "Booked"){
                                               echo "<td data-toggle='modal' data-target='#mdstat' class='tdedit'> <a><label class='badge badge-success'> Booked </label></a> </td>";
                                           }else if($status === "Cancelled"){
                                               echo "<td data-toggle='modal' data-target='#mdstat' class='tdedit' > <label class='badge badge-danger'>Cancelled</label> </td>";
                                           }else if($status === "Attended"){
                                            echo "<td data-toggle='modal' data-target='#mdstat' class='tdedit' > <label class='badge badge-success'>Attended</label> </td>";
                                           }else{
                                                echo "<td data-toggle='modal' data-target='#mdstat' class='tdedit' > <label class='badge badge-warning'>Pending</label> </td>";
                                           }
                                           
                                           ?>
                                           
                                         
                                            <td>
                                          <a class="text-muted" > <i class="fa fa-edit"></i> </a> <a class="text-muted tddel" data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i> </a>

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
    <?php include_once('validate_appointment.php') ?>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>