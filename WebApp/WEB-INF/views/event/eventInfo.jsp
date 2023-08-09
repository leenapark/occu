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
					<a href="${pageContext.request.contextPath }/event"> <i
						class="bi bi-backspace-fill"></i>
					</a> <span class="form_title">폼 작성하기</span> <a class="save">임시 저장</a>
				</div>


				<div class="components">
					<div class="col-lg-12">

						<div class="row">
							<div class="content">
								<div class="content_main" style="padding: 0 15px;"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">

								<div id="contents_detail"
									style="padding: 3px; width: 100%; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;">
									<div class="ck-content">
										<title>${formData.formName }</title>
									</div>
									<!--content div -->
									<style>
.main_hashtag_div {
	width: 100%;
	margin: 0 auto;
	display: block;
	padding: 0 15px;
}

.main_hashtag_div .search_live {
	display: inline-block;
	width: 100%;
}

.main_hashtag_div .search_live .search_title {
	display: inline-block;
	padding: 4px 8px;
	border-radius: 4px;
	background: #fffaed;
	font-weight: 700;
	color: #fec123;
	font-size: 12px;
	float: left;
}

#rank-list {
	display: inline-block;
	overflow: hidden;
	width: calc(100% - 135px);
	height: 25px;
	margin: 0;
	margin-left: 10px;
}

#rank-list a {
	color: #565656;
	text-decoration: none;
}

#rank-list a:hover {
	text-decoration: underline;
}

#rank-list dt {
	display: none;
}

#rank-list dd {
	position: relative;
	margin: 0;
}

#rank-list ol {
	position: absolute;
	top: 0;
	left: 0;
	margin: 0;
	padding: 0;
	list-style-type: none;
	width: 100%;
}

#rank-list li {
	margin: 0;
	height: 25px;
	line-height: 25px;
}

#rank-list li .number {
	color: #fec123;
	font-size: 14px;
	float: left;
	display: inline-block;
}

#rank-list li .txt {
	font-size: 14px;
	float: left;
	display: inline-block;
	padding-left: 16px;
	width: 80%;
}

#rank-list li img {
	float: right;
	display: inline-block;
	padding-top: 8px;
	cursor: pointer;
}

#search_box {
	margin-top: 5px;
}

#search_box li {
	margin: 0;
	height: 40px;
	line-height: 30px;
	padding: 5px 10px;
	width: 49%;
	display: inline-block;
}

#search_box li .number {
	color: #fec123;
	font-size: 14px;
	float: left;
	display: inline-block;
	font-weight: 700;
}

#search_box li .txt {
	font-size: 14px;
	float: left;
	display: inline-block;
	padding: 0 16px;
	width: 80%;
	color: #565656;
	text-decoration: none;
}

#search_box li img {
	float: right;
	display: inline-block;
	padding-top: 5px;
	cursor: pointer;
}

#search_box li .icon {
	float: right;
	font-size: 13px;
	padding-top: 0;
}

#search_box li img {
	float: right;
	display: inline-block;
	padding-top: 10px;
}

.update_time {
	font-size: 12px;
	text-align: right;
	padding: 5px;
}

.hashtag_today {
	margin: 30px 0px;
}
</style>
									<section class="hashtag_today">
										<div class="main_hashtag_div" style="padding: 0;">
											<div class="hash1">
												<div id="hashtag-list"
													style="margin-top: 15px; display: block;"></div>
											</div>
										</div>
									</section>
									<style>
.zzim_btn {
	height: 32px;
	margin: auto;
	padding: 8px 12px 8px 8px;
	border-radius: 4px;
	border: solid 1px #dbdbdb;
	background-color: #fbfbfb;
	line-height: 16px;
	display: inline-block;
	cursor: pointer;
	float: left;
}

.zzim_btn span {
	font-size: 12px;
	font-weight: normal;
	color: #565560;
	padding-left: 8px;
	display: inline-block;
}

.zzim_btn_on {
	height: 32px;
	margin: auto;
	padding: 8px 12px 8px 8px;
	border-radius: 4px;
	background-color: #ff6666;
	line-height: 16px;
	display: inline-block;
	cursor: pointer;
	float: left;
}

.zzim_btn_on span {
	font-size: 12px;
	font-weight: normal;
	color: #fff;
	padding-left: 8px;
	display: inline-block;
}

.btn_share {
	height: 32px;
	margin: auto;
	padding: 8px 12px 8px 8px;
	border-radius: 4px;
	border: solid 1px #dbdbdb;
	background-color: #fbfbfb;
	line-height: 16px;
	display: inline-block;
	cursor: pointer;
	float: left;
	margin-left: 8px;
	font-size: 12px;
}

.zzim_btn span {
	font-size: 12px;
	font-weight: normal;
	color: #565560;
	padding-left: 8px;
	display: inline-block;
}

.sns_wrap {
	position: absolute;
	padding: 16px 46px 16px 16px;
	box-shadow: 0 15px 30px 0 rgb(0 0 0/ 30%);
	z-index: 1;
	background-color: #fff;
	display: none;
	width: 296px;
	margin: 0 auto;
	left: 50%;
	margin-top: 40px;
	display: none;
	border-radius: 8px;
}

.sns_wrap.on {
	display: block;
}

.sns_wrap ul {
	display: flex;
}

.sns_wrap li a {
	display: inline-block;
	width: 40px;
	height: 40px;
	box-sizing: border-box;
}

.sns_wrap li a .hidden {
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
	margin: -1px !important;
	clip: rect(0, 0, 0, 0);
}

.sns_wrap li+li {
	margin-left: 16px;
}

.sns_wrap li.twitter {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_twitter.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.facebook {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_facebook.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.blog {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_blog.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.kakao {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_kakao.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.share {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_url_copy.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.twitter:hover {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_twitter_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.twitter:active {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_twitter_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.facebook:hover {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_facebook_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.facebook:active {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_facebook_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.blog:hover {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_blog_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.blog:active {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_blog_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.kakao:hover {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_kakao_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.kakao:active {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_kakao_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.share:hover {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_share_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.sns_wrap li.share:active {
	background:
		url(//d2i2w6ttft7yxi.cloudfront.net/site_img/images/ico_share_on.png)
		no-repeat center;
	background-size: 40px 40px;
}

.business_badge {
	width: 18px;
	margin-top: -5px;
}
</style>

									<div
										style="border-radius: 8px; background-color: #fbfbfb; width: 95%; margin: 0 auto; text-align: center; padding: 20px;">
										<div style="display: inline-block;">
											<div class="imgThumnail">
												<img alt="" src="${pageContext.request.contextPath }/upload/${formData.formPath }">
											</div>
											
											<div id="sns_wrap" class="sns_wrap" style="">
												<ul>
													<li class="twitter"><a
														href="javascript:share('twitter');"><span
															class="hidden">twitter</span></a></li>
													<li class="facebook"><a
														href="javascript:share('facebook');"><span
															class="hidden">instagram</span></a></li>
													<li class="blog"><a href="javascript:share('blog');"><span
															class="hidden">blog</span></a></li>
													<li class="kakao kakaolink"><a href="#"><span
															class="hidden">TP</span></a></li>
													<li class="share"><a
														href="javascript:copy_url('452888');"><span
															class="hidden">share</span></a></li>
												</ul>
											</div>
										</div>
									</div>
									<script>
								$('.btn_share').on('click', function(e){		
																			if($("#sns_wrap").attr("class")=='sns_wrap'){
											$("#sns_wrap").attr("class","sns_wrap on");
										}else {
											$("#sns_wrap").attr("class","sns_wrap");
										}
																	});
								function share(sns){
									if(sns=='twitter'){			
										var sendText = $('<textarea />').html("ㅅㄷㄴㅅ").text(); // 전달할 텍스트			
										var sendUrl = "https://witchform.com/deposit_form.php?idx=452888"; // 전달할 URL
										window.open("https://twitter.com/intent/tweet?text="+encodeURIComponent(sendText)+"&url=" + encodeURIComponent(sendUrl));

									}else if(sns=="blog"){
										var sendText = "ㅅㄷㄴㅅ"; // 전달할 텍스트
										var sendUrl = "https://witchform.com/deposit_form.php?idx=452888"; // 전달할 URL
										window.open("http://blog.naver.com/openapi/share?title="+encodeURIComponent(sendText)+"&url=" + encodeURIComponent(sendUrl));
									}else if(sns=="facebook"){			
										var sendUrl = "https://witchform.com/deposit_form.php?idx=452888"; // 전달할 URL
										window.open("https://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(sendUrl));
									}
								}
								function copy_url(val){
									var success=true
										,range=document.createRange()
										,selection=null
										,$tmpElem=$('<div>');
									var $this=$(this)
										,dest=$this.attr("data-dest")||""
										,$dest=dest?$(dest):$this
										,text='https://witchform.com/deposit_form.php?idx='+val;
									if(window.clipboardData){	// For IE
										window.clipboardData.setData("Text", text);        
									}else{						// etc
										$tmpElem.text(text).css({position:"absolute",left:"-1000px",top:"-1000px"}).appendTo("body");
										// Select temp element.
										range.selectNodeContents($tmpElem.get(0));
										selection=window.getSelection();
										selection.removeAllRanges();
										selection.addRange(range);
										try{
											success = document.execCommand("copy", false, null);
										}catch(e){
											window.prompt("Copy to clipboard: Ctrl+C, Enter", text);
										}
									}
									$tmpElem.remove();
									$dest.select();
									alert("복사되었습니다. Ctrl+V(붙여넣기)로 다른사람들에게 알리세요!");
								}
							</script>
									<div
										style="width: 80%; margin: 0 auto; text-align: center; padding: 20px;">

										<img class="form_profile_img"
											src="${formData.formPath}"
											style="cursor: pointer;"
											onclick="location.href='/p/u4OFCypbqz';">
											<span style="display: block; font-weight: 700; font-size: 16px; padding: 10px; color: #373737; cursor: pointer;"
											onclick="location.href='/p/u4OFCypbqz';">판매자 </span>
										<div style="display: block;">
											<a href="https://twitter.com/addict_jd" target="_blank"><img
												src="//d2i2w6ttft7yxi.cloudfront.net/site_img/image/twitter_gray.png"
												style="width: 25px; margin: 5px;"></a>

										</div>
										
										
										<style>
.seller_business_info_wrap {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.seller_businss_more_btn {
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	align-items: center;
	justify-content: center;
	font-family: Pretendard;
	font-size: 12px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: normal;
	letter-spacing: normal;
	text-align: left;
	color: #bcbcbc;
	margin-top: 16px;
	margin-bottom: 10px;
	cursor: pointer;
}

.seller_businss_more_btn img {
	width: 14px;
	height: 14px;
	rotate: 180deg;
}

.seller_businss_more_btn img.active {
	rotate: 0deg;
}

.seller_business_info {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	align-items: center;
	font-family: Pretendard;
	font-size: 12px;
	font-weight: normal;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.35;
	letter-spacing: normal;
	text-align: center;
	color: #bcbcbc;
}
</style>

										<div class="seller_business_info_wrap">
											<div class="seller_businss_more_btn"
												id="seller_businss_more_btn">
												판매자 정보 <img
													src="//d2i2w6ttft7yxi.cloudfront.net/common/toggle_btn.webp"
													alt="">
											</div>
											<div style="display: none;" class="seller_business_info"
												id="seller_business_info">
												판매자명:  | 연락처: 고객센터 070-1004-7777<br>
												배송/환불 및 상품관련 문의는 메시지를 통해 판매자와 소통해 주세요.<br>
												판매자 정보 및 기타 문의는 고객센터로 문의해 주세요.
											</div>
										</div>

										<script>
 									$("#seller_businss_more_btn").click(function() {
 										if($(this).siblings().is(":hidden")){
 											$(this).siblings().slideToggle("fast");
 											$(this).children("img").addClass("active");
 										}else if($(this).siblings().is(":visible")){
 											$(this).siblings().hide();
 											$(this).children("img").removeClass("active");
 										}
 									});
 								</script>
									</div>
								</div>
								<!-- contents_detail end -->
							</div>
							<!-- class col-lg-12 end -->
						</div>
						<!-- class row end -->
						<form id="deposit_form" enctype="multipart/form-data"
							method="POST" action="deposit_form_goods_process.php">
							<input type="hidden" name="form_log_check" value=""> <input
								type="hidden" name="form_idx" value="452888"> <input
								type="hidden" name="user_idx" value="7598">
							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 입금 기간</div>
							</div>
							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; text-align: left;">기간설정없음</div>
							</div>

							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 은행 정보</div>
							</div>
							<div class="row" style="padding-top: 5px;">
								<style>
.the_cheat {
	display: inline-block;
	margin: 0px 0px 5px 0px;
	padding: 3px 10px 3px 6px;
	border-radius: 50px;
	background-color: #e1eeff;
	font-size: 13px;
	font-weight: 500;
	text-align: left;
	color: #1877f2;
}

.the_cheat img {
	width: 19px;
	height: 19px;
	display: inline-block;
	margin-right: 5px;
	margin-bottom: 1px;
}
</style>
								<div class="col-md-12"
									style="font-size: 15px; text-align: left;">
									<span class="the_cheat"
										style="margin-bottom: 10px; padding-left: 15px; padding-right: 15px;">·
										판매자의 입금처 정보는 입금폼을 제출한 <strong>다음 화면</strong>에서 확인하실 수 있습니다.<br>·
										윗치폼 회원인 경우 <strong>폼 참여 내역</strong>에서 입금처 정보를 확인하실수 있습니다.
									</span><br>
								</div>
							</div>
							<div class="row" style="padding-top: 5px;">
								<div class="col-md-5"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 주문 상품 선택 <span style="color: #ff0000;">＊</span>
								</div>
							</div>

							<div id="goods_list" class="row" style="padding-top: 5px;">
								<div class="col-md-12" style="font-size: 15px;">
									<div
										style="width: 100%; text-align: left; font-weight: 400; font-size: 13px; padding: 10px; background-color: #f6f6f6; margin-bottom: 5px;">
										<div style="">${formData.formGName}(${formData.formGPrice }/1개)</div>
										<div style="font-weight: 700; text-align: right;">
											<button type="button" class="numbtn"
												onclick="minus(1, 2070731,1,0,1,0,0)">-</button>
											<input type="number" class="form-control" id="2070731_number"
												name="2070731_number" value="0"
												style="display: inline-block; font-size: 11px; padding: 0px; width: 20%; text-align: center; margin-left: -4px; margin-right: -5px; height: 30px; border-radius: 0px; font-family: 'Arial';"
												min="0" inputmode="numeric" pattern="[0-9]*"
												onchange="goods_change(1,1,this.value,0,1,2070731,0,0);">
											<button type="button" class="numbtn"
												onclick="plus(1, 2070731,1,0,1,0,0)">+</button>
											<input type="hidden" id="goods_price1" value="0"
												style="border: 1px solid #000; padding: 3px; font-size: 15px; width: 50%;">
										</div>
									</div>
								</div>
							</div>
							

							<div class="row" style="padding-top: 5px;">
								<div class="col-md-5"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 입금 정보 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">

								<div class="col-lg-6">
									<div class="form-group">
										<input class="form-control" type="text" id="buyer_name"
											name="buyer_name" value="" placeholder="입금자명">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input class="form-control hasDatepicker" type="text"
											id="buyer_date" name="buyer_date" value="2023-08-06"
											placeholder="입금날짜">

									</div>
									<div class="form-group">
										<input class="form-control" type="hidden" min="0"
											inputmode="numeric" pattern="[0-9]*" id="buyer_price"
											name="buyer_price" value="" placeholder="입금액(숫자만 입력하세요)">
									</div>
								</div>
							</div>

							<div class="row"></div>
							<div class="row" style="display: none;">
								<div class="col-lg-8">
									<div class="form-group">
										<!-- 							<input class="form-control" type="text" id="buyer_date" name="buyer_date" value='2023-08-06' placeholder="입금날짜" > -->

									</div>
								</div>
								<div class="col-lg-2" style="display: none;">
									<div class="form-group">
										<input class="form-control" type="number" id="buyer_hour"
											name="buyer_hour" value="" placeholder="시">

									</div>
								</div>
								<div class="col-lg-2" style="display: none;">
									<div class="form-group">
										<input class="form-control" type="number" id="buyer_min"
											name="buyer_min" value="" placeholder="분">

									</div>
								</div>
							</div>
							<div class="row" style="padding-top: 5px;">
								<div class="col-md-5"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 주문자 정보 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<input class="form-control" type="text" id="buyer_name2"
											name="buyer_name2" value="주문자" placeholder="주문자명">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<input class="form-control" type="text" id="email"
											name="email" value="주문자 이메일 주소"
											placeholder="주문자 이메일주소">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<input class="form-control" type="text" id="buyer_phone"
											name="buyer_phone" value="주문자 핸드폰 번호"
											placeholder="주문자 핸드폰번호" maxlength="11">
									</div>
								</div>
							</div>
							
								


							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 환불계좌 정보 (제작무산 등의 경우) <span style="color: #ff0000;">＊</span>
								</div>
							</div>

							<div class="row">

								<div class="col-lg-3">
									<div class="form-group">
										<input class="form-control" type="text" id="bank" name="bank"
											value="환불은행" placeholder="은행명">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input class="form-control" type="text" id="account"
											name="account" value="환불계좌번호" placeholder="계좌번호">
									</div>
								</div>
								<div class="col-lg-3">
									<div class="form-group">
										<input class="form-control" type="text" id="depositor"
											name="depositor" value="예금주명" placeholder="예금주명">
									</div>
								</div>
							</div>









							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 개인정보 수집 및 동의 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12" style="font-size: 15px;">
									<div
										style="padding: 3px; width: 100%; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out; text-align: left;">

										상품 주문 및 배송을 위해 위에 입력된 개인정보를 수집합니다. 수집한 개인정보는<br> 주문과
										배송이외의 목적으로는 사용하지 않습니다.<br> 개인정보의 수집 및 이용에 대한 동의를 거부할수
										있으며, 이 경우 상품 주문이 어려울 수 있습니다.
									</div>
									<input type="checkbox" id="agree" name="agree" value="1"
										style="text-align: left;"> 동의합니다.
								</div>

							</div>



							<div class="row">
								<div class="content">
									<div class="content_main" style="padding: 0 15px;">

										<div id="submit_btn" class="content_item"
											style="border: 0px; margin-top: 10px; background-color: #f26656; border-color: #f0513e; color: #fff; padding: 20px 50px 20px 50px; cursor: pointer; margin-bottom: 30px;"
											onclick="form_insert();">
											<div
												style="width: 100%; text-align: center; font-size: 20px; font-weight: 700;">
												제출</div>
										</div>
									</div>
								</div>
							</div>

						</form>
					</div>
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