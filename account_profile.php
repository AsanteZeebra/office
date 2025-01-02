<?php

session_start();
 
  
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>User Profile</title>

  <?php include_once('head.php'); ?>

</head>
<body class="hold-transition sidebar-mini">
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
            <h1>Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">User Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="uploads/ic2.png"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">Asante Michael</h3>
                 <center> <h6 class="text-muted"><?php $ml = $_GET['mid']; echo $ml; ?></h6></center>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-primary">
              <div class="card-header">
                
              </div>

              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#profile" data-toggle="tab">Profile</a></li>
                 
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Change Password</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="profile">
                    <!-- Post -->

                    <?php 
                    include_once('connect.php');

                    $mail = $_GET['mid'];

                    $sql = "SELECT * FROM account WHERE email='$mail'";
                    $run = mysqli_query($conn,$sql);
                    if($run){
                        while($row = mysqli_fetch_array($run)){
                            $fullname = $row['fullname'];
                            $password = $row['password'];
                           $email = $row['email'];
                    ?>
                   <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="">Fullname</label>
                            <input type="text" class="form-control" readonly value="<?php echo $fullname; ?>">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="">Email</label>
                            <input type="email" class="form-control" readonly value="<?php echo $email; ?>">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="">Password</label>
                            <input type="password" class="form-control" readonly value="<?php echo $password; ?>">
                        </div>
                    </div>

                    <?php 
                    }
                }else{
                    echo "No data found";
                }
                    ?>
                   </div>

                  </div>
                  

                  <div class="tab-pane" id="settings">
                    <form class="form-horizontal" id="changepass">
                     
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" name="email" class="form-control tfmail" placeholder="Email">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">New password</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control tfpass" name="password" placeholder="New password">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Confirm password</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control tfconfirm" name="confirm"  placeholder="Confirm password">
                        </div>
                      </div>
                    
                     
                     
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php include_once('footer.php'); ?>

<?php include_once('scripts.php'); ?>

<?php include_once('validate_account_profile.php'); ?>


</body>
</html>
