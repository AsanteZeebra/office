<script>
    var Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 10000
    });

    function login() {

        var fd = new FormData();

        var agent_id = $('.tfid').val();
        var agentpin = $('.tfpass').val();

        
        fd.append('agent_id', name);
        fd.append('agent_pass', agentpin);

        $.ajax({
            url: "agent_signin.php",
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
                    window.location.href = "client_form.php?mid="+$('.tfname').val();   
                } else {
                    Toast.fire({
                        icon: 'error',
                        title: "Inavlid Agentname / Agent Pin"
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

          login();

            }
        });

    //validate  
    $('#login').validate({
        rules: {
            
            name: {
                required: true,
            },
            agentid: {
                required: true,
            }

        },
        messages: {
           
            name: {
                required: "Please provide ganet name",
            },
            agentid: {
                required: "Please provide your agent id",
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