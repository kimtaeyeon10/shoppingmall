$(function(){
	$("#header .header_in .menu h2").click(function(){
		$("#header .header_in #nav").fadeToggle();
	});

	$("#nav > ul > li").mouseenter(function(){
		$(this).find(".depth2").stop().slideDown();
	});

	$("#nav > ul > li").mouseleave(function(){
		$(this).find(".depth2").stop().slideUp();
	});

	

});