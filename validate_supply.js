
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

        $('.tdsupply').on('click', function() {
            $tr = $(this).closest('tr');

            var data = $tr.children("td").map(function() {
                return $(this).text();
            }).get();

            console.log(data);


            var id = $('.tfcode').val(data[0]);
            var company = $('.agent').val(data[1]);
            var country = $('.tfcountry').val(data[2]);
            var demand = $('.tfdemand').val(data[3]);
            var supplied = $('.tfsupply').val(data[4]);
           
        })


       
        //method to save data
        function update_supply() {

            var ff = new FormData();

            var id = $('.tfcode').val();
            var supplied = $('.tfsupply').val();
           

            ff.append('id',id);
            ff.append('supply',supplied);
           
           
           
  

            $.ajax({
                url: "update_supply.php",
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
                 $('.mdsupply').modal('hide');
                    setTimeout(function(){
                        location.reload();
                    }, 1000)
                  }else{
                    Toast.fire({
                        icon: 'error',
                        title: "Unable to save data"
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
             
                update_supply();
               
            }
        });

        //validate  status
        $('#supply').validate({
            rules: {
                company: {
                    required: true,
                },
                country: {
                    required: true,
                },
                tittle: {
                    required: true,
                },
                demand: {
                    required: true,
                },
                supply: {
                    required: true,
                }
            },
            messages: {
                company: {
                    required: "Company not detected",
                },
                country: {
                    required: "Country not detected",
                },
                tittle: {
                    required: "Job tittle not detected",
                },
                demand: {
                    required: "Quantity not detected",
                },
                supply:{
                    required: "Enter quantity supplied",
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
