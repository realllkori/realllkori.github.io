$(document).ready(function(){
  var  items = [];
  var i = 0;
  var airtable_read_endpoint = "https://api.airtable.com/v0/appJWWovfxpfQ27J5/%E6%8E%A8%E8%96%A6%E7%8B%97%E9%9A%BB?api_key=keybXfluNBh6MO4fz";
  var dataSet = [];
  $.getJSON(airtable_read_endpoint, function(result) {
         $.each(result.records, function(key,value) {
           items = [];
           items.push(value.fields.ranking_by_us);
           items.push(value.fields.dog_type);
           items.push('<img src="' + value.fields.image_url + '" width = "100px">');
            items.push(value.fields.type);
            items.push(value.fields.size);
            items.push(value.fields.born_place);
            items.push(value.fields.hot_place);
            items.push(value.fields.fur);
            items.push(value.fields.no_roar);
            items.push(value.fields.average_lifespan);
            items.push(value.fields.other_qualities);
            dataSet.push( items);
          }); // end .each
       $("#table1").DataTable( {
           data:  dataSet,
           scrollY:'100vh',
           "scrollX": true,
           scrollCollapse:true,
           retrieve: true,
           columns: [
             { title: "推薦排名",
                 defaultContent:"" },
             { title: "狗隻種類",
               defaultContent:"" },
             { title: "圖片",
               defaultContent:""},
             { title: "種類",
             defaultContent:""},
             { title: "體型",
               defaultContent:"" },
             { title: "產地",
               defaultContent:"" },
             { title: "耐熱",
               defaultContent:""},
             { title: "不掉毛",
               defaultContent:""},
             { title: "不愛叫",
               defaultContent:""},
             { title: "平均壽命",
               defaultContent:""},
             { title: "其他特質",
               defaultContent:""},
            ],
            initComplete: function () {
             this.api().columns().every( function () {
             var column = this;
             var select = $('<select><option value=""></option></select>')
                 .appendTo( $(column.footer()).empty() )
                 .on( 'change', function () {
                     var val = $.fn.dataTable.util.escapeRegex(
                         $(this).val()
                     );

                     column
                         .search( val ? '^'+val+'$' : '', true, false )
                         .draw();
                 } );

             column.data().unique().sort().each( function ( d, j ) {
                 select.append( '<option value="'+d+'">'+d+'</option>' )
             } );
             } );
             }
             } );
    
             $("button#geo_differ").click(function() {
              var table3_items = [];
              var i = 0;
              var airtable_read_endpoint =
              "https://api.airtable.com/v0/appJWWovfxpfQ27J5/%E6%95%B8%E6%93%9A?api_key=keybXfluNBh6MO4fz";
              var table3_dataSet = [];
              $.getJSON(airtable_read_endpoint, function(result) {
                     $.each(result.records, function(key,value) {
                         table3_items = [];
                             table3_items.push(value.fields.district_name);
                             table3_items.push(value.fields.amount);

                             table3_dataSet.push(table3_items);
                             console.log(table3_items);
                      }); // end .each
                      console.log(table3_dataSet);
                     $('#table3').DataTable( {
                         data: table3_dataSet,
                         retrieve: true,
                         ordering: false,
                         columns: [
                             { title: "區域名稱",
                               defaultContent:""},
                             { title: "狗狗寄養所數量",
                               defaultContent:""},
                           ] // rmf columns
                       } ); // end dataTable

                var chart = c3.generate({

                     size: {
                     height: 400,
                     width: 1060
                    },
                     data: {
                     columns: table3_dataSet,
                     type : 'bar',
                     labels: true
                     },

                     axis: {
                     x: {label: '區域名稱'},
                     y: {label: '狗狗寄養所數量'},
                     },
                     tooltip: {
                     grouped: false
                     },

            } );
            setTimeout(function () {
                chart.transform('pie', table3_dataSet);
            }, 1000);


          }); // end .getJSON
        });// end button
      }); // document ready
    }); // document ready