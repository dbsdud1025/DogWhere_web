$(function(){
// 스와이프
var swiper = new Swiper(".mySwiper", {
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});


  // 헤더
  $('.picture .picture_img p').click(function(){
    $(".login_after_menu").slideToggle(100);
  })

  $(window).scroll(function(){
      if ($(window).width() <= 768) {
      if($(window).scrollTop() > 10){
        $("#header").addClass('fixed');
      }else{
        $("#header").removeClass('fixed');
      }
    }
  });

// 서브메뉴
  $('#makerspace_menu li').click(function(){
    var index = $(this).index();
    var menu = $('.sub_menu ul').eq(index);

    if($(this).hasClass('point')){
      $(this).removeClass('point');
    }else{
      $('#makerspace_menu li').removeClass('point');
      $(this).addClass('point');
    }

    if(menu.hasClass("on")){
      $('.sub_menu ul').removeClass('on');
    }else{
      $('.sub_menu ul').removeClass('on');
      menu.addClass('on');
    }
  });

  $('.sub_menu ul li').click(function(){
    $('.sub_menu ul li').removeClass('point');
    $(this).addClass('point');
  });







});
