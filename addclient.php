
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
              <h1 class="m-0">Add new clients</h1>

            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Clients</li>

              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">




          <div class="row" style="margin-left: 5%; margin-right: 5%;">
            <div class="card card-primary card-outline card-outline-tabs" style="width:100%">
              <div class="card-header p-0 border-bottom-0">
                <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">Personal Info <i class="fa fa-user"></i></a>
                  </li>
                </ul>
              </div>



              <div class="card-body">
                <div class="tab-content" id="custom-tabs-four-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">

                    <form id="form" method="post">

                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="name">Fullname*</label>
                            <input type="text" name="fullname" class="form-control tfname" placeholder="Enter Fullname">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Date of birth*</label>
                            <input type="date" name="dob" class="form-control tfdate">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Marital Status*</label>
                            <select class="form-control select2bs5 cbmarital" name="status" data-placeholder="Choose marital status">
                              <option value=""></option>
                              <option value="Single">Single</option>
                              <option value="Married">Married</option>
                              <option value="Divorced">Divorced</option>
                            </select>
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Place of birth*</label>
                            <input type="text" name="pob" class="form-control tfplace" placeholder="Enter place of birth">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Region*</label>
                            <input type="text" name="region" class="form-control tfregion" placeholder="Enter Region">
                          </div>
                        </div>
                          
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Nationality*</label>
                           <select name="national" class="form-control tfnational" data-placeholder="nationality">
                            <option value=""></option>
                            <option value="Ghanaian">Ghanaian</option>
                            <option value="Togolese">Togolese</option>
                            <option value="Nigerian">Nigerian</option>
                            <option value="Cameroonia">Cemeroonian</option>
                            <option value="Burkinabay">Burkinabay</option>
                            <option value="Indian">Indian</option>
                            <option value="Kenya">Kenya</option>
                            <option value="Guinea">Guinea</option>
                            <option value="South African">South African</option>
                            

                           </select>
                          </div>
                        </div>

                        <div class="col-md-6" >
                          <div class="form-group">
                            <label for="text">Country of interest*</label>
                           <select name="country" class="form- select2bs4 countrypicker tfcountry" multiple="multiple" data-placeholder="Select country"  data-live-search="true"  data-flag="true" style="width:100%;" >
                          
                          </select>
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="telephone">Telephone*</label>
                            <input type="text" name="telephone" class="form-control tfphone" placeholder="xxx xxx xxxxxx">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="city">City/Town*</label>
                            <input type="text" name="city" class="form-control tfcity" placeholder="Enter City / Town">
                          </div>
                        </div>
                        
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="city">Email*</label>
                            <input type="email" name="mail" class="form-control tfmail" placeholder="Enter Email">
                          </div>
                        </div>
 
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="skill">Job Skill/S*</label>
                            <select class=" form-control select2bs4 tfskill" name="skill" multiple="multiple" data-placeholder="Select skill/s">
                              
                              <option value="Unskilled">Unskilled</option>
                              <option value="Artisan">Artisan</option>
                              <option value="Professional">Professional</option>
                              <option value="Carpenter">Carpenter</option>
                              <option value="Maison">Maison</option>
                              <option value="Plumber">Plumber</option>
                              <option value="Tiler">Tiler</option>
                              <option value="Welder">Welder</option>
                              <option value="Labourer">Labourer</option>
                              <option value="Driver">Driver</option>
                            </select>

                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Years of Experience*</label>
                            <input type="text" name="experience" class="form-control tfexperience" placeholder="Enter years">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Children">Children in custody*</label>
                            <input type="text" name="children" class="form-control tfchildren" placeholder="eg. 1 child(2years)">
                          </div>
                        </div>
                         
                         
                      
                        <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <br>
                            <h3>Family information <i class="fa fa-users" style="color:#0056B3;"></i></h3> <small>please use N/A to fill empty input fields</small>
                            <hr>
                            <label for="name"> Spouse Name</label>
                            <input type="text" class="form-control tfspouse" name="spouse" placeholder="Enter Fullname">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Date of birth</label>
                            <input type="date" name="sdob" class="form-control tfsdob">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="occupation">Occupation</label>
                            <input type="text" name="occupation" class="form-control tfoccupation" placeholder="Enter occupation">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Town">City / Town</label>
                            <input type="text" name="scity" class="form-control stfcity" placeholder="Enter City / Town">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Region">Region</label>
                            <input type="text" class="form-control tfsregion" name="sregion" placeholder="Enter Region">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Telephone">Telephone</label>
                            <input type="text" name="sphone" class="form-control tfsphone" placeholder="xxx xxx xxxxxx">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Mother's Name</label>
                            <input type="text" name="mother" class="form-control tfmother" placeholder="Enter Mother's Name">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Father's Name</label>
                            <input type="text" name="father" class="form-control tffather" placeholder="Enter Mother's Name">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Address">House Address</label>
                            <input type="text" name="address" class="form-control tfaddress" placeholder="Enter House Address">
                          </div>
                        </div>

              <div class="col-md-12">
                <br>
              <h3>Documents <i class="fa fa-file" style="color:#0056B3;"></i></h3>
                <hr>
               
              </div>

                        <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Passport</label>
                          <select name="passport" class="form-control tfpassport" data-placeholder="passport">
                            <option value=""> </option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>
                   
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Issueing Authority</label>
                            <input type="text" class="form-control tfissue" name="issueauthority" placeholder="Enter passport Issueing Authority">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Passport No.</label>
                            <input type="text" class="form-control tfpassnumber" name="passportnumber" placeholder="Enter passport Number">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Issue Date</label>
                            <input type="date" class="form-control issuedate" name="issuedate" placeholder="Enter passport issue date">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Expiry Date</label>
                            <input type="date" class="form-control expirydate" name="expirydate" placeholder="Enter passport expiry date">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Passport pictures</label>
                          <select name="pictures" class="form-control tfpictures" data-placeholder="Passport pictures">
                            <option value=""></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Medical report</label>
                          <select name="medical" class="form-control tfmedical" data-placeholder="Medical report">
                            <option value=""></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Police report</label>
                          <select name="police" class="form-control tfpolice" data-placeholder="Police report">
                            <option value=""></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>


                      </div>
                      <hr>
                      <button class="btn btn-primary" type="submit" style="float:right;"><i class="fa fa-arrow-circle-right"></i>Submit</button>
                    
                  </div>
                       
                  </div>

                  </form>
                
          
                  </div>
                </div>
                <!-- /.card -->
              </div>
            </div>
 
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

  <?php include_once('validate.php'); ?>

  <?php include_once('charts.php'); ?>
</body>

</html>