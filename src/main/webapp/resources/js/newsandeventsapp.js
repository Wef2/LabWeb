$(document).ready(function() {
	
	$("#newsImageDiv").on('click', function(event) {

		$('html, body').animate({
			scrollTop : $('#newsDiv').offset().top
		}, 800);
	});
	
	$("#eventsImageDiv").on('click', function(event) {

		$('html, body').animate({
			scrollTop : $('#eventsDiv').offset().top
		}, 800);
	});
		
	$(".col-sm-6").on('mouseover', function(event){
		$(this).css("cursor","pointer");
		$(this).find("h2").css("color","#3399FF");
	});
	
	$(".col-sm-6").on('mouseout', function(event){
		$(this).find("h2").css("color","#303030");
	});
});