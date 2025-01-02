<?php include_once('connect.php'); ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup </title>

    <?php include_once('head.php'); ?>
</head>

<body class="hold-transition register-page">

<div class="register-box">
  <div class="register-logo">
    <a href="index.php"><b>Register</b>New User</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new user</p>

      <form  method="post" id="account">
        <div class="input-group mb-3">
          <input type="text" class="form-control tfname" placeholder="Full name" name="fullname">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
         <select name="position"  class="form-control tfrole">
          <option value="">--Choose role--</option>
          <option value="Staff">Staff</option>
          <option value="Agent">Agent</option>
         </select>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-address-book"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="email" class="form-control tfmail" placeholder="Email" name="email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control tfpass" placeholder="Password" id="tpass" name="password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Retype password tfrepeatpass" name="repeatpass">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="hidden"  hidden>
            
              
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-12">
            <button type="submit" id="submitButton" class="btn btn-primary btn-block">CREATE ACCOUNT</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      

      <a href="login.php" class="text-center">I already have a account</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->



    <?php include_once('scripts.php'); ?>

    <?php include_once('validate_signup.php'); ?>
    
   
    
</body>

</html>