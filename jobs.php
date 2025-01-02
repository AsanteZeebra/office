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
    <title>Manage Demand List </title>

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
                            <h1>Agents Demand List</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">list</li>
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
                               
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- /.col -->
                                <div class="col-md-12">
                                    <div class="card card-primary card-outline">
                                        <div class="card-header">
                                            <h3 class="card-title">Agent records</h3>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">

                                            <form method="POST" id="job">

                                                <div class="form-group">
                                                    <label for="text">Agent Name</label>
                                                   <select class='form-control select2bs4 agent' name="agentname" data-placeholder="Agent Name"> 
                                                   <option value=""></option>
                                                   <?php 
                                                   include("connect.php");
                                                   
                                                  $sql = "SELECT * FROM agents";
                                                  $exec = mysqli_query($conn,$sql);
                                                  if($exec){
                                                      while($row = mysqli_fetch_array($exec)){
                                                          
                                                      
                                                   ?>
                                                   <option value"<?php echo $row['agent_name']; ?>"><?php echo $row['agent_name']; ?></option>
                                                  <?php 
                                                      }
                                                  }else{
                                                      echo "No Records Found";
                                                  }
                                                  ?>

                                                   </select>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Agency Name</label>
                                                            <select class='form-control select2bs4 tfcompany' name="company" data-placeholder="Agent Name"> 
                                                   <option value=""></option>
                                                   <?php 
                                                   include("connect.php");
                                                   
                                                  $sql = "SELECT * FROM agents";
                                                  $exec = mysqli_query($conn,$sql);
                                                  if($exec){
                                                      while($row = mysqli_fetch_array($exec)){
                                                   ?>
                                                   <option value="<?php echo $row['business_name']; ?>"><?php echo $row['business_name']; ?></option>
                                                  <?php 
                                                      }
                                                  }else{
                                                      echo "No Records Found";
                                                  }
                                                  ?>

                                                   </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Agent ID</label>
                                                            
                                                             <select class='form-control select2bs4 tfagentid' name="agentid" data-placeholder="Agent Identification Number"> 
                                                   <option value=""></option>
                                                   <?php 
                                                   include("connect.php");
                                                   
                                                  $sql = "SELECT * FROM agents";
                                                  $exec = mysqli_query($conn,$sql);
                                                  if($exec){
                                                      while($row = mysqli_fetch_array($exec)){
                                                          
                                                      
                                                   ?>
                                                   <option value="<?php echo $row['agent_id']; ?>"><?php echo $row['agent_id']; ?></option>
                                                  <?php 
                                                      }
                                                  }else{
                                                      echo "No Records Found";
                                                  }
                                                  ?>

                                                   </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Country</label>
                                                            <select class="form-control select2bs4 tfcountry" name="country" data-placeholder="Country">
                                                                <option vlaue=""></option>
                                                               <option value="Canada">Canada</option>
                                                                <option value="USA">USA</option>
                                                                <option value="Australia">Australia</option>
                                                                <option value="New Zealand">New Zealand</option>
                                                                <option value="France">France</option>
                                                                <option value="Cambodia">Cambodia</option>
                                                                <option value="Czech Republic">Czech Republic</option>
                                                                <option value="Singapore">Singapore</option>
                                                                 <option value="Armenia">Armenia</option>
                                                                <option value="Portugal">Portugal</option>
                                                                <option value="Brazil">Brazil</option>
                                                                <option value="Nethaland">Nethaland</option>
                                                                <option value="Poland">Poland</option>
                                                                <option value="Germany">Germany</option>
                                                                <option value="Spain">Spain</option>
                                                                <option value="Croatia">Croatia</option>
                                                                <option value="Serbia">Serbia</option>
                                                                <option value="Colombia">Colombia</option>
                                                                <option value="Malta">Malta</option>
                                                                <option value="Hungary">Hungary</option>
                                                                <option value="Romania">Romania</option>
                                                                <option value="Moldova">Moldova</option>
                                                                <option value="Mauritius">Mauritius</option>
                                                                <option value="Dubai">Dubai</option>
                                                                <option value="Qatar">Qatar</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Proposed No. of Clients</label>
                                                            <input type="number" name="quantity" class="form-control clients tfnumber" placeholder="Proposed Clients">
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

              <!---------- UPDATE AGENT SUPPLIES --------->
              
                              <div class="modal fade" id="mdedit">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                               
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- /.col -->
                                <div class="col-md-12">
                                    <div class="card card-primary card-outline">
                                        <div class="card-header">
                                            <h3 class="card-title">Update Agent Supplies</h3>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">

                                            <form method="POST" id="jb">

                                                       <input type="text" class="form-control agid" >

                                                <div class="form-group">
                                                    <label for="text">Agent Name</label>
                                                    <input class="form-control tfagent1">
                                                </div>

                                               

                                                <div class="row">
                                               

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Proposed</label>
                                                            <input type="text" class="form-control tfp" placeholder="demand">
                                                        </div>
                                                    </div>
                                                    
                                                     <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="">Supplied</label>
                                                            <input type="text" class="form-control sups" id="sups" placeholder="supply">
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
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Agent Records</h3>
                        <button class="btn btn-primary btn-sm" style="float:right;" data-toggle="modal" data-target="#mdpay"><i class="fa fa-plus"></i> Create record</button>
                    </div>
                    <div class="card-body">

                        <table class="table table-hover border-stripped" id="nobuttons">

                            <thead>

                                <tr style="text-align:center">
                                    <th >id</th>
                                    <th>Agent</th>
                                    <th>Country</th>
                                     <th>Agent_id</th>
                                    <th>Proposed</th>
                                    <th>Supplied</th>
                                   
                                    <th><i class="fa fa-bars"></i></th>
                                </tr>
                            </thead>
                            
                                    <tbody>
                                        <?php
                            $sql = "SELECT * from  jobs";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {                                                   
                                    $company = $row['company'];
                                    $country = $row['country'];
                                    $agent_id = $row['Identification_number'];
                                    $demand = $row['demand'];
                                    $supplied = $row['supplied'];
                                  
                                    
                                    $id = $row['id'];
                            ?>
                                        <tr style="text-align:center">
                                            <td ><?php echo $id; ?></td>
                                            <td><?php echo $company; ?></td>
                                            <td><?php echo $country; ?></td>
                                            <td><?php echo $agent_id; ?></td>
                                            <td><span class="badge badge-warning"><?php echo $demand; ?></span></td>
                                            <?php
                                            if($supplied == ""){
                                                echo "<td><span class='badge badge-danger'><?php echo $supplied; ?>0</span></td>";
                                            }else{
                                                echo "<td><span class='badge badge-success'><?php echo $supplied; ?></span></td>";
                                            }
                                            ?>
                                            
                                            <td>
                                            <a class="text-muted agedit" data-toggle="modal" data-target="#mdedit"><i class="fa fa-pen"></i> </a>
                                            <a class="text-muted " data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i> </a>

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
    <script src="validate_jobs.js"></script>


    <script>
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>