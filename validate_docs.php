<script>
    $(function() {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });


        $('.tdel').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfid').val(data[0]);
           
        })

$('.mdel').click(function(){
   delete_tab();
})

function delete_tab(){

var fd = new FormData();

var id = $('.tfid').val();

fd.append('id',id);

    $.ajax({
                url: "delete_tab.php",
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
                        $('#mdquestion').modal('hide');
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'UNABLE TO DELETE DATA'

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
        //method to save data
        function savepermit() {

            var fd = new FormData();

            var client = $('.tfclient').val();
            var passport = $('.tfpass').val();
            var destination = $('.tfdestination').val();
            var permit = $('.tfpermit').val();
            var visa = $('.tfvisa').val();
            var company = $('.tfcompany').val();
            var skill = $('.tfskill').val();
           

            fd.append('client', client);
            fd.append('passport', passport);
            fd.append('destination',destination);
            fd.append('permit',permit);
            fd.append('visa',visa);
            fd.append('company',company);
            fd.append('skill',skill);
           
  

            $.ajax({
                url: "input_pass.php",
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
                        $('#mdpay').modal('hide');
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
          savepermit();
              

            }
        });






        //validate  status
        $('#pnv').validate({
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
                permit: {
                    required: true
                },
                visa: {
                    required: true
                },

                company:{
                    required: true
                },
                skill:{
                    required: true
                }



            },
            messages: {
                client: {
                    required: "Please choose client",
                },
                passport: {
                    required: "Please provide passport No.",
                },
                destination: {
                    required: "Please choose destination",
                },
                permit: {
                    required: "Please choose",
                },
                visa: {
                    required: "Please choose ",
                },
                company:{
                    required: "please choose company",
                },
                skill: {
                    required: "please Enter client skill"
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