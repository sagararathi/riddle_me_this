$(document).ready(function(){
  $('.show_ans').on("submit", function(event){
    event.preventDefault()
    $('#riddle_ans').toggle();
    if($('.ans_btn').attr('value') === "Show Answer"){
      $('.ans_btn').attr('value', "Hide Answer")
    } else {
      $('.ans_btn').attr('value', "Show Answer")
    }
  })

  $('.show_new_form').on("click", function(){
    $('.new_comment_form').toggle()
  })

})