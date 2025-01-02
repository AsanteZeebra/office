<script>
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 5000
    });

    function saveaccount() {
        var fd = new FormData();

        var username = $('.tfname').val();
        var email = $('.tfmail').val();
        var password = $('.tfpass').val();
        var role = $('.tfrole').val();

        fd.append('fullname', username);
        fd.append('email', email);
        fd.append('password', password);
        fd.append('role', role);

        $.ajax({
            url: "createuser.php",
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
                    
                    setTimeout(function() {
                        window.location.href = "login.php";
                    }, 3000)
                } else {
                    Toast.fire({
                        icon: 'error',
                        title: "Unable to create account"
                    });
                }

            },
            error: function(err) {
                alert("In error: " + err.responseText);
            }
        });
    }

    $.validator.setDefaults({
            submitHandler: function() {

            saveaccount();

            }
        });

    //validate  
    $('#account').validate({
        rules: {
            fullname: {
                required: true,
            },
            email: {
                required: true,
            },
            password: {
                required: true,
            },
            repeatpass: {
                required: true,
            },
            position:{
                required:true,
            },

        },
        messages: {
            fullname: {
                required: "Please Enter Account Name",
            },
            email: {
                required: "Please provide email address",
            },
            password: {
                required: "Please provide your password",
            },
            repeatpass: {
                required: "Please repeat password",
            },
            position:{
                required: "Please select position",
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