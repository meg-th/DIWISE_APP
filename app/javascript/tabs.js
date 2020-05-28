// $("li").on("click", function(){
//   $("LI").removeClass("selected");
//   $(this).toggleClass("selected", true);
// })

$(document).ready(function(){
  console.log("Im here")
  $('.alltabs').hide()
  $('.photos').show()
});

$(".tabtest a").on("click", function(){
  const filter = $(this).parent().attr('data-filter')
  console.log(filter)
  $('.alltabs').hide()
  $(filter).show()
  return false
})
