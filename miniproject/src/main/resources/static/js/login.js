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
				}); 
	});