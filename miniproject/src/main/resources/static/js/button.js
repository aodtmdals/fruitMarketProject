/**
 * 
 */
 $(document).ready(function(){


 $('#buttonBox > #btn').on('click', function() {
	var randomNum = Math.floor(Math.random() *3+1); 
	var imgStr= "image/fruit0" + randomNum + ".jpg";
	$('#random img').attr('src', imgStr);

});
});
function new_window() {
          var uri="/fruit/detailViewFruit/${fru.fruNo}";
         
          var Option="width=400, height=300, top=50, left=50";
          window.open(uri, Option);
      
      }

function btn(){
	
      alert("회원만 이용 가능합니다");
    };
    
 
function newba()  {
  window.location.href ="child/SpBasket/SpBasket2.html";
};



