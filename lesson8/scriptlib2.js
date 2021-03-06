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
        var airtable_read_endpoint = "https://api.airtable.com/v0/app4whLYa3fH8o7o5/My%20drama%20list%20data?maxRecords=3&view=Grid%20view";
        var dataSet = [];
        $.getJSON(airtable_read_endpoint, function(result) {
               $.each(result.records, function(key,value) {
                   items = [];
                       items.push(value.fields.company);
                       items.push(value.fields.product_code);
                       items.push(value.fields.product_no);
                       items.push(value.fields.geocode2);
                       items.push(value.fields.json);
                       items.push(value.fields.gender);
                       items.push(value.fields.name);
                       dataSet.push(items);
                       console.log(items);
                }); // end .each
                console.log(dataSet);

             $('#table1').DataTable( {
                 data: dataSet,
                 retrieve: true,
                 columns: [
                     { title: "Company",
                       defaultContent:""},
                     { title: "Product",
                         defaultContent:"" },
                     { title: "Number",
                       defaultContent:"" },
                     { title: "Geo Code",
                       defaultContent:""},
                     { title: "JSON",
                         defaultContent:""},
                     { title: "Gender",
                       defaultContent:""},
                     { title: "Name",
                       defaultContent:""},
                 ]
             } );
        }); // end .getJSON
     }); // end button

}); // document ready
