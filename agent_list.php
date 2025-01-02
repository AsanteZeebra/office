<?php
include_once('load_session.php');
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

                <div class="modal fade" id="mdquestion" style="margin-top: 15%;">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete Agent <i class="fa fa-question"></i></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                
                                <center>
                                    <button class="btn btn-info" data-dismiss="modal">No</button>
                                    <button class="btn btn-danger delbtn">Yes</button>
                                </center>
                                <form method="post" hidden>
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
                              <textarea  cols="30" rows="5" name="address" class="form-control tfaddress" placeholder="Address"></textarea>
                               </div>
                               </div>
                               
                               <input hidden readonly type="text" class="form-control dd">
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

                
                
                <div class="modal fade" id="mdedit">
                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" style="width: 100%; text-align: center;"> Edit Agent Profile </h5>
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
                               <input type="text" placeholder="Name" name="agentname" class="form-control tfagent1">
                               </div>
                               </div>


                               <div class="col-md-12">
                               <div class="form-group">   
                               <label for="">Business name </label>
                               <input type="text" placeholder="Business Name" name="business" class="form-control tfbusiness1">
                               </div>
                               </div>


                               <div class="col-md-6">
                               <div class="form-group">   
                               <label for="">Email</label>
                               <input type="text" placeholder="Email" name="email" class="form-control tfmail1">
                               </div>
                               </div>

                               <div class="col-md-6">
                               <div class="form-group">   
                               <label for="">Telephone</label>
                               <input type="text" placeholder="Telephone" name="telephone" class="form-control tfphone1">
                               </div>
                               </div>

                               <div class="col-md-12">
                               <div class="form-group">   
                               <label for="">Address</label>
                              <textarea name="" id="" cols="30" rows="5" name="address" class="form-control tfaddress1" placeholder="Address"></textarea>
                               </div>
                               </div>

                               <input type="text" hidden readonly class="form-control agid" >
                                       
                            </div>

                            <div>
                            <center><button class="btn btn-primary btn-sm upbtn" type="button" style="width:100%;">Save changes</button></center>
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
                    <div class="card-body">
                     <a href="agents.php?mid=<?php $mail = $_GET['mid']; echo $mail; ?>" type="button" class="btn btn-outline-primary btn-sm" style="float:left;"><i class="fa fa-contact-card"></i>Agents Profile</a>   <button class="btn btn-primary btn-sm" style="float:right;" data-toggle="modal" data-target="#mdform" ><i class="fa fa-plus"></i> Register</button>
                   
                   <br><br><br>
    
                <table class="table table-hover" id="example1">
                    <thead >
                        <th>Image</th>
                        <th>Agent_id</th>
                        <th>Agent_name</th>
                        <th>Email</th>
                        <th>Telephone</th>
                       
                        <th><i class="fa fa-bars"></i></th>
                    </thead>
                    <tbody>
                    <?php 
            

                $sql1 = "SELECT * FROM agents";
                $run = mysqli_query($conn,$sql1);

                if($run){
                    while($row = mysqli_fetch_assoc($run)){
                   ?>
             <tr>
                <td><img src="uploads/ic2.png" alt="" style="width: 50px; height: 50px; border: radius 500px;"></td>
             <td><?php echo $row['agent_id'] ?></td>
              <td><?php echo $row['agent_name'] ?></td>
              <td><?php echo $row['email'] ?></td>
              <td><?php echo $row['telephone'] ?></td>
             
              <td> <button class="btn btn-outline-primary btn-sm btedit" data-toggle="modal" data-target="#mdedit"><i class="fa fa-edit"></i></button> <button class="btn btn-outline-danger btn-sm btdel" data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i></button></td>
        
             </tr>
        <?php 
              }
            }else{
                echo 'NO DATA FOUND';
            }
            
              
              ?>
                
            </tbody>
                </table>
                    </div>
                </div>
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