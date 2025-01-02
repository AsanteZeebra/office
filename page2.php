<!DOCTYPE html>
<html>
<head>
	<title>Client Form Online | Agent  </title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<?php include_once('head.php'); ?>
</head>
<body>

<div class="wrapper" style="width:60%">

	<div style="background-color:#032a69; color:white;">  <h1 style="padding-left: 10px"> <i class="fa fa-user"></i> Profile</h1></div>
	<br/>
	<br/>
		<div class="">
		
			<form id="form1" method="post">
			    
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

              
                      </div>
        
        <button type="submit" class="btn btn-primary">Next <i class="fa fa-arrow-right"></i> </button>
        </form>
	
	
	</div>
</div>

	

<?php include_once('scripts.php'); ?>
<script type="text/javascript" src="scripts.js"></script>
<?php include_once('validate_form2.php'); ?>
</body>
</html>