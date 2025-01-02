  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
     
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
        <?php 
                include_once('connect.php');

                $mail = $_GET['mid'];

                $sql = "SELECT fullname FROM account WHERE email = '$mail'";
                $run = mysqli_query($conn,$sql);
                   if($run){
                    while($row = mysqli_fetch_array($run)){

                   $name=$row['fullname'];
                    
                ?>
          <i class="far fa-user"></i>
          <?php echo $name; ?> 
        </a>
    
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="uploads/ic2.png"
                       alt="User profile picture">
                      
                </div>
              
                <h3 class="profile-username text-center"><?php echo $name; ?></h3>
                <?php 
                }
              }else{
               echo "Unable to detect name";
              }
                ?> 

                <p class="text-muted text-center"><?php $mail = $_GET['mid']; echo $mail; ?></p>

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                   <center><a href="account_profile.php?mid=<?php $mail = $_GET['mid']; echo $mail; ?>">PROFILE</a></center>
                  </li>
                </ul>

                <a href="signout.php" class="btn btn-danger btn-block"><i class="fa fa-power-off"></i> Logout</a>
              </div>
              <!-- /.card-body -->
            </div>
        </div>
     
    </ul>
  </nav>
  <!-- /.navbar -->
