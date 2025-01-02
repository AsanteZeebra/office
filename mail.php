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
    <title>Email </title>

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
                            <h1 style="padding-left: 50px;">Compaose Email</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">mail</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
           
             <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       
      
      <div class="col-md-12" style="padding-left: 70px; padding-right:70px;">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Compose New Message</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="form-group">
                  <input class="form-control" placeholder="To:">
                </div>
                <div class="form-group">
                  <input class="form-control" placeholder="Subject:">
                </div>
                <div class="form-group">
                    <textarea id="compose-textarea" class="form-control" style="height: 300px">
                     
                    </textarea>
                </div>
                <div class="form-group">
                  <div class="btn btn-default ">
                    <i class="fas fa-paperclip"></i> Attachments
                    <input type="file" name="attachment" multiple >
                  </div>
                 
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                 
                  <button type="submit" class="btn btn-primary"><i class="far fa-envelope"></i> Send mail</button>
                </div>
                </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
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
        $(function() {
            //Add text editor
            $('#compose-textarea').summernote()
        })
    </script>
</body>

</html>