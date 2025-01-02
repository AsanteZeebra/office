<?php

include_once('load_session.php');

include_once('connect.php');


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Passports | Clients </title>

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
              <h1 class="m-0">Passports</h1>

            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">passports</li>

              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">

          <!-- /col -->
          <div class="row">
          <?php
            $sql = "SELECT count(*) as total FROM passports";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $total = $row['total'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
          <!-- /Col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-info"><i class="fa fa-passport"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Total Passports</span>
                  <span class="info-box-number"><?php echo $total; ?></span>
                </div>
              </div>
            </div>

            <?php
            $sql = "SELECT count(*) as vs FROM passports";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $visa = $row['vs'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <!-- /col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-success"><i class="fa fa-check-square"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Valid Passports</span>
                  <span class="info-box-number"><?php echo $visa; ?></span>
                </div>
              </div>
            </div>

            <?php
            $sql = "SELECT count(*) as pm FROM passports WHERE status='Collected'";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $permit = $row['pm'];
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <!-- col -->
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-warning"><i class="fa fa-handshake" style='color:white'></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Collected Passports</span>
                  <span class="info-box-number"><?php echo $permit; ?></span>
                </div>
              </div>
            </div>
            <!-- /.col -->
            
            <?php

$current_date = date("Y-M-j");

            $sql = "SELECT COUNT(*) as nm FROM passports WHERE status='Expired' ";
            $result = mysqli_query($conn, $sql);
            if ($result) {
              while ($row = mysqli_fetch_array($result)) {

                $exp = $row['nm'];

                
              }
            } else {
              echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
            }

          ?>
            <div class="col-md-3 col-sm-6 col-12">
              <div class="info-box">
                <span class="info-box-icon bg-danger"><i class="fa fa-times"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Expired Passports</span>
                  <span class="info-box-number"><?php echo $exp; ?></span>
                </div>
              </div>
            </div>


            

            <div class="card" style="width:100%">
              <div class="card-header">
                <h3 class="card-title">All Passports</h3>
             
            </div>
              <!-- /.card-header -->
              <div class="card-body">

                <table id="example1" class="table table-hover table-striped">
                  <thead style="text-align: center;">
                    <tr>
                      <th>Passport No.</th>
                      <th>Name:</th>
                      <th>Nationality</th>
                      <th>Issue_date</th>
                      <th>Expiry_date</th>
                      <th>Telephone</th>
                      <th>Status</th>
                      <th><i class="fa fa-bars"></i></th>
                     
                    </tr>
                  </thead>
                 
                      <tbody style="text-align:center;">
                      <?php
                            $sql = "SELECT * from  passports";
                            $result = mysqli_query($conn, $sql);
                            if ($result) {
                                while ($row = mysqli_fetch_array($result)) {

                                   $passport_no = $row['passport_number'];
                                    $fullname = $row['fullname'];
                                    $nationality = $row['nationality'];
                                    $issuedate = $row['issue_date'];
                                    $expirydate = $row['expiry_date'];
                                    $telephone = $row['telephone'];
                                    $status = $row['status'];

                                  
                            ?>
                       <tr>
           <td><?php echo $passport_no; ?> </td>
           <td><?php echo $fullname; ?></td>
           <td><?php echo $nationality; ?></td>
           <td><?php echo $issuedate; ?></td>
           <td><?php echo $expirydate; ?></td>
           <td><?php echo $telephone; ?></td>

        <?php if($status === 'Yes'){
          echo " <td><i class='fa fa-circle' style='color:#17CB53'></i> Active</td>";
        }elseif ($status === 'Collected') {
          echo " <td><i class='fa fa-circle' style='color:#FFD14F'></i> Collected</td>";
        }elseif ($status ==='expired') {
          echo " <td><i class='fa fa-circle' style='color:#E44032'></i> Expired</td>";
        }else{
          echo " <td><i class='fa fa-times' style='color:red'></i> Not Found</td>";
        }
        
        ?>
        <td><a href="#" class="btn btn-primary btn-sm"><i class="fa fa-handshake"></i> Collect</a> <a href="#" class="btn btn-danger btn-sm"><i class="fa fa-handshake"></i> Return</a> </td>
          

                       </tr>
                       <?php   
                                
                              }
                         } else {
                             echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
                         } 

                         ?>
                      </tbody>

                </table>
              </div>
              <!-- /.card-body -->


            </div>


            <!-- col -->


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
  <?php include_once('validate_status.php'); ?>
  <?php include_once('charts.php'); ?>

  <script>
    $('.tdstat').on('click', function() {
      $('#mdstat').modal('show');

      $tr = $(this).closest('tr');

      var data = $tr.children("td").map(function() {
        return $(this).text();
      }).get();

      console.log(data);


      var pass = $('.mdpass').val(data[0]);
      var client = $('.mdclient').val(data[1]);
    })
  </script>
</body>

</html>