
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/occu.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/post.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/message.css" type="text/css">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/main/button.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/main/post.js"></script>

<title>O'CCU</title>

</head>
<body>
	<div id="wrap">
		
		<!-- header -->
    	<jsp:include page="/WEB-INF/views/include/header.jsp"/>
    	
    <!-- header -->
	<div class="main"> 
	  <div id="feedArea">
	       <jsp:include page="/WEB-INF/views/main/postForm.jsp"/>
	       <jsp:include page="/WEB-INF/views/main/timeline.jsp"/>
	  </div>
	
	</div>
	<div class="side_right">
		
	 </div>
		

	</div>

</body>
</html>