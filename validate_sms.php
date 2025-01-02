<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });





        //method to send sms
        function pushmessage() {

            var ff = new FormData();

            var number = $('.tfnumber').val();
            var body = $('.tfbody').val();



            ff.append('number', number);
            ff.append('body', body);





            $.ajax({
                url: "sendsms.php",
                type: "POST",
                data: ff,
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
                        savemessage();
                        setTimeout(function() {
                            location.reload();
                        }, 1000)
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: "Unable to send sms"
                        });
                    }

                },
                error: function(err) {
                    alert("In error: " + err.data);
                }
            });

        }

        //method to send sms
        function savemessage() {

            var ff = new FormData();

            var number = $('.tfnumber').val();
            var body = $('.tfbody').val();



            ff.append('number', number);
            ff.append('body', body);





            $.ajax({
                url: "savesms.php",
                type: "POST",
                data: ff,
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
                            title: "Unable to send sms"
                        });
                    }

                },
                error: function(err) {
                    alert("In error: " + err.data);
                }
            });

        }



        //submit handler to save personal info
        $.validator.setDefaults({
            submitHandler: function() {
                pushmessage();
            }
        });



        //validate  status
        $('#sms').validate({
            rules: {
                number: {
                    required: true,
                },
                body: {
                    required: true,
                }

            },
            messages: {
                number: {
                    required: "Please choose receipient contact",
                },
                body: {
                    required: "No message Entered",
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