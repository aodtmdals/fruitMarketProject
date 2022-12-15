
const confirmCheck = document.getElementById("not-confirm-message");
const chatList = document.querySelectorAll(".chat-list"); 
const chatTitle = document.querySelectorAll("#chat-title");
const dropdown = document.getElementById("more-dropdown");
const dropdownItem = document.querySelectorAll(".dropdown-item");
const moreBtn = document.getElementById("more-btn"); 

let clickCount =  0;
let headerClickCount = 0; 

function buttonChange(){
    if(inputMsg.value){
        questionBtn.disabled = false;
    } else{
        questionBtn.disabled = true;
    }
}


$(document).ready(function(){

    //메세지 버튼 활성화
    $('#send-message').on('keyup', function(){
        let onMessage = $('#send-message').val();
        if(onMessage){
            $('#question-button').prop("disabled", false)
        } else{
            $('#question-button').prop("disabled", true)
        }
    });

    //안 읽은 메세지 띄우기
    $('#not-confirm-message').on('change', function(){
        if($('#not-confirm-message').prop('checked')){
            //db에서 받아와 처리하기
        }
    });
    
    //메세지 띄우기 
    $('#questionFrm').on('submit', function(){
        event.preventDefault();

        let formData = $(this).serialize();
        
        $.ajax({
            type:"post",
            url:"chatting",
            data: formData,
            success:function(result){
                if(result != ""){
                    for(let i=1; i < result.length; i++){
                        
                        //날자 세팅
                        let today = new Date(result[i].chatDate);
                        let yesterday = new Date(result[i-1].chatDate);
                        let amPm = '오후';
                        let hours = today.getHours();
                        let minutes = today.getMinutes();

                        if(hours >= 12) { // 시간이 12보다 클 떄, PM으로 변경 후, 12시간을 빼준다.
                            amPm.innerText = '오전';
                            hours = hours - 12;
                        }

                        hours = hours.toString().padStart(2, '0');

                        //하루가 지났으면 표시해주기
                        if(today.getDate() > yesterday.getDate()){
                            $('#message-area').append(`<div class="message-time">' + 
                                ${today.getFullYear()}년 ${today.getMonth() + 1}월 ${today.getDate()}일
                            </div>`)
                        }
                            $('#message-area').append(`
                        <div class="recive-msg-box">
                            <span class="profile-img"><img src="/image/${result[i].rcvImg}"/></span>
                            <div class="recive-msg">
                                <span>
                                    ${result.sendMsg}
                                </span>
                            </div>
                            <div class="msg-time">${amPm} ${hours}시 ${minutes}분</div>
                        </div>`)
                    }
                }
            }
        });
    });

});

function notRead(){
    for(let items = 0; items < chatTitle.length; items++){
        let item = chatTitle[items];
        for(let elements = 0; elements < item.childNodes.length; elements++){
            let element = item.childNodes[elements];
            readClass = element.className;

            if(readClass == 'not-read'){
                console.log("true");
                item.className += 'not-read-list';
            }
        }
    }
}

function ischecked(){
    if(confirmCheck.checked == true){
        for(let items = 0; items < chatTitle.length; items++){
            let item = chatTitle[items];
            console.log(item);
            if(item.className != 'not-read-list'){
                chatList[items].classList.add("hidden");
            }
        }
    }
    else{
        for(let items = 0; items < chatTitle.length; items++){
            for(let elements = 0; elements < chatList[items].classList.length; elements++){
                if(chatList[items].classList[elements] == "hidden"){
                    chatList[items].classList.remove("hidden");
                }
            }
        }
    }
}

function showDropdown(){
    dropdown.classList.remove("hidden");
}
function hiddenDropdown(){
    dropdown.classList.add("hidden");
}

moreBtn.addEventListener('click', function(){
    clickCount++;
    if(clickCount%2 == 0){
        hiddenDropdown();
    }else{
        showDropdown();
    }
});

for(let item = 0; item < dropdownItem.length; item++){
    dropdownItem[item].addEventListener('click', function(event){
        clickCount = 0;
        event.preventDefault();
        hiddenDropdown();
    });
}

notRead();