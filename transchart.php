<script>
     //-------------
   //- BAR CHART -
   //-------------
   
   var barChartCanvas = $('#bar').get(0).getContext('2d')
   var barChartData = {
     labels: <?php echo json_encode($month); ?>,
     datasets: [
       {
        label: <?php
             $years = date('Y');
            echo $years ?>,
         data: <?php echo json_encode($amount); ?>,
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
     type: 'line',
     data: barChartData,
     options: barChartOptions
   })

   
</script>