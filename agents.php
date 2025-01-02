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
    <title>Home | Agents </title>

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
                            <h1>Agents</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Agents</li>
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
                                    <input type="" id="tfid" class="form-control tfid">
                                </form>
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <div class="modal fade" id="mdform">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Register New Agent</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                            <form method="post" id="agform">
                            <div class="row">

                            <div class="col-md-12">
                               <div class="form-group">   
                               <label for="">Agent Name</label>
                               <input type="text" placeholder="Name" name="agentname" class="form-control tfagent">
                               </div>
                               </div>


                               <div class="col-md-12">
                               <div class="form-group">   
                               <label for="">Business name </label>
                               <input type="text" placeholder="Business Name" name="business" class="form-control tfbusiness">
                               </div>
                               </div>


                               <div class="col-md-6">
                               <div class="form-group">   
                               <label for="">Email</label>
                               <input type="text" placeholder="Email" name="email" class="form-control tfmail">
                               </div>
                               </div>

                               <div class="col-md-6">
                               <div class="form-group">   
                               <label for="">Telephone</label>
                               <input type="text" placeholder="Telephone" name="telephone" class="form-control tfphone">
                               </div>
                               </div>

                               <div class="col-md-12">
                               <div class="form-group">   
                               <label for="">Address</label>
                              <textarea name="" id="" cols="30" rows="5" name="address" class="form-control tfaddress" placeholder="Address"></textarea>
                               </div>
                               </div>
                               
                               
                            </div>

                            <div>
                            <center><button class="btn btn-primary btn-sm" type="submit" style="width:100%;">Submit</button></center>
                            </div>
                            </form>
                                
                            </div>

                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->


                
              <div class="row">
               <div class="col-md-12">
               <div class="card">
                    
                </div>
               </div>
              </div>
             <div class="col-md-12">
                <div class="row">

                <?php 
                include_once('connect.php');

                $sql1 = "SELECT * FROM agents";
                $run = mysqli_query($conn,$sql1);

                if($run){
                    while($row = mysqli_fetch_assoc($run)){


                
            echo "
                <div class='col-md-4'>
            <!-- Widget: user widget style 1 -->
            <div class='card card-widget widget-user'>
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class='widget-user-header bg-info'>
                
                <h3 class='widget-user-username'>  $row[agent_name]  </h3>
                <h5 class='widget-user-desc'>  $row[business_name] </h5>
               
              </div>
              <div class='widget-user-image'>
                <img class='img-circle elevation-2' src='uploads/ic2.png' alt='User Avatar'>
              </div>
              <div class='card-footer'>
                <div class='row'>
                  <div class='col-sm-4 border-right'>
                    <div class='description-block'>
                      <h5 class='description-header'><i class=''></i> Tel:</h5>
                      <span class=''> $row[telephone]</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class='col-sm-8'>
                    <div class='description-block'>
                      <h5 class='description-header'>Email:</h5>
                      <span class=''> $row[email] </span>
                      <br>
                      <br>
                      <h5 class='description-header'>ID:</h5>
                      <span class=''> $row[agent_id] </span>
                    </div>
                    <!-- /.description-block -->
                  </div>

                
                 
                </div>
                <!-- /.row -->

                
              </div>
            </div>
            <!-- /.widget-user -->
          </div>
        ";      


        
          }
        }else{
            echo 'NO DATA FOUND';
        }
        
          
          ?>
        
        
        </div>
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
    <?php include_once('validate_agent.php'); ?>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>