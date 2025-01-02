<script>
    
  $(function () {
   

  

   

   //-------------
   //- DONUT CHART -
   //-------------
   // Get context with jQuery - using jQuery's .get() method.
   var donutChartCanvas = $('#dot').get(0).getContext('2d')
   var donutData        = {
     labels: [<?php echo json_encode($dest) ?>],
     datasets: [
       {
         data: <?php echo json_encode($permit); ?>,
         backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
       },
       {
         data: <?php echo json_encode($visa); ?>,
         backgroundColor : ['#41C6EB', '#00a65a', '#41C6EB', '#00c0ef', '#3c8dbc', '#d2d6de'],
       },
     ]
   }
   var donutOptions     = {
     maintainAspectRatio : false,
     responsive : true,
   }
   //Create pie or douhnut chart
   // You can switch between pie and douhnut using the method below.
   new Chart(donutChartCanvas, {
     type: 'doughnut',
     data: donutData,
     options: donutOptions
   })


   //-------------
   //- BAR CHART -
   //-------------
   
   var barChartCanvas = $('#bar').get(0).getContext('2d')
   var barChartData = {
     labels: <?php echo json_encode($country); ?>,
     datasets: [
       {
        label: 'Demand',
         data: <?php echo json_encode($demand); ?>,
         backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de','#85FCE0'],
       },

       {
        label: 'Supplied',
         data: <?php echo json_encode($supply); ?>,
         backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de','#85FCE0'],
         
       },

     ]
   }
   var barChartOptions     = {
     maintainAspectRatio : false,
     responsive : true,
   }
   //Create pie or douhnut chart
   // You can switch between pie and douhnut using the method below.
   new Chart(barChartCanvas, {
     type: 'bar',
     data: barChartData,
     options: barChartOptions
   })

   
   
  

   
 })

</script>