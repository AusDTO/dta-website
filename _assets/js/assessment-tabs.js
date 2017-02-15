
$(document).ready(function(){

	$('.assessment-reports ul li a').click(function(){
		var tab_id = $(this).attr('href');

		$('.assessment-reports ul li a').removeClass('is-current');
		$('.tab-pane').removeClass('active');

		$(this).addClass('is-current');
		$(tab_id).addClass('active');
	})

})
