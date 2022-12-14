/**
 * join.js
 */
 
 $(document).ready(function(){
		// 실행 시작 시 id에 포커스
		$('#id').focus();
		
		// focus / blur 이벤트 처리
		// input 텍스트 입력란과 비밀번호 입력란에 포커스 있을 때 색상 변경 : rgb(232, 232, 232))
		//이벤트 유형 : focus
		$('input[type="text"], input[type="password"]').on('focus', function() {
			$(this).css('background', 'rgb(255,255,255)');
		});
		
		// 포커스 잃을 때 배경색 : white
		// 이벤트 유형 : blur
		// input[type= 생략 
		$(':text, :password').on('blur', function() {
			 $(this).css('background', 'white');
		 });

		// 키보드 이벤트 : keyup
		// 휴대폰 번호 첫 번째 번호 입력라에서 010 (3개) 입력되면 두 번재 입력란으로 포커스 이동
		$('#hp1').on('keyup', function() {
			if($(this).val().length == 3)
				$('#hp2').focus();   // $(this).next().focus();
		});

		// 두 번째 입력란에서 입력값이 4개가 되면 세 번째 입력란으로 포커스 이동
		$('#hp2').on('keyup', function() {
			if($(this).val().length == 4)
				$('#hp3').focus();   // $(this).next().focus();
		});
	
		// newMemberForm 폼의 [완료] 버튼 클릭했을 때 : type='submit' (submit 이벤트 발생)
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
			
			
			
	

		}); // 폼 submit 끝	
	});
	
	
	
	
	
	
	
	
	
	
	
	
	