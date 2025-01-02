<?php include_once('connect.php'); ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sms </title>

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
                            <h1 style="padding-left: 50px;">Read Messages</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">smsbox</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        
                    <div class="card card-primary col-md-12">
   
                    <div class="card-header mailbox-read-info">
                <h5>Sms Notification</h5>
                <h6>From:Zeebra Office
                  <span class="mailbox-read-time float-right" style="color: white;"><?php echo $date_created = date("Y-M-jS"); ?></span> <span class="float-right"></h6>
              </div>
              <!-- /.mailbox-read-info -->

                    <!-- /.col -->
                        <div class="card-body">
          
             
              <!-- /.mailbox-controls -->
              <div class="mailbox-read-message">
              <?php 
              include_once('connect.php');
            
              $id = $_GET['id'];
              $sql = "SELECT * FROM sms WHERE id='$id'";
              $run = mysqli_query($conn,$sql);

              if($run){
                while($row =mysqli_fetch_assoc($run)){
                  $message = $row['message'];
                }
              }else{
                echo "NO DATA FOUND";
              }
            
              
              ?>
                <p><?php echo $message; ?></p>

              </div>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.card-body -->
            </div>
            <!-- /.card-footer -->
            <div class="card-footer">
             
              <button type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i> Delete</button>
             
            </div>
            <!-- /.card-footer -->
          </div>
          <!-- /.card -->
        </div>
 <!-- /.col -->
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