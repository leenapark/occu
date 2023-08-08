<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date" %>


<!-- 타임라인 시작 -->
<div id="timeline">

	<div id="postList">
		<!-- 여기에 서버에서 조회한 최신 게시물들을 반복문으로 표시하는 코드를 추가 -->

		<c:forEach items="${postList}" var="post">
			<div class="post_list">

				<div class="profile_img p-0">
					<a class="" href="${pageContext.request.contextPath}/profile">
						<!-- profile -->
						<img src="${pageContext.request.contextPath}/assets/images/profile/${post.profileImg}" alt="profile image">
					</a>
				</div>
				<div class="post_con m-0" onclick="location.href='${pageContext.request.contextPath}/detail/${post.postNo}'">

					<div>
						<a class="m-0" href="${pageContext.request.contextPath}/profile">
							${post.userId} </a>
						<p>${post.dateWrite}</p>
					
					</div>
					<div class= "post_content" style="white-space: pre-line;">${post.content}</div>
					<!-- // 글내용 -->
					<!-- 이미지를 표시하는 부분 -->
					<c:if test="${not empty post.file1 and post.file1.trim() ne ''}">
					<c:choose>
					    <c:when test="${not empty post.file1 and post.file1.endsWith('.mp4')}">
					        <!-- 비디오 태그로 출력 -->
					        <div class="post_content">
						        <video width="500" controls>
						            <source src="${pageContext.request.contextPath}/upload/${post.file1}" type="video/mp4">
						        </video>
					        
					        </div>
					    </c:when>
					    <c:otherwise>
					        <!-- 이미지 태그로 출력 -->
					        <div class="view">
					            <img class="imgItem" src="${pageContext.request.contextPath}/upload/${post.file1}" alt="Post Image">
					        </div>
					    </c:otherwise>
					</c:choose>
					</c:if>
					<!-- // 이미지반복영역 -->
					
					
				</div>
				
				<!-- 삭제 버튼 추가 -->
				<div class="table_center">
					<div class="drop-down">
						<div id="dropDown-${post.postNo}" class="drop-down__button">
							<span class="drop-down__name">
								<i class="fi fi-rr-menu-dots"></i>
							</span>

						</div>

						<div class="drop-down__menu-box" id="dropDownMenu-${post.postNo}">
							<ul class="drop-down__menu">
								<li data-name="delete" class="drop-down__item">
									<form action="${pageContext.request.contextPath}/delete"
										method="post">
										<input type="hidden" name="postNo" value="${post.postNo}" />
										<button class="delete" type="submit">
											<img alt="삭제"
												src="${pageContext.request.contextPath }/assets/images/timeline/delete.png">
										</button>
									</form>

								</li>

							</ul>
						</div>
					</div>
				</div>
				<!-- 삭제 버튼 추가 -->
			</div>
		</c:forEach>
		<!-- // content 내용 -->
		
		<!-- 좋아요, 리포스트, 댓글 버튼 추가 -->

	</div>
</div>
<!-- 타임라인 끝 -->


