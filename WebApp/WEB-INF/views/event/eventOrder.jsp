<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/occu.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/event.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" type="text/css">

<!-- jquery import -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

<!-- bootstrap import -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<title>O'CCU event</title>
</head>
<body>
	<div id="wrap">

		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- header -->
		
		
		<div class="main">

			<div class="event_container">

				<div class="form_header">
					<a href="${pageContext.request.contextPath}/event/" style="text-decoration: none;"> <i class="bi bi-backspace-fill"></i>
					</a> <span class="form_title">주문이 완료되었습니다.</span>
				</div>


				<div class="components">
					<form action="" class="form_group">
						 <div class="pay_info">
						 	
						 	<div class="pay_title">
						 		<span>
						 			결제 정보
						 		</span>
						 	</div>
						 	<div class="pay_btn_group">
						 		<button class="pay_btn">
						 			안심 결제
						 		</button>
						 		<button class="pay_btn">
						 			계좌 입금
						 		</button>
					 		</div>
						 </div>
					</form>
				</div>

			</div>

		</div>
		<!-- main -->

		<div class="side_right"></div>
		<!-- side_right -->


	</div>

</body>


</html>
