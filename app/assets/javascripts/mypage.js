$(function(){
  $("li.mypage-list").hover(
    function(){
      $(this).css("background-color","#cccccc")
    },
    function(){
      $(this).css("background-color","")
    });
});

$(function(){
  $(".mypage-contents__menu").hover(
    function(){
      $(this).css("color","#666666")
    },
    function(){
      $(this).css("color","")
    });
})