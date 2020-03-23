$.extend( $.fn.dataTable.FixedHeader, {
              responsive: true
          } );

$(document).ready(function() {

          var table = $('#myTable').DataTable( {
              /* rowReorder: {
              selector: 'td:nth-child(2)'
              }, */
              responsive: true,
              dom: 'Bfrtip',
              select: true,
              buttons: [
                  {
                      text: '更新犬種訊息',
                      action: function ( e, dt, node, config ) {
                          recEntry = dt.row( { selected: true } ).data();
                          openForm(recEntry,'update');
                      },
                      enabled: false
                  },
                  {
                      text: '刪除犬種訊息',
                      action: function ( e, dt, node, config ) {
                          recEntry = dt.row( { selected: true } ).data();
                          openForm(recEntry,'delete');
                      },
                      enabled: false
                  },
                   {
                    text: '增添犬種',
                    action: function ( e, dt, node, config ) {
                        // alert( 'Button activated' );
                         recEntry = []
                         openForm(recEntry,'add');
                    }
                   }
              ]
          } );

          table.on( 'select deselect', function () {
              var selectedRows = table.rows( { selected: true } ).count();

              table.button( 0 ).enable( selectedRows === 1 );
              table.button( 1 ).enable( selectedRows > 0 );
          } );

      } );

          function openForm(recEntry,whichForm) {
            
              if (whichForm == 'add') {
                 $("#myAddForm").modal();
                  // document.getElementById("add_product_id").value = recEntry[0];
                  document.getElementById("add_DogType").value = recEntry[0];
                  document.getElementById("add_dog_size").value = '';
                  document.getElementById("add_function").value = '';
                  document.getElementById("add_specialty").value = '';
                  // document.getElementById("add_record_id").value = recEntry[0];
              } else if (whichForm == 'update') {
                 $("#myUpdateForm").modal();
                  document.getElementById("upd_dog_name").value = recEntry[0];
                  document.getElementById("upd_dog_size").value = '';
                  document.getElementById("upd_function").value = '';
                  document.getElementById("upd_specialty").value = '';
              } else {
                  $("#myDeleteForm").modal();
                  document.getElementById("del_dog_name").value = recEntry[0];
                  document.getElementById("del_size").value = recEntry[1];
                  document.getElementById("del_function").value = recEntry[2];
                  document.getElementById("del_specialty").value = recEntry[3];
              }
          }

          function closeForm(whichForm) {
     
            if (whichForm == 'add') {
                document.getElementById("myAddForm").style.display = "none";
            } else if (whichForm == 'update') {
                document.getElementById("myUpdateForm").style.display = "none";
            } else  if (whichForm == 'close'){
                document.getElementById("myDeleteForm").style.display = "none";
            }
          }