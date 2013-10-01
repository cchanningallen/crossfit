// listens for ajax call from 'Add WOD' btn, intercepts, renders
$('.new-wod-trigger').ready(function(){
  console.log("listening to new wod trigger");
  show_in_detail_view($(this));
});

$('tr').ready(function(){
  console.log("listening to table row");
  show_in_detail_view($(this));
});

$('')

// calls row link action for click anywhere in tr
// $('.show-wod').ready(function(){
//   var $tr = $(this)
//   $tr.on('click', function(){
//     console.log("clicked!")
//     return false;
//   });
// });

// // turns off row link functionality for el
// $('.no-row-link').ready(function(){
//   $('.no-row-link').click(function(e){
//     e.stopPropagation();
//   });
// });

function show_in_detail_view(jqel){
  var $jqel = jqel;
  console.log($jqel);
  $jqel.on("ajax:complete",function(e,data,status,xhr){ 
    console.log(e,data,status);
    $('.detail-view-frame').html(data['responseText']);
    format_focus_row($jqel);
  });
}

function format_focus_row(jqel){
  console.log("clicked!");
  console.log(jqel);
  // $('.lists-frame tr').removeClass('focus-row');
  jqel.addClass('focus-row');
}