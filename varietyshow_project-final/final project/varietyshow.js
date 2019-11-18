$(document).ready(function(){

  $("button#hide_h2").click(function() {
      $("h2").hide(500);
  });

  $("button#show_h2").click(function() {
      $("h2").show(300);
      $("h2").css("color","blue");
      $("h2").html("You clicked me hard.");
  });

  $("button#clear_screen").click(function() {
      var $x = $("container");
      $x.empty();
  });

  $("button#get_data").click(function() {
      var items = [];
      var i = 0;
      var airtable_read_endpoint = "https://api.airtable.com/v0/app4whLYa3fH8o7o5/country_region?api_key=keyM1aAqd43JCzCMJ";
      var dataSet = [];
      $.getJSON(airtable_read_endpoint, function(result) {
        $.each(result.records, function(key,value) {
            items = [];
                items.push(value.fields.country_region);
                items.push(value.fields.total_amount);
                dataSet.push(items);
                console.log(items);
         }); // end .each
         console.log(dataSet);
         
         $('#table1').DataTable( {
          data: dataSet,
          retrieve: true,
          columns: [
              { title: "country_region",
                defaultContent:""},
              { title: "total_amount",
                  defaultContent:"" },
          ]
           } );
           var chart = c3.generate({
            data: {
                columns: dataSet,
                type : 'bar'
            },
            axis: {
              x: {label: 'country_region'},
              y: {label: '# of shows'}
            },
            bar: {
                title: "# of shows by country_region",
            }
        });
      }); // end .getJSON
   }); // end button

}); // document ready
