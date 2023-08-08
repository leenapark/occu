<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/occu.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/event.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	type="text/css">

<!-- jquery import -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

<!-- bootstrap import -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<!-- java script -->
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/formGo.js"></script> --%>

<title>O'CCU event</title>
</head>
<body>
	<div id="wrap">

		<header>
			<div class="container">
				<nav class="main_nav">
					<div class="logo">
						<a href="${pageContext.request.contextPath }/home"> <img
							alt=""
							src="${pageContext.request.contextPath }/assets/images/main_menu/logo_icon.png">
						</a>
					</div>


					<ul>
						<li><a href="${pageContext.request.contextPath }/home">
								<div class="home">
									<img alt="home"
										src="${pageContext.request.contextPath }/assets/images/main_menu/home_icon.png">
									<span> HOME </span>
								</div>
						</a></li>
						<li><a href="${pageContext.request.contextPath }/search">
								<div class="search">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/images/main_menu/search_icon.png">
									<span> SEARCH </span>

								</div>
						</a></li>
						<li><a href="${pageContext.request.contextPath }/dm">
								<div class="dm">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/images/main_menu/dm_icon.png">
									<span> CCUCHAT </span>
								</div>
						</a></li>
						<li><a href="${pageContext.request.contextPath }/event/">
								<div class="event">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/images/main_menu/event_icon.png">
									<span> EVENT </span>
								</div>
						</a></li>

						<li><a href="${pageContext.request.contextPath }/profile">
								<div class="profile">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/images/main_menu/profile_icon.png">
									<span> PROFILE </span>
								</div>
						</a></li>
						<li><a href="${pageContext.request.contextPath }/settings">
								<div class="settings">
									<img alt=""
										src="${pageContext.request.contextPath }/assets/images/main_menu/settings_icon.png">
									<span> SETTINGS </span>
								</div>
						</a></li>

					</ul>

				</nav>
			</div>
		</header>
		<!-- header -->
		<div class="main">
		
			<div class="event_container">

				<div class="form_header">
					<a href="${pageContext.request.contextPath}/event/" style="text-decoration:none;">
						<i class="bi bi-backspace-fill"></i>
					</a>
					<span class="form_title">주문이 완료되었습니다.</span>
				</div>


				<div class="components">
						
				</div>

			</div>

		</div>
		<!-- main -->

		<div class="side_right"></div>
		<!-- side_right -->


	</div>

</body>


<!-- java script (+ajax) -->
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/formGo.js"></script> --%>


</html>
