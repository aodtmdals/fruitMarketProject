/**
 * Product_Click.js
 */
 
 $(document).ready(function() {
	
	$('.tabtab').on('click', function() {

		 var index = $(this).index();
		 
		 if (index == 1) {
			 $('#a2').css('display', 'block');
			 $('#a1').css('display', 'none');
			 $('#a3').css('display', 'none');
			 
		 } else if (index == 2) {
		 if (confirm("상품 문의 페이지로 이동하시겠습니까?") == true){  
		     window.location.href ="/chat";
		     }else{ 
		     	return false;
		     }
			 //$('#a3').css('display', 'block');
			 //$('#a1').css('display', 'none');
			 //$('#a2').css('display', 'none');
			
 				
		 }else {
			  $('#a1').css('display', 'block');
			  $('#a2').css('display', 'none');
			  $('#a3').css('display', 'none');
		}
	 });
	
	
	$('#Btns_td').on('click', function(){
		alert('장바구니에 넣었습니다');
	});	
	
	
	$('#orderBtn').on('click', function(){
		alert('주문완료했습니다.');
	});	
	
		
	$('#cartQty').on('change', function(){
				
				optNum = parseInt($(this).val());
				
				var total = optNum * $("#fruPrice").val();
				
				$("#amount").html(total.toLocaleString());
				
	});
	
	$('#selectBox').on('change', function(){
			let selected = $("#selectBox option:selected").val();
			
			if(selected == "recommend"){
				location.href = "/fruit/fruitrecomList";
            	localStorage.setItem("selectValue", selected);
			}
			else if(selected == "name"){
				location.href = "/fruit/fruitNameList";
            	localStorage.setItem("selectValue", selected);
			}
			else if(selected == "newest"){
				location.href = "/fruit/fruitNewestList	";
            	localStorage.setItem("selectValue", selected);
			}
	});
	
	let selectValue = localStorage.getItem("selectValue");
    $(`#${selectValue}`).prop('selected','selected');
	
	
	$('.dontBtn').on('click', function() {
		var index = $(this).index();
		 
		 if (index == 1) {
			 alert('회원가입 후 이용해주세요');
			 window.location.href ="/member/joinForm";
			 }else{
			 alert('로그인 후 이용해주세요');
			 window.location.href ="/member/loginForm";
		}
	});
		
});
	
	
	
	
	
	
	
	