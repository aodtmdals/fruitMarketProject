/**
 * subMenu.js
 */
 $(document).ready(function() {	
	
	//[전체보기 ▼]버튼 클릭 시 모든 서브 메뉴 항목 보이게
	$('#showAllMenu').on('click',function(){
		if($(this).text() == '제철과일 ▼'){
			$('#subMenuBox').css('visibility','visible');
			$(this).text('메뉴 닫기 ▲').css('color','black').css('display','inline')
			.css('padding','10px 32px').css('font-size','small'); 
			} else {
				$('#subMenuBox').css('visibility','hidden');
			$(this).text('제철과일 ▼').css('color','gray').css('display','inline')
			.css('padding','10px 32px').css('font-size','small'); 
		}
		
	});
	
	
	});