<script>
    $(function () {
  var Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 5000,
  });



  $(".tddel").on("click", function () {
    $tr = $(this).closest("tr");

    var data = $tr
      .children("td")
      .map(function () {
        return $(this).text();
      })
      .get();

    console.log(data);

    var id = $(".tfid").val(data[1]);
  });
  
   $(".tdedit").on("click", function () {
    $tr = $(this).closest("tr");

    var data = $tr
      .children("td")
      .map(function () {
        return $(this).text();
      })
      .get();

    console.log(data);

    var id = $(".tfidd").val(data[1]);
    var client = $(".apclient").val(data[2]);
    var id = $(".apreference").val(data[0]);
    var mail = $(".apmail").val(data[4]);
    var date = $(".apdate").val(data[5]);
    var time = $(".aptime").val(data[6]);
  });

 
  generate_reference();

function generate_reference() {
  var currentYear = (new Date).getFullYear();
  var currentMonth = (new Date).getMonth() + 3;
  var invoice = (Math.floor(Math.random() * 100000))
  $(".dd").val(currentYear + currentMonth+invoice);

}
                                                                                                                                                                                                                                                                                               
  //method to save data
  function create_appointment() {
    var ff = new FormData();

    var client = $(".tfclient").val();
    var telephone = $(".tfpass").val();
    var email = $(".tfmail").val();
    var visa = $(".tfvisa").val();
    var aptime = $(".tfdestination").val();
    var date = $(".tfdate").val();
    var reference = $(".dd").val();

    ff.append("client", client);
    ff.append("telephone", telephone);
    ff.append("mail", email);
    ff.append("visa", visa);
    ff.append("aptime", aptime);
    ff.append("date", date);
    ff.append("reference",reference);

    $.ajax({
      url: "create_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdappoint").modal("hide");
          confrim_appointment();
          setTimeout(function () {
            location.reload();
          }, 1000);
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to save data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }



 function confrim_appointment() {
    var ff = new FormData();

    var client = $(".tfclient").val();
    var telephone = $(".tfpass").val();
    var email = $(".tfmail").val();
    var visa = $(".tfvisa").val();
    var aptime = $(".tfdestination").val();
    var date = $(".tfdate").val();
     var reference = $(".dd").val();

    ff.append("client", client);
    ff.append("telephone", telephone);
    ff.append("mail", email);
    ff.append("visa", visa);
    ff.append("aptime", aptime);
    ff.append("date", date);
    ff.append("reference", reference);

    $.ajax({
      url: "confirm_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
         
         
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to save data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }

  //submit handler to save personal info
  $.validator.setDefaults({
    submitHandler: function () {
      create_appointment();
    },
  });

  $('.delbtn').on('click',function(){
   delete_appointment();
  })
  function delete_appointment() {
    var fd = new FormData();

    var passport = $(".tfid").val();

    fd.append("passport", passport);

    $.ajax({
      url: "delete_appointment.php",
      type: "POST",
      data: fd,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdquestion").modal("hide");
          setTimeout(function () {
            location.reload();
          }, 1000);
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to save data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }

 

$('.changebtn').click(function(){
    if($('.tfstatus').val() ==="Rescheduled"){
       change_appointment();
    }else if($('.tfstatus').val() ==="Cancelled"){
         cancel_appointment();
    }else if($('.tfstatus').val() === 'Attended'){
       appointment_attended();
    }
})

 function cancel_appointment() {
    var ff = new FormData();

    var status = $(".tfstatus").val();
    var id = $(".tfidd").val();
    var client = $(".apclient").val();
      var reference = $(".apreference").val();
      var email = $(".apmail").val();
    

    ff.append("status", status);
    ff.append("id", id);
    ff.append("client", client);
    ff.append("reference", reference);
    ff.append("email", email);
    
    

    $.ajax({
      url: "cancel_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdstat").modal("hide");
        update_appointment();
          setTimeout(function () {
            location.reload();
          }, 1000);
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to update data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }

 function change_appointment() {
    var ff = new FormData();

    var status = $(".tfstatus").val();
    var id = $(".tfidd").val();
     var client = $(".apclient").val();
      var reference = $(".apreference").val();
      var email = $(".apmail").val();
      var date = $('.rdate').val();
      var time = $('.rtime').val();
    

    ff.append("status", status);
    ff.append("id", id);
    ff.append("client", client);
    ff.append("reference", reference);
    ff.append("email", email);
    ff.append("date", date);
    ff.append("time", time);
    
    

    $.ajax({
      url: "reschedule_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdstat").modal("hide");
        update_appointment();
          
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to update data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }

 function appointment_attended() {
    var ff = new FormData();

    var status = $(".tfstatus").val();
    var id = $(".tfidd").val();
     var client = $(".apclient").val();
      var reference = $(".apreference").val();
      var email = $(".apmail").val();
      var date = $('.rdate').val();
      var time = $('.rtime').val();
    

    ff.append("status", status);
    ff.append("id", id);
    ff.append("client", client);
    ff.append("reference", reference);
    ff.append("email", email);
    ff.append("date", date);
    ff.append("time", time);
    
    

    $.ajax({
      url: "attend_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdstat").modal("hide");
         setTimeout(function () {
            location.reload();
          }, 1000);
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to update data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }


function update_appointment() {
    var ff = new FormData();

    var status = $(".tfstatus").val();
    var id = $(".tfidd").val();
     var client = $(".apclient").val();
      var reference = $(".apreference").val();
      var email = $(".apmail").val();
    

    ff.append("status", status);
    ff.append("id", id);
    ff.append("client", client);
    ff.append("reference", reference);
    ff.append("email", email);
    
    

    $.ajax({
      url: "update_appointment.php",
      type: "POST",
      data: ff,
      contentType: false,
      cache: false,
      //dataType:"JSON",
      processData: false,
      success: function (data) {
        if (data != 0) {
          Toast.fire({
            icon: "success",
            title: data,
          });
          $("#mdstat").modal("hide");
        
          setTimeout(function () {
            location.reload();
          }, 1000);
        } else {
          Toast.fire({
            icon: "error",
            title: "Unable to update data",
          });
        }
      },
      error: function (err) {
        alert("In error: " + err.responseText);
      },
    });
  }




  //validate  status
  $("#appoint").validate({
    rules: {
      client: {
        required: true,
      },
      passport: {
        required: true,
      },
      embassy: {
        required: true,
      },
      visa: {
        required: true,
      },
      destination: {
        required: true,
      },
      date: {
        required: true,
      },
    },
    messages: {
      client: {
        required: "Please choose client name",
      },
      passport: {
        required: "Please choose passport number",
      },
      embasy: {
        required: "Please provide embassy of submission",
      },
      visa: {
        required: "Please choose visa type",
      },
      destination: {
        required: "Please choose destination",
      },
      date: {
        required: "please choose appointment date",
      },
    },
    errorElement: "span",
    errorPlacement: function (error, element) {
      error.addClass("invalid-feedback");
      element.closest(".form-group").append(error);
    },
    highlight: function (element, errorClass, validClass) {
      $(element).addClass("is-invalid");
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element).removeClass("is-invalid");
    },
  });
});

</script>