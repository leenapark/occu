
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O'CCU SIGN UP</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/main/landing.js"></script>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<!--리셋css-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pandas.css" type="text/css">
<!--user css-->


</head>
<body>
	<div id="wrap">

		<div class="panda">
			<div class="ear"></div>
			<div class="face">
				<div class="eye-shade"></div>
				<div class="eye-white">
					<div class="eye-ball"></div>
				</div>
				<div class="eye-shade rgt"></div>
				<div class="eye-white rgt">
					<div class="eye-ball"></div>
				</div>
				<div class="nose"></div>
				<div class="mouth"></div>
			</div>
			<div class="body"></div>
			<div class="foot">
				<div class="finger"></div>
			</div>
			<div class="foot rgt">
				<div class="finger"></div>
			</div>
		</div>
	
			<!-- loginbox -->
			<div class="loginbox">
				<form name="loginForm" action="${pageContext.request.contextPath}/login">
					<div class="hand"></div>
					<div class="hand rgt"></div>
					<h1>O'CCU Login</h1>
					<div class="form-group">
						 
							<input type="text" name="email" class="inputbox form-control" required="required" placeholder="E-mail를 입력해주세요">
						
					</div>
					<div class="form-group">
							<input type="text" name="password" class="inputbox form-control" required="required" placeholder="비밀번호를 입력해주세요">
			
						<c:if test="${param.result == 'fail' }">
			      			<span id="failLogin">아이디 또는 비번을 확인해 주세요.</span>
			      		</c:if>					
						
					</div>
					<span class="submit submitBox"> 
							<p class="alert">Invalid Credentials..!!</p>
							<button class="btn" type="submit" value="로그인">LOGIN</button>
						</span>
				</form>


				<ul class="loginMenu">
					<li><a href="${pageContext.request.contextPath}/user/joinform" id="joinform" class="link-join" data-clk="log_off.join"> 회원가입 </a></li>
					<li class="idsearch"><a href="" id="findID" class="d-link" data-clk="log_off.searchID"> 아이디 찾기 </a></li>
					<li><a href="" id="findPass" class="d-link" data-clk="log_off.searchPass"> 비밀번호 찾기 </a></li>
				</ul>

			</div>
			<!-- loginbox -->


			
			<%-- <!— login social —>
			<a id="reauthenticate-popup-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=8d1281e9c14b86fda8651f0b64c4769e&redirect_uri=http://localhost:8088/closet/user/kakao&response_type=code">
			<!— <a id="reauthenticate-popup-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=8d1281e9c14b86fda8651f0b64c4769e&redirect_uri=http://61.79.192.4:2405/closet/user/kakao&response_type=code"> —>
			  <img
			    src="${pageContext.request.contextPath}/assets/images/kakao_login.png"
			    width="222"
			  />
			</a>
			<p id="reauthenticate-popup-result"></p>
			<!— login social —> —--%>
			
		</div>



	</div>
</body>