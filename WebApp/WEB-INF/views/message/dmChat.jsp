<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DM포함 index</title>
</head>
<body>
	<div id="wrap">
		<h1 class="n-hidden">DM 대화창(1대1)</h1>

		<div class="form-area">

			<!-- header -->

			<!-- messagebox -->
			<div class="messageBox">
				<form name="messageForm" action="${pageContext.request.contextPath}/dm/dmChat" , method="get">

					<span class="text"> <input type="text" name="text" class="inputbox" placeholder="Write your story ..."></span> <span
						class="submit submitBox"> <input type="submit" value="보내기">
					</span>

				</form>

				<!--  <td class="text-left"><a href="${pageContext.request.contextPath}/board/read?readNum=${vo.no}">${vo.title}</a></td>-->

				<table>
					<tbody>
						<c:forEach items="${requestScope.message}" var="vo">
							<tr>
								<td>${vo.mNo}</td>
								<td>${vo.id}</td>
								<td>${vo.text}</td>
								<td>${vo.regDate}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>


				<!--<td> <c:if test="${sessionScope.authorMember.no == vo.user_no }">
			<a href="${pageContext.request.contextPath}/board/deleteBoard?deleteNum=${vo.no}">[삭제]</a>
			</c:if> </td> -->

				<%-- 			<% dmVo.getId(); %> <br/>
			<% dmVo.getText(); %> --%>

				<%-- 			<div>
				<c:forEach var="item" items="${members}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
					</tr>
				</c:forEach>
			</div> --%>

				<%-- <label class="form-text" for="input-uid">아이디</label> <span
								class="text-large bold">${sessionScope.authUser.id}</span> --%>

				<%-- 	<ul class="loginMenu">
				<li><a href="${pageContext.request.contextPath}/user/joinform" id="joinform" class="link-join" data-clk="log_off.join"> 회원가입 </a></li>
				<li class="idsearch"><a href="" id="findID" class="d-link" data-clk="log_off.searchID"> 아이디 찾기 </a></li>
				<li><a href="" id="findPass" class="d-link" data-clk="log_off.searchPass"> 비밀번호 찾기 </a></li>
			</ul> --%>

			</div>



		</div>



	</div>
</body>
</html>