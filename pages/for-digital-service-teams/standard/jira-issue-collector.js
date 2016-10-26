if (jQuery(window).width() > 580) {
	window.ATL_JQ_PAGE_PROPS =  {
		"triggerFunction": function(showCollectorDialog) {
		//Requries that jQuery is available! 
			jQuery(".feedbackTrigger").click(function(e) {
				e.preventDefault();
				showCollectorDialog();
			});
		}
	};
}