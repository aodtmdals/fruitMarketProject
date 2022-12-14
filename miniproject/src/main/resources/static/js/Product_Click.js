/**
 * Product_Click.js
 */
 
 $(document).ready(function() {
	
	$('#tab li').on('click', function() {

		 var index = $(this).index();
		 
		 if (index == 1) {
			 $('#a2').css('display', 'block');
			 $('#a1').css('display', 'none');
			 $('#a3').css('display', 'none');
		 } else if (index == 2) {
			 $('#a3').css('display', 'block');
			 $('#a1').css('display', 'none');
			 $('#a2').css('display', 'none');
		 }else {
			  $('#a1').css('display', 'block');
			 $('#a2').css('display', 'none');
			 $('#a3').css('display', 'none');
		}
	 });
	
	
	$('#Btns_td').on('click', function(){
		alert('장바구니에 넣었습니다');
  		//window.location.href ="/fruit/cartListView";

		
	});	
	
	
	$('#orderBtn').on('click', function(){
		alert('주문완료했습니다.');
	});	
	
	$('#reviewbtn1').on('click', function(){
		alert('상품평작성완료');
	});	
	
	$('#reviewbtn2').on('click', function(){
		alert('문의하기작성완료');
	});	
	
		
	$('#cartQty').on('change', function(){
				
				optNum = parseInt($(this).val());
				
				var total = optNum * $("#fruPrice").val();
				
				$("#amount").html(total.toLocaleString());
				
	});
				
});
	
	
	
	
	
	
	
	