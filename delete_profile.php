<script>
 var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 5000
        });


function delete_profile(){
    var fd = new FormData();

    var id = $('.tfpassnumber').val();

    fd.append('id',id);

    $.ajax({
                url: "deleteprofile.php",
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
                        window.location.href = "clients.php? psn=<?php echo $_GET['psn']; ?> & mid=<?php echo $_GET['psn']; ?>";
                    
                        
                    } else {
                        Toast.fire({
                            icon: 'error',
                            title: 'Unable to delete profile',
                           

                        });
                    }
                    if(data !=0){
                        setTimeout(function(){
                            location.reload();
                        }, 2000)
                    }

                },
                error: function(err) {
                    alert("In error: " + err.responseText);
                }
            });

        }



$('.delbtn').on('click', function(){
    $('#mdquestion').modal('show');
})


$('.mdel').on('click',function(){
    delete_profile();
})

</script>