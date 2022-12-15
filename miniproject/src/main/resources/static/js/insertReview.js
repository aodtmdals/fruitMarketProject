/**
 * insertReview
 */
 
 $(document).ready(function() {
 
 

 $('#reviewDB').on('submit',function(){
 
 
 
 	event.preventDefault()
 
	 var formData = $(this).serialize();
 		$.ajax({
 			type:"post",
 			url:"/fruit/insertReview",
 			data:formData,
 			success:function(view){
 			  alert("상품평 등록 완료");
 				$("#reviewList").html(view);
 				
 			},
 			error:function(){
 				alert("하나의 상품평만 가능합니다.");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료
 
 });

});
 