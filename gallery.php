<?php include_once('connect.php'); ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gallery </title>

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
                            <h1>Site Gallery</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Gallery</li>
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
          <div class="col-12">
            <div class="card card-primary">
              <div class="card-header">
                <h4 class="card-title"> Gallery </h4>
              </div>
              <div class="card-body">
                <div>

                  <div class="mb-2">
                    <a class="btn btn-secondary" href="javascript:void(0)" data-shuffle> Shuffle items </a>
                       <a class="btn btn-primary btn-sm" href="site_upload.php" style="float:right"> Upload</a>
                      
                    </div>
                  </div>
                </div>
                <div>
                  <div class="filter-container p-0 row">
                  
                  <?php include_once('connect.php');

                  $sql = "SELECT * FROM gallery";
                  $execute = mysqli_query($conn,$sql);

                  if($execute){
                    while($row = mysqli_fetch_array($execute)){
                        $photo = $row['file_name'];
                       
                   

                  ?>
                  <div class="filtr-item col-sm-2" data-category="1" data-sort="white sample">
                      <a href="uploads/<?php echo $photo; ?>" data-toggle="lightbox" data-title="<?php echo $photo; ?>">
                        <img src="uploads/<?php echo $photo; ?>" class="img-fluid mb-2" alt="image" title="" style= "width: 300px; height: 200px;" />
                      </a>
                    </div>
                    
                    <?php 
                     }
                    }else{
                      echo "Data not found";
                    }
                    ?>
                    

                  </div>
                </div>

              </div>
            </div>
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