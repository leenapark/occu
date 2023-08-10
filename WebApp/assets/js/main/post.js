
document.addEventListener("DOMContentLoaded", function() {
  // DOMContentLoaded 이벤트가 발생했을 때 실행될 코드
  const postButton = document.getElementById("postButton");
  const contentTextarea = document.getElementById("content");
  const imageInput = document.getElementById("imageInput");

 function checkInputs() {
    const contentValue = contentTextarea.value.trim();
    const fileValue = imageInput.value;

    // 글 입력 여부와 이미지 첨부 여부 확인하여 버튼 활성화/비활성화
    if (contentValue.length > 0 || fileValue !== '') {
      postButton.disabled = false;
    } else {
      postButton.disabled = true;
    }
  }

  // contentTextarea와 imageInput의 입력 내용을 모니터링하여 버튼 활성화/비활성화
  //contentTextarea.addEventListener("input", checkInputs);
 // imageInput.addEventListener("change", checkInputs);

// contentTextarea와 imageInput의 입력 내용을 모니터링하여 버튼 활성화/비활성화
        contentTextarea.addEventListener("input", checkInputs);
        imageInput.addEventListener("change", function (event) {
          
        });

      
    });





