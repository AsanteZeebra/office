<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });



        //method to save data
        function createstatus() {

            var fd = new FormData();

            var status = $('.mdstatus').val();
            var passport = $('.mdpass').val();
           
       
        
           
            fd.append('passport', passport);
            fd.append('status', status);
           
  

            $.ajax({
                url: "update_status.php",
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
                        $('#mdstat').modal('hide');
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

                createstatus();

            }
        });






        //validate  status
        $('#form').validate({
            rules: {
      
                options: {
                    required: true
                }


            },
            messages: {
                options: {
                    required: "Please choose status",
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