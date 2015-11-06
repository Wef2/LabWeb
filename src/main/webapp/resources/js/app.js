$("#goToMap").on('click', function(event){

 
  $('html, body').animate({
    scrollTop: $('#mapDiv').offset().top
  }, 800);
});