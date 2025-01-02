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

        $('.rfff').click(function () {
            alert('hi');
        })

        $('.rfbt').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.rfid').val(data[0]);
           
        });


        $('.btpro').click(function () {
           refund();
        })
function refund() {
    var fd = new FormData();

    var id = $('.rfid').val();

    fd.append('id',id);

    $.ajax({
        url: "refund.php",
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


$('.mdel').click(function(){
    delete_payment();
})
        function delete_payment(){
            var fd = new FormData();

            var id = $('.tfid').val();

            fd.append('id',id);

            $.ajax({
                url: "deletepay.php",
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
        function make_pyment() {

            var ff = new FormData();

            var fullname = $('.tfclient').val();
            var passport_number = $('.tfpass').val();
            var telephone = $('.tfphone').val();
            var destination = $('.tfdestination').val();
            var payfor = $('.tfpay').val();
            var amount = $('.tfamount').val();
            var payment_mode = $('.tfmode').val();
            var reference = $('.tfreference').val();
            var currency = $('.tfcurrency').val();
            var paytype = $('.tftype').val();
           


            ff.append('fullname',fullname);
            ff.append('passport',passport_number);
            ff.append('telephone',telephone);
            ff.append('destination',destination);
            ff.append('payfor',payfor);
            ff.append('amount',amount);
            ff.append('payment_mode',payment_mode);
            ff.append('reference',reference);
            ff.append('currency', currency);
            ff.append('paytype',paytype);

            
           
  

            $.ajax({
                url: "pay.php",
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
                  email_pyment();
                 $('.mdpay').modal('hide');
                    // setTimeout(function(){
                    //     location.reload();
                    // }, 1000)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "UNABLE TO RECORD TRANSACTION"
                    });
                  }
     
                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }

        function email_pyment() {

            var ff = new FormData();

            var fullname = $('.tfclient').val();
            var passport_number = $('.tfpass').val();
            var telephone = $('.tfphone').val();
            var destination = $('.tfdestination').val();
            var payfor = $('.tfpay').val();
            var amount = $('.tfamount').val();
            var payment_mode = $('.tfmode').val();
            var reference = $('.tfreference').val();
            var currency = $('.tfcurrency').val();
           


            ff.append('fullname',fullname);
            ff.append('passport',passport_number);
            ff.append('telephone',telephone);
            ff.append('destination',destination);
            ff.append('payfor',payfor);
            ff.append('amount',amount);
            ff.append('payment_mode',payment_mode);
            ff.append('reference',reference);
            ff.append('currency', currency);
            
           
  

            $.ajax({
                url: "confirm_transaction.php",
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
                    }, 1000)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "UNABLE TO TRANSACTION RECEIPT"
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

              make_pyment();
            }
        });



        //validate  status
        $('#pay').validate({
            rules: {
                client: {
                    required: true,
                },
                passport: {
                    required: true,
                },
                telephone: {
                    required: true,
                },
                destination: {
                    required: true,
                },
                payfor: {
                    required: true,
                },
                amount: {
                    required: true,
                },
               
                paymentmode:{
                    required: true,
                },
                reference: {
                    required: true,
                },
                money: {
                    required:true,
                },
                mail:{
                    required: true,
                },
                ttp:{
                    required:true,
                },
            },
            messages: {
                client: {
                    required: "Please choose client",
                },
                
                passport: {
                    required: "Please choose passport  Number",
                },
                telephone: {
                    required: "Please choose telephone Number",
                },
                destination: {
                    required: "Please choose destination",
                },
                payfor: {
                    required: "Please choose payment type",
                },
                amount: {
                    required: "Please enter amount ",
                },
                paymentmode: {
                    required: "Please choose payment mode",
                },
                reference: {
                    required: "Please enter reference",
                },
                money: {
                    required: "Please choose currency(¢,$,€)",
                },
                mail:{
                    required: "Please enter email",
                },
                ttp:{
                    required: "Please choose type",
                },

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