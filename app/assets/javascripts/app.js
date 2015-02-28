$(document).ready(function(){
  $('.show_ans').on("submit", function(event){
    event.preventDefault()
    $('#riddle_ans').show();
  })

  $('.show_new_form').on("click", function(){
    $('.new_comment_form').toggle()
  })

})