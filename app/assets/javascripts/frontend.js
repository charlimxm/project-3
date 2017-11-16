$(document).on('turbolinks:load', function () {

  $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrainWidth: true, // Does not change width of dropdown to that of the activator
      hover: true, // Activate on hover
      gutter: 0, // Spacing from edge
      belowOrigin: true, // Displays dropdown below the button
      alignment: 'left', // Displays dropdown with edge aligned to the left of button
      stopPropagation: false // Stops event propagation
    });

   $('#textarea1').val('New Text');
   $('#textarea1').trigger('autoresize');
   $('select').material_select();
   $('.parallax').parallax();
   $('ul.tabs').tabs();
   $('.slider').slider();
   $('.scrollspy').scrollSpy();
   $(".button-collapse").sideNav();
  $('.tooltipped').tooltip({delay: 50});
})
