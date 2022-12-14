/**
 * 
 */
 
  $(document).ready(function(){
		// 실행 시작 시 id에 포커스
		
		$('#id').focus();
		$('input[type="text"], input[type="password"]').on('focus', function() {
			$(this).css('background', 'rgb(255, 255, 255)');
		});
		
			
			
			$('#newMemberForm').on('submit', function(){
			event.preventDefault();
			// ID 입력하지 않은 경우 
			if ($('#id').val() == "") {
				// "아이디를 입력하세요" 출력
				alert("아이디를 입력하세요");
				// ID 입력란에 포커스
				$('#id').focus();
				// 서버로 전송되지 않도록 기능 막음
				return false;
			}
			
			// 비밀번호 입력하지 않은 경우 
			if ($('#pwd').val() == "") {
				// "비밀번호를 입력하세요" 출력
				alert("비밀번호를 입력하세요");
				// 비밀번호 입력란에 포커스
				$('#pwd').focus();
				// 서버로 전송되지 않도록 기능 막음
				return false;
			}
			
			$.ajax({
 			type:"post",
 			url:"/member/login",
 			data: {"id":$('#id').val(),
 			            "pwd":$('#pwd').val()},
 			dataType:'text',
 			success:function(result){
 				if(result == "success"){
 					alert("로그인 성공\n index 페이지로 이동합니다.");
 					location.href="/";
 				}else{
 					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 				}
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
				});
				 
	});