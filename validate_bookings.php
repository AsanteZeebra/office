<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });

           
        $('.tdedit').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfid').val(data[0]);
           
        })


        $('.mdel').click(function(){
    delete_ticket();
})
        function delete_ticket(){
            var fd = new FormData();

            var id = $('.tfid').val();

            fd.append('idcode',id);

            $.ajax({
                url: "delete_ticket.php",
                type: "POST",
                data: fd,
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
        function savebookings() {

            var fd = new FormData();

            var client = $('.tfclient').val();
            var passport = $('.tfpass').val();
            var destination = $('.tfdestination').val();
            var flight = $('.tfflight').val();
            var date = $('.tfdate').val();
            var confirm = $('.tfconfirm').val();
            

           
            fd.append('client', client);
            fd.append('passport', passport);
            fd.append('destination', destination);
            fd.append('flight', flight);
            fd.append('departuredate', date);
            fd.append('confirm', confirm);

           
  

            $.ajax({
                url: "save_ticket.php",
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
                        $('#mdticket').modal('hide');
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

              savebookings();

            }
        });


        //validate  status
        $('#bookings').validate({
            rules: {
      
                client: {
                    required: true
                },
                passport: {
                    required: true
                },
                destination: {
                    required: true
                },
                airline: {
                    required: true
                },
                date: {
                    required: true
                },
                confirm:{
                    required: true
                }


            },
            messages: {
                client: {
                    required: "Please choose client",
                },
                passport: {
                    required: "Please choose passport Number",
                },
                destination: {
                    required: "Please choose destination",
                },
                airline: {
                    required: "Please provide flight details",
                },
                date: {
                    required: "Please choose date of departure",
                },
                confirm:{
                    required: "Please Confirm Booking",
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