    $(document).ready(function() {
 
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