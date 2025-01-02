<script>
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 10000
    });

    function login() {

        var fd = new FormData();

        
        var email = $('.tfmail').val();
        var password = $('.tfpass').val();

        
        fd.append('email', email);
        fd.append('password', password);

        $.ajax({
            url: "signin.php",
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
                    window.location.href = "index.php?mid="+$('.tfmail').val();   
                } else {
                    Toast.fire({
                        icon: 'error',
                        title: "Inavlid Username / Password"
                    });
                }

            },
            error: function(err) {
                alert("In error: " + err.responseText);
            }
        });
    }

   

    //validate  
    $('#login').validate({
        rules: {
            
            email: {
                required: true,
            },
            password: {
                required: true,
            }

        },
        messages: {
           
            email: {
                required: "Please provide email address",
            },
            password: {
                required: "Please provide your password",
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
</script>