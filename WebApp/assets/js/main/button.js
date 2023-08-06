$(document).ready(function() {
    // 각 드롭다운 버튼에 클릭 이벤트 리스너 추가
    $('[id^="dropDown-"]').click(function() {
        var postId = this.id.split("-")[1];
        $('#dropDownMenu-' + postId).toggleClass('drop-down__active');
    });
});

