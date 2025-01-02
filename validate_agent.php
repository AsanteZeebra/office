<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });


        generate_id();

function generate_id() {
  var currentYear = (new Date).getFullYear();
  var currentMonth = (new Date).getMonth() + 1;
  var invoice = (Math.floor(Math.random() * 5000))
  $(".dd").val("FMC-"+invoice + currentYear + currentMonth);

}

        $('.btdel').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfid').val(data[1]);

        })

        $('.btedit').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.agid').val(data[1]);
            var agent = $('.tfagent1').val(data[2]);
            var tel = $('.tfphone1').val(data[4]);
            var bus = $('.tfbusiness1').val(data[5]);
            var email = $('.tfmail1').val(data[3]);
            var address = $('.tfaddress1').val(data[7]);

        })



        $('.delbtn').click(function() {
            delete_agent();
        });

        $('.upbtn').click(function() {
            update_agent();
        });


        //send confirmation email to agent
        function notify_agent() {

            var fd = new FormData();


            var agentname = $('.tfagent').val();
            var businessname = $('.tfbusiness').val();
            var email = $('.tfmail').val();
            var telephone = $('.tfphone').val();
            var address = $('.tfaddress').val();
            var ageid = $('.dd').val();





            fd.append('agentname', agentname);
            fd.append('businessname', businessname);
            fd.append('email', email);
            fd.append('telephone', telephone);
            fd.append('address', address);
            fd.append('idd', ageid);



            $.ajax({
                url: "send_mail.php",
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
                            title: "MAIL DELIVERED"
                        });

                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'UNABLE TO DELIVER EMAIL'

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
        function update_agent() {

            var fd = new FormData();

            var agentname = $('.tfagent1').val();
            var businessname = $('.tfbusiness1').val();
            var email = $('.tfmail1').val();
            var telephone = $('.tfphone1').val();
            var address = $('.tfaddress1').val();
            var ageid = $('.agid').val();





            fd.append('agentname', agentname);
            fd.append('businessname', businessname);
            fd.append('email', email);
            fd.append('telephone', telephone);
            fd.append('address', address);
            fd.append('idd', ageid);



            $.ajax({
                url: "update_agent.php",
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
        function register_agent() {

            var fd = new FormData();

            var agentname = $('.tfagent').val();
            var businessname = $('.tfbusiness').val();
            var email = $('.tfmail').val();
            var telephone = $('.tfphone').val();
            var address = $('.tfaddress').val();
            var id = $('.dd').val();




            fd.append('agentname', agentname);
            fd.append('businessname', businessname);
            fd.append('email', email);
            fd.append('telephone', telephone);
            fd.append('address', address);
            fd.append('id', id);



            $.ajax({
                url: "save_agent.php",
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
                        notify_agent();
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'Unable to save data'

                        });
                    }

                    // if (data != 0) {
                    //     setTimeout(function() {
                    //         location.reload();
                    //     }, 1000)
                    // }
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }

        function delete_agent() {

            var fd = new FormData();

            var id = $('.tfid').val();




            fd.append('idd', id);



            $.ajax({
                url: "delete_agent.php",
                type: "POST",
                data: fd,
                contentType: false,
                cache: false,
                //dataType:"JSON",
                processData: false,
                success: function(data) {

                    if (data != 0) {

                        Toast.fire({
                            icon: 'error',
                            title: data
                        });

                    } else {
                        Toast.fire({
                            icon: 'success',
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


        //submit handler to save personal info
        $.validator.setDefaults({
            submitHandler: function() {
                register_agent();
            }
        });


        //validate  status
        $('#agform').validate({
            rules: {

                agentname: {
                    required: true
                },
                business: {
                    required: true
                },
                email: {
                    required: true
                },
                telephone: {
                    required: true
                },
                address: {
                    required: true
                }



            },
            messages: {
                agentname: {
                    required: "Please enter agent name",
                },
                business: {
                    required: "Please enter business name",
                },
                email: {
                    required: "Please enter agent email",
                },
                telephone: {
                    required: "Please enter agent telephone",
                },
                address: {
                    required: "Please enter agent address",
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