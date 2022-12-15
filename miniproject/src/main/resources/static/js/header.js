    $(document).ready(function() {
	 	var header = $('header');
	
	    $(window).scroll(function() {
            if ($(this).scrollTop() > 100) {
	            if(!header.hasClass('shadow')){
	                header.addClass('shadow');
	            }
	        }else{
	            header.removeClass('shadow');
	        }
	    });
	    
        $("#upBtnBox").hide();
        $(function() {
 
            $(window).scroll(function() {
                if ($(this).scrollTop() > 100) {
                    $('#upBtnBox').fadeIn();
                } else {
                    $('#upBtnBox').fadeOut();
                }
            });
        });
 
    });