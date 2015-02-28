$(document).ready(function(){
  $('.show_ans').on("submit", function(event){
    event.preventDefault()
    $('#riddle_ans').show();
    console.log("hey")
  })
})