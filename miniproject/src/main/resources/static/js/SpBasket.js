/**
 * SpBasket.js
 */
 
 $(document).ready(function(){
				// btn 클릭했을 때
				$('#btnimg1').on('click', function(){
					alert("전체화면으로 돌아갑니다.");
					
				});
				$('#btnimg2').on('click', function(){
					alert("장바구니가 비었습니다.");
					
				});
				$('#btnimg3').on('click', function(){
					confirm("선택한 상품을 삭제하시겠습니까?");
					if(ture)
						alert("삭제 되었습니다.");	
				});
				$('#btnimg4').on('click', function(){
					confirm("장바구니를 비우시겠습니까?");
					if(ture)
						alert("전체삭제 되었습니다.");
					
				});
				$('.button').on('click', function(){
					alert("장바구니가 비었습니다.");
					
				});
				
});
					
