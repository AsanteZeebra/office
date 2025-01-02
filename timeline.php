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
  <title>Clients </title>

  <?php include_once('head.php'); ?>


</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!-- Preloader -->
    <?php include_once('preloader.php'); ?>

    <!-- Navbar -->
    <?php include_once('navbar.php'); ?>

    <!-- Main Sidebar Container -->
    <?php include_once('sidebar.php');  ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0"> <?php $name = $_GET['name'];
                                echo $name; ?>'s Timelime</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Timelime</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">

          <div class="modal fade" id="mdquestion">
            <div class="modal-dialog modal-sm">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete payment <i class="fa fa-question"></i></h5>
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


          <div class="modal fade" id="mdd">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header" style="background-color:#343A40;">
                  <h4 class="modal-title" style="color: white;"><i class="fa fa-pen" style="color: white;"></i> Timeline</h4>
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
                            <select name="destination" class="form-control select2bs4 tfdestination" multiple="multiple" data-placeholder="Destination:">
                              <option value="USA">USA</option>
                                                                <option value="Australia">Australia</option>
                                                                <option value="France">France</option>
                                                                <option value="Czech Republic">Czech Republic</option>
                                                                <option value="Portugal">Portugal</option>
                                                                <option value="Brazil">Brazil</option>
                                                                <option value="Nethaland">Nethaland</option>
                                                                <option value="Poland">Poland</option>
                                                                <option value="Germany">Germany</option>
                                                                <option value="Spain">Spain</option>
                                                                <option value="Croatia">Croatia</option>
                                                                 <option value="Singapore">Singapore</option>
                                                                <option value="Serbia">Serbia</option>
                                                                <option value="Colombia">Colombia</option>
                                                                <option value="South Africa">South Africa</option>
                                                                <option value="Malta">Malta</option>
                                                                <option value="Hungary">Hungary</option>
                                                                <option value="Romania">Romania</option>
                                                                <option value="Moldova">Moldova</option>
                                                                <option value="Mauritius">Mauritius</option>
                                                                <option value="Dubai">Dubai</option>
                                                                <option value="Qatar">Qatar</option>
                            </select>
                          </div>
                          <div class="form-group">
                            <textarea id="compose-textarea" name="description" placeholder="Comments here" class="form-control tfdescription" style="height: 300px"></textarea>
                          </div>
                          
                         <div class="form-group">
                          <input type="hidden" class="form-control psn" value="<?php $pass = $_GET['psn']; echo $pass; ?>"> <input type="hidden" class="form-control cname" value="<?php $name = $_GET['name']; echo $name; ?>">
                         </div>
                      </div>
                      <!-- /.card-body -->
                      <div class="card-footer">
                        <div class="float-right">

                          <button type="submit" class="btn btn-primary upbtn"><i class="fa fa-save"></i> Save changes</button>
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

          <!-- Timelime example  -->
          <div class="row">
            <div class="col-md-12">



              <!-- The time line -->
              <div class="timeline">
                <!-- timeline time label -->
                <div class="time-label">
                  <span class="bg-red">ID: <?php $pass = $_GET['psn'];
                                            echo $pass; ?></span> 
                                            <a href="" style="float:right; margin-right:15px;" class="text-muted" title="Create timeline" data-toggle="modal" data-target="#mdd"><i class="fa fa-plus"></i> New</a>
                </div>
                <!-- /.timeline-label -->
                <?php

                $id = $_GET['psn'];
                include_once('connect.php');
                $sql = "SELECT * from  timeline WHERE passport_number ='$id' ORDER BY id DESC";
                $result = mysqli_query($conn, $sql);
                if ($result) {
                  while ($row = mysqli_fetch_array($result)) {

                    $id = $row['id'];
                    $passportnumber = $row['passport_number'];
                    $client = $row['client'];
                    $destination = $row['destination'];
                    $message = $row['message'];
                    $date = $row['date'];
                    $tittle = $row['tittle'];

                ?>
                    <!-- timeline item -->
                    <div>
                      <i class="fas fa-check bg-green"></i>
                      <div class="timeline-item">
                        <button style="float: right; padding: 10px;" aria-label="Close" class="close" data-toggle="modal" data-target="#mdquestion"> <span aria-hidden="true" title="Click to delete timeline">&times;</span> </button>
                        <h3 class="timeline-header"><a> <?php echo $tittle; ?></a> <i class="fa fa-arrow-circle-right"></i> <?php echo $destination; ?></h3>
                        <input type="hidden" value="<?php echo $id; ?>" class="form-control mid">
                        <div class="timeline-body">
                         
                          <?php echo $message; ?>
                        </div>

                        <div class="timeline-footer">
                          <hr>
                          <span style="font-style: italic;"> Upated by: CMG_STAFF</span> <span class="time" style="float:right;">Updated@ <i class="fas fa-clock"></i> <?php echo $date; ?></span>
                        </div>
                      </div>
                    </div>
                    <!-- END timeline item -->
                    <!-- timeline item -->
                <?php




                  }
                } else {
                  echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                }
                ?>

                <div>
                  <i class="fa fa bg-green"></i>
                </div>




              </div>
            </div>
            <!-- /.col -->
          </div>

          <!-- /CONTENT END -->


          <!-- end of table -->
        </div>
    </div>
  </div>
  <!-- /.row -->
  </div>
  <!-- /.row -->

  </div>






  </div>
  <!-- /.row (main row) -->
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

  <?php include_once('validate_timeline2.php');?>

  <?php include_once('charts.php'); ?>
</body>

</html>