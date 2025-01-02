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
  <title>Clients | Timelime | progress monitor</title>

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
              <h1>Timelime</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Update timeline</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
      

      <div class="modal fade" id="mdtime">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header" style="background-color:#343A40;">
              <h4 class="modal-title" style="color: white;"><i class="fa fa-clock" style="color: white;"></i> Create timline</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
               <!-- /.col -->
          <div class="col-md-12">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Compose New Timelime</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form method="post" id="timeline">
                <div class="form-group">
                  <input class="form-control tftittle" name="tittle" placeholder="Tittle:">
                </div>
                <div class="form-group">
                  <select name="destination" class="form-control select2bs4 tfdestination"  multiple="multiple" data-placeholder="Destination:">
                 
                            <option value="Malta"> Malta</option>
                            <option value="Hungary">Hungary</option>
                            <option value="Romania">Romania</option>
                            <option value="Moldova">Moldova</option>
                            <option value="Mauritius">Mauritius</option>
                  </select>
                </div>
                <div class="form-group">
                    <textarea id="compose-textarea" name="description" placeholder="Comment here" class="form-control tfdescription" style="height: 300px">
                     
                    
                    </textarea>
                </div>

                  
                 <div class="form-group" >
                  <input type="hidden" class="form-control col-md-4 tfpass">  <input type="hidden" class="form-control col-md-4 tfclient">
                 </div>              
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                 
                  <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
                </div>
                <button type="reset" class="btn btn-default " data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
              </div>
              </form>
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
            <h3 class="card-title">Update Client timeline</h3>
          </div>
          <div class="card-body">

            <table class="table table-hover border-stripped" id="example1">
          
              <thead>
             
                <tr>
                  <th hidden>ID</th>
                  <th>Passport No.</th>
                  <th>Client</th>
                  <th>Destination</th>
                  <th>Last_updated</th>
                  <th><i class="fa fa-bars"></i></th>
                </tr>
              </thead>
              <?php
                include_once('connect.php');
                $sql = "SELECT * from  timeline GROUP BY passport_number";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                  while ($row = mysqli_fetch_array($result)) {
                    
                    $id = $row['id'];
                    $passportnumber = $row['passport_number'];
                    $client = $row['client'];                    
                    $destination = $row['destination'];
                    $message = $row['tittle'];
                    $date = $row['date'];
                
                ?>
              <tbody>
                <tr>
                  <td hidden><?php echo $id ?></td>
                  <td><a href="timeline.php? psn=<?php echo $passportnumber ?> & name=<?php echo $client; ?> && mid=<?php $eid = $_GET['mid']; echo $eid;  ?>"><?php echo $passportnumber; ?></a></td>
                  <td><a href="timeline.php? psn=<?php echo $passportnumber ?> & name=<?php echo $client; ?> && mid=<?php $eid = $_GET['mid']; echo $eid;  ?>" class="text-muted"><?php echo $client; ?></a></td>
                  <td><?php echo $destination; ?></td>
                  <td><?php echo $date ?></td>
                  <td>
                    <a class="text-muted tdedit" title="add timeline" data-toggle="modal" data-target="#mdtime"><i class="fa fa-edit"></i> </a>
                    
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

  <?php include_once('validate_timeline.php'); ?>

  <script>
  $(function () {
    //Add text editor
    $('#compose-textarea').summernote()
  })
</script>
</body>

</html>