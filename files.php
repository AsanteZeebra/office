<?php include_once('connect.php'); ?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Client Files | Manege files | Upload files </title>

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
              <h1 id="tfclient"><?php $client = $_GET['client'];
                                echo $client; ?></h1>
              <h1 class="text-muted" id="tfpass"> - <?php $passportnumber = $_GET['psn'];
                                                    echo $passportnumber; ?> -</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">files</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">


        <div class="modal fade" id="mdd">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" style="width: 100%; text-align: center;"> Are you sure <i class="fa fa-question"></i></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">

                <form method="POST">
                  <input type="hidden" class="form-control tfname" value="<?php $name = $_GET['client'];
                                                                          echo $name; ?>">
                  <input type="hidden" class="form-control tfpass" value="<?php $pass = $_GET['psn'];
                                                                          echo $pass; ?>">
                </form>
              </div>

            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->



        <div class="modal fade" id="mdquestion">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" style="width: 100%; text-align: center;"> Are you sure <i class="fa fa-question"></i></h5>
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

        <div class="modal fade" id="mdpay">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header" style="background-color:#343A40;">
                <h4 class="modal-title" style="color: white;"><i class="fa fa-upload" style="color: white;"></i> Add Client files</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">

                <div class="col-lg-12">

                  <div class="panel" style="border-style:dotted; border-radius:10px;">
                    <div class="image_upload_div">
                      <form action="upload_files.php" class="dropzone">
                        <div class="dz-message">
                          Drop files here or click to upload. <i class="text-muted fa fa-upload"></i><br>
                          <small class="text-muted">Accepted files: images/pdf not more than 4MB</small>
                        </div>

                      </form>

                    </div>
                  </div>
                </div>

                <!-- /.card-body -->
                <div class="card-footer">
                  <div class="float-right">

                    <button type="button" id="startUpload" class="btn btn-primary"><i class="fa fa-upload"></i> Upload</button>
                  </div>
                  <button type="reset" class="btn btn-default " data-dismiss="modal"><i class="fas fa-times"></i> Close</button>
                  </form>
                </div>

                <!-- /.card-footer -->

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
            <h3 class="card-title">Files</h3>
            <button class="btn btn-primary" style="float:right;" data-toggle="modal" data-target="#mdpay"><i class="fa fa-plus"></i>Add files</button>
          </div>
          <div class="card-body">

            <table class="table table-hover border-stripped" id="nobuttons">

              <thead>

                <tr>
                  <th hidden>ID</th>
                 
                  <th>File_name</th>
                  <th>Date_created</th>

                  <th><i class="fa fa-bars"></i></th>
                </tr>
              </thead>
              <?php
              $pass = $_GET['psn'];
              $sql = "SELECT * from  files WHERE passport_number='$pass'";
              $result = mysqli_query($conn, $sql);
              if ($result) {
                while ($row = mysqli_fetch_array($result)) {
                  $id = $row['id'];
                  $file = $row['file_name'];
                  $date = $row['date_created'];
                


              ?>
                  <tbody>
                    <tr>
                      <td hidden ><?php echo $id; ?></td>
                       
                      <td><i class="fa fa-file text-muted"></i> <a href="uploads/<?php echo $file; ?>"> <?php echo $file; ?> </a> </td>
                      <td><?php echo $date ?> </td>

                      <td class="tdedit">
                        <a href="uploads/<?php echo $file; ?>" download="<?php echo $file; ?>" target="blank" class="text-muted"><i class="fa fa-download"></i> </a> <a class="text-muted tdedit" data-toggle="modal" data-target="#mdquestion"><i class="fa fa-trash"></i> </a>

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

  <script>
    //Disabling autoDiscover
    Dropzone.autoDiscover = false;

    $(function() {
      //Dropzone class
      var myDropzone = new Dropzone(".dropzone", {
        url: "upload_files.php",
        paramName: "file",
        maxFilesize: 4,
        addRemoveLinks: true,
        maxFiles: 10,
        params: { passport: $('.tfpass').val(), name: $('.tfname').val() },
        acceptedFiles: ".jpeg,.jpg,.png,.pdf,.gif,.docx",
        autoProcessQueue: false
      });

      $('#startUpload').click(function() {

        myDropzone.processQueue();


      });
    });

    var Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 5000
    });

    $('.mdel').click(function(){
       delete_file();
    });
    function delete_file(){

      var fd = new FormData();

      var id = $('.tfid').val();

      fd.append('idcode',id);
      $.ajax({
                url: "delete_file.php",
                type: "POST",
                data: fd,
                contentType: false,
                cache: false,
                //dataType:"JSON",
                processData: false,
                success: function(data) {

                   
                  if(data !=0){
                    Toast.fire({
                        icon: 'success',
                        title: data
                    });
                 $('#mdquestion').modal('hide');
                    setTimeout(function(){
                        location.reload();
                    }, 1000)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "Unable to delete data"
                    });
                  }
     
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });
    }
   
    $('.tdedit').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfid').val(data[0]);
           
        })
  </script>

  <script>
    $(function() {
      //Add text editor
      $('#compose-textarea').summernote()
    })
  </script>
</body>

</html>