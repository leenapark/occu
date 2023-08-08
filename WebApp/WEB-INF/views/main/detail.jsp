<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/occu.css"
	type="text/css">
<title>�� ������</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/post.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/detail.css" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/main/button.js"></script>
</head>
<body>

	<div id="wrap">
	<jsp:include page="/WEB-INF/views/include/header.jsp"/>


		<div class="post_detail">
			<h2 class="post_tit">CCU</h2>
			<div class="detail_top">
				<div class="detail_profile p-0">
					<a class="" href="${pageContext.request.contextPath}/profile">
						<!-- �ӽ��̹��� --> <img class="profile_img"
						src="${pageContext.request.contextPath}/assets/images/profile/${post.profileImg}"
						alt="profile image">
					</a>
					<div class="detail_info">
						<a class="m-0" href="${pageContext.request.contextPath}/profile">
							${post.userId} </a>
						<p>${post.dateWrite}</p>

					</div>

				</div>
				<!-- ���� ��ư �߰� -->
				<div class="table_center detail_menu">
					<div class="drop-down">
						<div id="dropDown-${post.postNo}" class="drop-down__button">
							<span class="drop-down__name"> <i
								class="fi fi-rr-menu-dots"></i>
							</span>

						</div>

						<div class="drop-down__menu-box" id="dropDownMenu-${post.postNo}">
							<ul class="drop-down__menu">
								<li data-name="delete" class="drop-down__item">
									<form action="${pageContext.request.contextPath}/delete"
										method="post">
										<input type="hidden" name="postNo" value="${post.postNo}" />
										<button class="delete" type="submit">
											<img alt="����"
												src="${pageContext.request.contextPath }/assets/images/timeline/delete.png">
										</button>
									</form>

								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>
			<c:if test="${not empty post.file1 and post.file1.trim() ne ''}">
				<c:choose>
					<c:when
						test="${not empty post.file1 and post.file1.endsWith('.mp4')}">
						<!-- ���� �±׷� ��� -->
						<div class="post_content">
							<video width="500" controls>
								<source
									src="${pageContext.request.contextPath}/upload/${post.file1}"
									type="video/mp4">
							</video>

						</div>
					</c:when>
					<c:otherwise>
						<!-- �̹��� �±׷� ��� -->
						<div class="detail_view">
							<img class="imgItem"
								src="${pageContext.request.contextPath}/upload/${post.file1}"
								alt="Post Image">
						</div>
					</c:otherwise>
				</c:choose>
			</c:if>
			<div class="detail_con_wrap">

				<div class="post_content" style="white-space: pre-line;">${post.content}</div>
				
			</div>
			<!-- �̹��� ��� �� �߰� ���� ǥ�� -->

			<!-- �Խù� ���� ��ư -->
			<form action="${pageContext.request.contextPath}/delete"
				method="post">
				<input type="hidden" name="postNo" value="${post.postNo}" />
				<button class="" type="submit">
					<i class="fi fi-bs-trash-can-check"></i>
				</button>
			</form>
		</div>
		<div class="detail_comment"></div>
	</div>
</body>
</html>