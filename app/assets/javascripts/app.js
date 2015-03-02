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


  $('#new_riddle_vote').on("submit", function(event){
    event.preventDefault();
    var url = $(this).attr("action");
    $.ajax({
      type: "post",
      url: url,
      dataType: "json",
      success: function(response){
        $("#riddle_upvotes").text(response)
      }
    });
  });















function reverse(s){
   return s.split("").reverse().join("");
}

function getNumber(s){
  return s.match(/\d+/)[0]
}













  $(".new_comment_vote").on("submit", function(event){
    event.preventDefault();
    var url = $(this).attr("action");

    var reversed_url = reverse(url)
    var reversed_comment_id = getNumber(reversed_url)
    var finallyTheId = reverse(reversed_comment_id)

    $.ajax({
      type: "post",
      url: url,
      dataType: "json",
      success: function(response){
        $("#" + finallyTheId).text(response)
      }
    })
  })

})