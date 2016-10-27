
$(document).ready(function(){

	$('nav.inline-tab-nav ul li a').click(function(){
		var tab_id = $(this).attr('href');

		$('nav.inline-tab-nav ul li a').removeClass('is-current');
		$('.tab-pane').removeClass('active');

		$(this).addClass('is-current');
		$(tab_id).addClass('active');
	})

})
