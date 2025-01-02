<?php 


session_start();
 
  
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

include_once('connect.php');




$id = $_GET['psn'];

$sql = "SELECT * from  clients WHERE passport_number='$id'";
$result = mysqli_query($conn, $sql);
if ($result) {
  while ($row = mysqli_fetch_array($result)) {

    $fullname = $row['fullname'];
    $dob = $row['dob'];
    $marital = $row['marital'];
    $birthplace = $row['birthplace'];
    $region = $row['region'];
    $telephone = $row['telephone'];
    $city = $row['city'];
    $email = $row['email'];
    $skill = $row['skill'];
    $experience = $row['experience'];
    $children = $row['children'];
    $nationality = $row['nationality'];
    $destination = $row['country'];
    $spouse = $row['spouse'];
    $spousedate = $row['spousedate'];
    $spousephone = $row['spousephone'];
    $occupation = $row['occupation'];
    $spousecity = $row['spousecity'];
    $spouseregion = $row['spouseregion'];
    $mother = $row['mother'];
    $father = $row['father'];
    $address = $row['address'];
    $passport = $row['passport'];
    $issueauthority = $row['issueing_authority'];
    $passportnumber = $row['passport_number'];
    $issue_date = $row['issue_date'];
    $expiry_date = $row['expiry_date'];
    $pictures = $row['pictures'];
    $medical = $row['medical'];
    $police_report = $row['police_report'];
  }
} else {
  echo "<script>swal('Error', 'No Record Found!', ' error'); </script>";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Profile | <?php echo $fullname; ?>  </title>

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
              <h1 class="m-0" style="padding:5%;">Client profile</h1>

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



        <div class="modal fade" id="mdquestion" style="margin-top: 15%;">
        <div class="modal-dialog modal-sm">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" style="width: 100%; text-align: center;"> Delete profile <i class="fa fa-question"></i></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <center>
                <button class="btn btn-info" data-dismiss="modal">No</button>
                <button class="btn btn-danger mdel">Yes</button>
            </center>
            </div>
           
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

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
                            <input type="text" name="fullname" class="form-control tfname" value="<?php echo $fullname; ?>">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Date of birth*</label>
                            <input type="date" name="dob" class="form-control tfdate" value="<?php echo $dob; ?>" >
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Marital Status*</label>
                            <select class="form-control select2bs5 cbmarital" name="status" data-placeholder="Choose">
                              <option value="<?php echo $marital; ?>" selected="selected"><?php echo $marital; ?></option>
                              <option value="Single">Single</option>
                              <option value="Married">Married</option>
                              <option value="Divorced">Divorced</option>
                            </select>
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Place of birth*</label>
                            <input type="text" name="pob" class="form-control tfplace" placeholder="Enter place of birth" value="<?php echo $birthplace; ?>">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Region*</label>
                            <input type="text" name="region" class="form-control tfregion" placeholder="Enter Region" value="<?php echo $region; ?>">
                          </div>
                        </div>
                          
                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="text">Nationality*</label>
                           <select name="national" class="form-control tfnational">
                            <option value="<?php echo $nationality; ?>"><?php echo $nationality; ?></option>
                            <option value="Ghanaian">Ghanaian</option>
                            <option value="Togolese">Togolese</option>
                            <option value="Nigerian">Nigerian</option>
                           </select>
                          </div>
                        </div>

                        <div class="col-md-6" >
                          <div class="form-group">
                            <label for="text">Country of interest*</label>
                           <select name="country" class="form- select2bs4 tfcountry" multiple="multiple" data-placeholder="Select country" style="width:100%;">
                            <option value="<?php echo $destination; ?>" selected="selected"><?php echo $destination; ?></option>
                            
                            <option value="Canada">Canada</option>
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
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="telephone">Telephone*</label>
                            <input type="text" name="telephone" class="form-control tfphone" placeholder="xxx xxx xxxxxx" value="<?php echo $telephone; ?>">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="city">City/Town*</label>
                            <input type="text" name="city" class="form-control tfcity" placeholder="Enter City / Town" value="<?php echo $city; ?>">
                          </div>
                        </div>
                        
                          <div class="col-md-12">
                          <div class="form-group">
                            <label for="email">Email*</label>
                            <input type="text" name="mail" class="form-control tfmail" placeholder="Email" value="<?php echo $email; ?>">
                          </div>
                        </div>
                        

                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="skill">Job Skill/S*</label>
                            <select class=" form-control select2bs4 tfskill" name="skill" multiple="multiple"  data-placeholder="Select skill/s">
                               <option value="<?php echo $skill; ?>" selected="selected"><?php echo $skill; ?></option>
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
                            <input type="text" name="experience" class="form-control tfexperience" value="<?php echo $experience; ?>" placeholder="Enter years">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Children">Children in custody*</label>
                            <input type="text" name="children" class="form-control tfchildren" value="<?php echo $children; ?>" placeholder="eg. 1 child(2years)">
                          </div>
                        </div>
                         
                         
                      
                        <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <br>
                            <h3>Family information <i class="fa fa-users" style="color:#0056B3;"></i></h3>
                            <hr>
                            <label for="name"> Spouse Name</label>
                            <input type="text" class="form-control tfspouse" name="spouse" value="<?php echo $spouse; ?>" placeholder="Enter Fullname">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="date">Date of birth</label>
                            <input type="date" name="sdob" class="form-control tfsdob" value="<?php echo $spousedate; ?>">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="occupation">Occupation</label>
                            <input type="text" name="occupation" class="form-control tfoccupation" value="<?php echo $occupation; ?>">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Town">City / Town</label>
                            <input type="text" name="scity" class="form-control stfcity" placeholder="Enter City / Town" value="<?php echo $spousecity; ?>">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Region">Region</label>
                            <input type="text" class="form-control tfsregion" name="sregion" placeholder="Enter Region" value="<?php echo $spouseregion; ?>">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Telephone">Telephone</label>
                            <input type="text" name="sphone" class="form-control tfsphone" placeholder="xxx xxx xxxxxx" value="<?php echo $spousephone; ?>">
                          </div>
                        </div>

                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Mother's Name</label>
                            <input type="text" name="mother" class="form-control tfmother" placeholder="Enter Mother's Name" value="<?php echo $mother; ?>">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="name">Father's Name</label>
                            <input type="text" name="father" class="form-control tffather" placeholder="Enter Mother's Name" value="<?php echo $father; ?>">
                          </div>
                        </div>


                        <div class="col-md-6">
                          <div class="form-group">
                            <label for="Address">House Address</label>
                            <input type="text" name="address" class="form-control tfaddress" placeholder="Enter House Address" value="<?php echo $address; ?>">
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
                          <select name="passport" class="form-control tfpassport">
                            <option value="<?php echo $passport; ?>" selected="selected"><?php echo $passport; ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>
                   
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Issueing Authority</label>
                            <input type="text"   class="form-control tfissue" name="issueauthority" placeholder="Enter passport Issueing Authority" value="<?php echo $issueauthority; ?>" >
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Passport No.</label>
                            <input type="text" class="form-control tfpassnumber" name="passportnumber" placeholder="Enter passport Number" value="<?php echo $passportnumber; ?>">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Issue Date</label>
                            <input type="date" class="form-control issuedate" name="issuedate" placeholder="Enter passport issue date" value="<?php echo $issue_date; ?>">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Expiry Date</label>
                            <input type="date" class="form-control expirydate" name="expirydate" placeholder="Enter passport expiry date" value="<?php echo $expiry_date; ?>">
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Passport pictures</label>
                          <select name="pictures" class="form-control tfpictures">
                            <option value="<?php echo $pictures; ?>" selected="selected"><?php echo $pictures; ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Medical report</label>
                          <select name="medical" class="form-control tfmedical">
                            <option value="<?php echo $medical; ?>" selected="selected"><?php echo $medical; ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="text">Police report</label>
                          <select name="police" class="form-control tfpolice">
                            <option value="<?php echo $police_report; ?>" selected="selected"> <?php echo $police_report; ?></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                          </select>
                        </div>
                      </div>


                      </div>
                      <hr>
                            <input type="hidden" class="form-control tfid" value="<?php $id = $_GET['psn']; echo $id; ?>">  <button class="btn btn-danger delbtn" type="button" style="float:left; margin-right:10px;"><i class="fa fa-trash"></i> Delete Profile</button>    <button class="btn btn-primary" type="submit" style="float:right;">Save changes</button>
                    
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

   <?php include_once('validateprofile.php'); ?>

   <?php include_once('delete_profile.php'); ?>

  <?php include_once('charts.php'); ?>
</body>

</html>