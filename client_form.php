<!DOCTYPE html>
<html>
<head>
	<title>Client Form Online | Agent  </title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<?php include_once('head.php'); ?>
</head>
<body style="background-image: url('dist/img/pd.jpg');">

<div class="accordion" id="accordionExample" style="width:60%; margin:20%">
  <div class="card">
    <div class="card-header" id="headingOne">
      
      <h2 class="mb-0"> 
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Client information
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        
	<br/>
	<br/>
		<div class="">
		
		 <form id="form" method="post">

                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                               <h3>Profile <i class="fa fa-users" style="color:#0056B3;"></i></h3> <small>please use N/A to fill empty input fields</small>
                                 <br/>
                                 <br/>
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
                           <select name="country" class="form- select2bs4 tfcountry" multiple="multiple" data-placeholder="Select country" style="width:100%;">
                            <option value=""></option>
                            <option value="Canada">Canada</option>
                                                                <option value="USA">USA</option>
                                                                <option value="Australia">Australia</option>
                                                                <option value="New Zealand">New Zealand</option>
                                                                <option value="Armenia">Armenia</option>
                                                                <option value="Cambodia">Cambodia</option>
                                                                <option value="France">France</option>
                                                                <option value="Czech Republic">Czech Republic</option>
                                                                <option value="Portugal">Portugal</option>
                                                                <option value="Portugal">United Kingdon</option>
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

                        
                      <div class="col-md-6">
                        <div class="form-group">
                             <hr>
                          <label for="text">Agent Name </label>
                         <input class='form-control tfagname' name="agname" placeholder='Agent Name'>
                        </div>
                      </div>
                      
                      
                      <div class="col-md-6">
                        <div class="form-group">
                             <hr>
                          <label for="text">Agent ID</label>
                         <input class='form-control tfagcode' name="agcode" placeholder='Agent Identification Number'>
                        </div>
                      </div>

                      </div>
                      <hr>
                      <button class="btn btn-primary" type="submit" style="float:right;"> Submit <i class="fa fa-arrow-circle-right"></i></button>
                    
                  </div>
                       
                  </div>

                  </form>
                
          
		
        </div>
	</div>
      </div>
    </div>
  </div>
  
</div>
	


	

<?php include_once('scripts.php'); ?>
<script type="text/javascript" src="scripts.js"></script>
<?php include_once('validate_form1.php'); ?>
</body>
</html>