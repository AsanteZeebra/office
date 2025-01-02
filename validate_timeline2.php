<script>
    $(function() {

        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });
     
    
       

         

        $('.mdel').click(function() {
            $('.tfid').val($('.mid').val());
            delete_timeline();
        })

        function delete_timeline() {
            var fd = new FormData();

            var id = $('.tfid').val();

            fd.append('id', id);

            $.ajax({
                url: "remove_timeline.php",
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


                        $("#mdquestion").modal('hide');
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'Unable to delete data'

                        });
                    }

                    if (data != 0) {
                        setTimeout(function() {
                            location.reload();
                        }, 1000)
                    }
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }
        //method to save data
        function createtimeline() {

            var fd = new FormData();

            var tittle = $('.tftittle').val();
            var destination = $('.tfdestination').val();
            var description = $('.tfdescription').val();
            var passportnumber = $('.psn').val();
            var client = $('.cname').val();
            var id = $('.mid').val();


            fd.append('tittle', tittle);
            fd.append('destination', destination);
            fd.append('description', description);
            fd.append('fullname', client);
            fd.append('passportnumber', passportnumber);
            fd.append('idd',id);


            $.ajax({
                url: "savetimeline.php",
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


                        $("#mdd").modal('hide');
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'Unable to save data'

                        });
                    }

                    if (data != 0) {
                        setTimeout(function() {
                            location.reload();
                        }, 1000)
                    }
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }

       
        //submit handler to save timeline info
        $.validator.setDefaults({
            submitHandler: function() {

                createtimeline();

            }
        });


        $("#timeline").validate({
            rules: {

                tittle: {
                    required: true,
                },

                destination: {
                    required: true,
                },
                description: {
                    required: true,
                }
            },
            messages: {
                tittle: {
                    required: "please enter tittle",
                },
                destination: {
                    required: "please choose destination",
                },
                description: {
                    required: "please type comment to show details of timeline"
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