<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- viewport 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/occu.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/post.css" type="text/css">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>

<title>O'CCU</title>

<script src="${pageContext.request.contextPath }/assets/js/main/button.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/main/post.js"></script>

</head>
<body>
	<div id="wrap">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		
		<!-- header -->
		<div class="main">
			<div id="feedArea">
				<c:import url="/WEB-INF/views/main/postForm.jsp"></c:import>
				<c:import url="/WEB-INF/views/main/timeline.jsp"></c:import>
			</div>

		</div>
		<div class="side_right"> 
			<h1>추천 팔로워</h1>
		<ul id="userInfo"></ul>
	</div>
	</div>

</body>
<script>

	let follow_dict = [];

		
	function get_recommend_list() {
		const ul = document.getElementById('userInfo');
		const list = document.createDocumentFragment();
		const images = [
		    "0.png", "1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png"
		];
	    fetch("http://43.201.254.244:8000/api/recommend/recommend").then(response => {
	    	response.json().then(data => {
	    		follow_dict = data;
	    		console.log(follow_dict);
	    		follow_dict.map(function(follow){
	    			const li = document.createElement('li');
	    			const tweeterId = document.createElement('span');
	    			const tweeterNick = document.createElement('h2');
	    			const followBtn = document.createElement('a');
	    			
	    			var chosenImage = images[Math.floor(Math.random() * images.length)];
	    			console.log(chosenImage)
	    			const bgImage = document.createElement('img');
	    			const link_addr = '${pageContext.request.contextPath}/assets/images/profile/rec_follower_prfs/' + chosenImage;
	    			console.log(link_addr);
	    			bgImage.src = link_addr;
	    			console.log(bgImage.src)

	    			tweeterId.textContent = "@" + follow.tweeterIdList;
	    			console.log(tweeterId);
	    			tweeterNick.textContent = follow.tweeterNickList;
	    			console.log(tweeterNick);
	    			followBtn.textContent = "<팔로우>";
					
	    			li.appendChild(bgImage);
	    			li.appendChild(tweeterNick);
	    			li.appendChild(tweeterId);
	    			console.log(li);
	    			li.appendChild(followBtn);
	    			

	    			list.appendChild(li);
	    			console.log("list: " + list)
	    			
	    	    	ul.appendChild(list);
	    		    console.log(ul);
	    			
	    		});


	    	})

	    })
	   
	};
	
	get_recommend_list();
	
</script>

</html>