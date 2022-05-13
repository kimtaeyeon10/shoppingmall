$(function(){
	
	var swiper = new Swiper('.main_slider', {
		loop: true,
		
		autoplay: {
			delay: 6000,
			disableOnInteraction: false,
		  },
	  
		pagination: {
		  el: '.main_pagi',
		},
	  
		navigation: {
		  nextEl: '.main_next',
		  prevEl: '.main_prev',
		},
	});

});