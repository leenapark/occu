
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O'CCU SIGN UP</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/landing.css" type="text/css">
<!--user css-->


</head>
<body>
	<div class="container">

		
			
			<!-- loginbox -->
			<div class="loginbox">
					
				<form class="login_form" name="loginForm" action="${pageContext.request.contextPath}/login">
					<p>O'CCU</p>	
					<span class="id"> 
						<input type="text" name="email" class="inputbox" placeholder="E-mail를 입력해주세요">
					</span> 
					<span class="pw"> 
						<input type="text" name="password" class="inputbox" placeholder="비밀번호를 입력해주세요">
					</span> 
					<c:if test="${param.result == 'fail' }">
		      			<span id="failLogin">아이디 또는 비번을 확인해 주세요.</span>
		      		</c:if>					
					<span class=""> 
						<input type="submit" value="로그인">
					</span>
					<ul class="loginMenu">
					<li><a href="${pageContext.request.contextPath}/user/joinform" id="joinform" class="link-join" data-clk="log_off.join"> 회원가입 </a></li>
					<li class="idsearch"><a href="" id="findID" class="d-link" data-clk="log_off.searchID"> 아이디 찾기 </a></li>
					<li><a href="" id="findPass" class="d-link" data-clk="log_off.searchPass"> 비밀번호 찾기 </a></li>
				</ul>	
				</form>


				

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
			


			<div class="drops">
			    <div class="drop drop-1"></div>
			    <div class="drop drop-2"></div>
			    <div class="drop drop-3"></div>
			    <div class="drop drop-4"></div>
			    <div class="drop drop-5"></div>
			  </div>

	</div>
</body>