<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });



        //method to save data
        function insertdata() {

            var fd = new FormData();

            var fullname = $('.tfname').val();
            var dob = $('.tfdate').val();
            var marital_status = $('.cbmarital').val();
            var place_of_birth = $('.tfplace').val();
            var region = $('.tfregion').val();
            var telephone = $('.tfphone').val();
            var city = $('.tfcity').val();
            var email = $('.tfmail').val();
            var skills = $('.tfskill').val();
            var experience = $('.tfexperience').val();
            var children = $('.tfchildren').val();

            var spouse = $('.tfspouse').val();
            var spousedate = $('.tfsdob').val();
            var occupation = $('.tfoccupation').val();
            var spousecity = $('.stfcity').val();
            var region = $('.tfsregion').val();
            var spousephone = $('.tfsphone').val();
            var mother = $('.tfmother').val();
            var father = $('.tffather').val();
            var address = $('.tfaddress').val();
            var nationality = $('.tfnational').val();
            var country = $('.tfcountry').val();

            var passport = $('.tfpassport').val();
            var issueing_authority = $('.tfissue').val();
            var passportnumber = $('.tfpassnumber').val();
            var issuedate = $('.issuedate').val();
            var expirydate = $('.expirydate').val();
            var pictures = $('.tfpictures').val();
            var medical = $('.tfmedical').val();
            var police_report = $('.tfpolice').val();
           
            fd.append('passport', passport);
            fd.append('authority', issueing_authority);
            fd.append('passportnumber', passportnumber);
            fd.append('issuedate', issuedate);
            fd.append('expirydate', expirydate);
            fd.append('pictures',pictures);
            fd.append('medical', medical);
            fd.append('police_report', police_report);
             
            fd.append("fullname", fullname);
            fd.append("dob", dob);
            fd.append("marital", marital_status);
            fd.append("birthplace", place_of_birth);
            fd.append("region", region);
            fd.append("telephone", telephone);
            fd.append("city", city);
            fd.append("email", email);
            fd.append("skill", skills);
            fd.append("experience", experience);
            fd.append("children", children);
            fd.append("nationality", nationality);
            fd.append("country", country);

            fd.append('spouse', spouse);
            fd.append('spousedate', spousedate);
            fd.append('occupation', occupation);
            fd.append('spousecity', spousecity);
            fd.append('spouseregion', region);
            fd.append('spousephone', spousephone);
            fd.append('mother', mother);
            fd.append('father', father);
            fd.append('address', address);

            $.ajax({
                url: "saveclient.php",
                type: "POST",
                data: fd,
                contentType: false,
                cache: false,
                //dataType:"JSON",
                processData: false,
                success: function(data) {

                    if (data != 0) {

                        Toast.fire({
                            icon: 'success',
                            title: data
                        });
                        
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'Unable to save data'

                        });
                    }
                  
                    if(data !=0){
                        setTimeout(function(){
                            location.reload();
                        }, 1000)
                    }
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }

        //submit handler to save personal info
        $.validator.setDefaults({
            submitHandler: function() {

                insertdata();

            }
        });






        //validate  inputs personal info
        $('#form').validate({
            rules: {
                fullname: {
                    required: true,
                },

                status: {
                    required: true,
                },

                pob: {
                    required: true,
                },
                dob: {
                    required: true,
                },
                region: {
                    required: true,
                },
                telephone: {
                    required: true,
                },

                city: {
                    required: true,
                },
                skill: {
                    required: true,
                },
                experience: {
                    required: true,
                },
                children: {
                    required: true,
                },
                national: {
                    required: true,
                },
                country: {
                    required: true,
                },
                
                spouse: {
                    required: true,
                },
                sdob: {
                    required: true,
                },
                occupation: {
                    required: true,
                },
                scity: {
                    required: true,
                },
                sregion: {
                    required: true,
                },
                sphone: {
                    required: true,
                },
                mother: {
                    required: true,
                },
                father: {
                    required: true,
                },
                address: {
                    required: true,
                },
                passport:{
                    required: true,
                },
                pictures:{
                    required: true,
                },
                medical: {
                    required: true,
                },
                police:{
                    required: true,
                },
                issueauthority: {
                    required: true,
                },
                passportnumber: {
                    required: true,
                },
                issuedate: {
                    required: true,
                },
                expirydate: {
                    required: true,
                },
                mail:{
                    required: true
                }


            },
            messages: {
                issueauthority: {
                    required: "Please enter issueing authority",
                },
                passportnumber: {
                    required: "Please enter passport number ",
                },
                issuedate: {
                    required: "please choose issue date",
                },
                expirydate: {
                    required: "please choose expirydate",
                },
                fullname: {
                    required: "Please enter fullname",

                },
                dob: {
                    required: "Please provide a valid date of birth",

                },
                status: {
                    required: "Please choose Marital Status",
                },
                pob: {
                    required: "Please provide place of birth",
                },
                region: {
                    required: "please provide region",
                },
                telephone: {
                    required: "Please provide telephone number",
                },
                city: {
                    required: "Please provide city",
                },
                skill: {
                    required: "please choose at least one skill",
                },
                experience: {
                    required: "please provide years of experience",
                },
                children: {
                    required: "Please provide children in custody if any",
                },
                nationality: {
                    required: "Please choose nationality",
                },
                country: {
                    required: "Please choose country",
                },


                spouse: {
                    required: "Please enter spouse name",
                },
                sdob: {
                    required: "Please enter date of birth",
                },
                occupation: {
                    required: "please enter occupation",
                },
                scity: {
                    required: "please enter city / town",
                },
                sregion: {
                    required: "please enter region",
                },
                sphone: {
                    required: "please enter telephone number",
                },
                mother: {
                    required: "please enter mother's name",
                },
                father: {
                    required: "please enter father's name",
                },
                address: {
                    required: "please enter house address",
                },
                passport: {
                    required: "please choose passport status",
                },
                 pictures: {
                    required: "please choose pictures status",
                 },
                 medical: {
                    required: "please choose medical status",
                 },
                 police: {
                    required: "Please choose police report status",
                 },
                 mail:{
                     required: "Please enter a vaild email",
                 }


            },
            errorElement: 'span',
            errorPlacement: function(error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            }
        });
    });
</script>