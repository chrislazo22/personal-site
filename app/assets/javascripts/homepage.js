$('#contact-me').html("<%= j render 'contact_form' %>");
$('#flash-message').html("<%= j render 'flash' %>").delay(3000).fadeOut(4000);
