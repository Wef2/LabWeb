$(document).ready(function() {
	
	$("#aboutImageDiv").on('click', function(event) {

		$('html, body').animate({
			scrollTop : $('#labDiv').offset().top
		}, 800);
	});
	
	$("#contactImageDiv").on('click', function(event) {

		$('html, body').animate({
			scrollTop : $('#mapDiv').offset().top
		}, 800);
	});
	
	$("#peopleImageDiv").on('click', function(event) {

		$('html, body').animate({
			scrollTop : $('#peopleDiv').offset().top
		}, 800);
	});
	
	$(".logoDiv").on('mouseover', function(event){
		$(this).css("cursor","pointer");
		$(this).find("h2").css("color","#3399FF");
	});
	
	$(".logoDiv").on('mouseout', function(event){
		$(this).find("h2").css("color","#303030");
	});
});