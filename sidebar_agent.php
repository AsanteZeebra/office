<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="uploads/l2.jpg" class="img-circle elevation-2" alt="User Image" style="height: 40px; width:40px;">
        </div>
        <div class="info">
          <?php
          include_once('connect.php');

          $mail = $_GET['mid'];

          $sql = "SELECT fullname FROM account WHERE email='$mail'";
          $execute = mysqli_query($conn,$sql);
          if($execute){
            while($row = mysqli_fetch_array($execute)){
              $name = $row['fullname'];
           
          ?>
          <a href="index.php?mid=<?php $ml = $_GET['mid']; echo $ml; ?>" class="d-block"><?php echo $name; ?></a>

          <?php 
           }
          }else{
            echo "No Name detected";
          }
          ?>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item">
            <a href="agent_dashbaord.php?mid=<?php $em = $_GET['mid']; echo $em; ?>" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Dashboard  
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link" data-toggle="modal" data-target="#cls">
              <i class="nav-icon fa fa-user"></i>
              <p>
                Clients
                
              </p>
            </a>
          </li>


            <li class="nav-item">
            <a href="#" class="nav-link" data-toggle="modal" data-target="#mdd">
              <i class="nav-icon fa fa-handshake"></i>
              <p>
                Transactions
                
              </p>
            </a>
          </li>
     
          
          <li class="nav-item">
            <a href="agent_passports.php ?mid=<?php $em = $_GET['mid']; echo $em; ?>" class="nav-link">
              <i class="nav-icon fa fa-passport"></i>
              <p>
                Passports
                
              </p>
            </a>
          </li>


          <li class="nav-item">
            <a href="signout.php" class="nav-link">
              <i class="nav-icon fa fa-power-off"></i>
              <p>
                Logout
                
              </p>
            </a>

          </li>

          <li class="nav-item">
            <a href="" class="nav-link">
              <i class="nav-icon fa fa-question-circle"></i>
              <p>
                FAQ
                
              </p>
            </a>

          </li>

         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
