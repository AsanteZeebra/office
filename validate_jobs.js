
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });



        $('.agedit').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfid').val(data[0]);
            var agent = $('.tfagent1').val(data[1]);
          var sup = $('.tfp').val(data[1]);
           
            
        })
        
      

$('.mdel').click(function(){
    delete_job();
})
        function delete_job(){
            var fd = new FormData();

            var id = $('.tfid').val();

            fd.append('idcode',id);

            $.ajax({
                url: "delete_job.php",
                type: "POST",
                data: fd,
                contentType: false,
                cache: false,
                //dataType:"JSON",
                processData: false,
                success: function(data) {

                   
                  if(data !==0){
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
        
        //method to save data
        function create_job() {

            var ff = new FormData();

            var agent = $('.agent').val();
            var company = $('.tfcompany').val();
            var agent_id = $('.tfagentid').val();
            var country = $('.tfcountry').val();
            var number = $('.tfnumber').val();
            
           

            ff.append('agent',agent);
            ff.append('company',company);
            ff.append('agentid',agent_id);
            ff.append('country',country);
            ff.append('number',number);
            
            
           
  

            $.ajax({
                url: "addjob.php",
                type: "POST",
                data: ff,
                contentType: false,
                cache: false,
                //dataType:"JSON",
                processData: false,
                success: function(data) {

                   
                  if(data !==0){
                    Toast.fire({
                        icon: 'success',
                        title: data
                    });
                 
                    setTimeout(function(){
                        location.reload();
                    }, 1000)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "Unable to save data"
                    });
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

              create_job();

            }
        });



        //validate  status
        $('#job').validate({
            rules: {
                agentname: {
                    required: true,
                },
                company: {
                    required: true,
                },
                agentid: {
                    required: true,
                },
                country: {
                    required: true,
                },
                quantity: {
                   required: true,
                }
               
            },
            messages: {
                agentname: {
                    required: "Please Choose Agent Name",
                },
                company: {
                    required: "Please Choose Business Name",
                },
                agentid: {
                    required: "Please provide agent ID",
                },
                country: {
                    required: "Please select country",
                },
                quantity: {
                    required: "Please Enter proposed No. of Clients",
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
