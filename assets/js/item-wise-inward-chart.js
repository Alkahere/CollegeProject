$(document).ready(function(){
  $.ajax({
    url: "assets/php/data-for-inward-graph-itemwise.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      var itemid = [];
      var itemname = [];
      var qty = [];

      for(var i in data) {
        itemid.push(data[i].id);
        itemname.push(data[i].name)
        qty.push(data[i].Qty);
      }

      var chartdata = {
        labels: itemname,
        datasets : [
          {
            label: 'Import Quantity',
            backgroundColor: 'rgba(200, 200, 200, 0.75)',
            borderColor: 'rgba(200, 200, 200, 0.75)',
            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
            hoverBorderColor: 'rgba(200, 200, 200, 1)',
            data: qty
          },
         ]};
      var ctx = $("#mycanvas1");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});