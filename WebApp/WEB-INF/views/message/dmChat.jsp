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


			</div>



		</div>



	</div>
</body>
</html>