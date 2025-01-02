<?php 

session_start();

// Check if the user is already logged in, if yes then redirect him to welcome page
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: index.php");
    exit;
}

include_once('connect.php'); 

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login </title>

    <?php include_once('head.php'); ?>
</head>

<body class="hold-transition register-page">

<div class="register-box">
  <div class="register-logo">

    <a href="index.php">
      <img src="uploads/l1.png" alt="logo" style="width:150px;"><br>
      <b style="color:#FF1F1F;font-size:40px;">Fremike</b> <b style="font-size:40px;">Consult</b>
    </a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">SIGN IN</p>

      <form id="login" method="post" action="signin.php">
        <div class="input-group mb-3">
          <input type="email" class="form-control tfmail" placeholder="Email" name="email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control tfpass" placeholder="Password" name="password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary" hidden>
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">SIGN IN</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    
      
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->



    <?php include_once('scripts.php'); ?>

    <?php include_once('validate_login.php'); ?>
    
</body>

</html>