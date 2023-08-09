
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
            checkInputs();
            previewImage(event);
        });

        // 미리보기 이미지
        function previewImage(event) {
            const fileInput = event.target;
            if (fileInput.files && fileInput.files[0]) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    previewImage.src = e.target.result;
                    previewImage.style.display = "block";
                };
                reader.readAsDataURL(fileInput.files[0]);
            } else {
                previewImage.src = "#";
                previewImage.style.display = "none";
            }
        }
    });




