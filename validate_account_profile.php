<script>
    
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });

        
        //method to save data
        function change_pass() {

            var ff = new FormData();

            var email = $('.tfmail').val();
            var password = $('.tfpass').val();
          
           

            ff.append('email',email);
            ff.append('password',password);

        
            $.ajax({
                url: "changepass.php",
                type: "POST",
                data: ff,
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
                 
                    setTimeout(function(){
                        location.reload();
                    }, 900)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "Unable to change password"
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
            if($('.tfpass').val() != $('.tfconfirm').val()){
                Toast.fire({
                        icon: 'error',
                        title: "Unable Password do match"
                    });
            }else{
                change_pass();
            }  
            }
        });



        //validate  status
        $('#changepass').validate({
            rules: {
                email: {
                    required: true,
                },
                password: {
                    required: true,
                },
                confirm: {
                    required: true,
                }
               
            },
            messages: {
                email: {
                    required: "Please Enter Email",
                },
                password: {
                    required: "Please Enter Password",
                },
                confirm: {
                    required: "Please confirm Password",
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