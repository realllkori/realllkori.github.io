$(document).ready(function(){

    $("button#hide_h2").click(function() {
        $("h2").hide(500);
    });



    $("button#clear_screen").click(function() {
        var $x = $("container");
        $x.empty();
    });

    
     $("button#get_data2").click(function() {
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

           $('#table2').DataTable( {
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
                  x: {label: 'Country/Region'},
                  y: {label: '# of variety_shows'}
                },
                bar: {
                    title: "# of Variety_shows by Country_region Category:",
                }
            });
            

      }); // end .getJSON

   }); // end button

}); // document ready
