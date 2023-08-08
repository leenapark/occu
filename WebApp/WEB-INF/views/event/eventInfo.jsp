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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
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
					<span class="form_title">구매하기</span>
				</div>


				<div class="components">
					<div class="">

						<div class="row">
							<div class="content">
								<div class="content_main" style="padding: 0 15px;"></div>
							</div>
						</div>
						<div class="row">
							<div class="">

								<div id="contents_detail" style="padding: 3px; width: 100%; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;">
									<div class="ck-content">
										<title>${formData.formName}</title>
									</div>
									<!--content div -->
									
									<div style="border-radius: 8px; background-color: #fbfbfb; width: 97%; margin: 0 auto; text-align: center; padding: 20px;">
										<div style="display:inline-block;">
											<div class="imgThumnail">
												<img alt="" style="max-width:100%!important;" src="${pageContext.request.contextPath }/upload/${formData.formPath }">
											</div>
										</div>
									</div>
								
									<div
										style="width: 80%; margin: 0 auto; text-align: center; padding: 20px;">

										<img class="form_profile_img" src="${pageContext.request.contextPath }/assets/images/profile/ccuccu.png"
											style="cursor:pointer;width:30px;" onclick="location.href='/p/u4OFCypbqz';">
											<span style="display:block;font-weight:700;font-size:20px;padding:10px;color:#373737;cursor:pointer;"
											onclick="location.href='/p/u4OFCypbqz';">${formData.formName}</span>
										<div style="display: inline;">
											<!-- 버튼 누르면 occuchat과 연결되게 할것 -->
											<a href="https://twitter.com/addict_jd" target="_blank" style="text-decoration:none;">
												${formData.nickName}
												<i class="bi bi-chat-right-heart" style="width:25px;margin:5px 0;color:#ff5075;"></i>
											</a>
										</div>
										<style>
		 									.seller_business_info_wrap{
		 										display: flex;
		 										flex-direction: column;
		 										align-items: center;
		 										justify-content: center;
		 									}
		 
		 									.seller_businss_more_btn{
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
		 
		 									.seller_businss_more_btn img{
		 										width: 14px;
		 										height: 14px;
		 											rotate: 180deg;
		 									}
		 
		 									.seller_businss_more_btn img.active{
		 										rotate: 0deg;
		 									}
		 
		 									.seller_business_info{
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
											<div class="seller_businss_more_btn" id="seller_businss_more_btn">
												판매자 정보 
												<img src="//d2i2w6ttft7yxi.cloudfront.net/common/toggle_btn.webp" alt="">
											</div>
											<div style="display: none;" class="seller_business_info"
												id="seller_business_info">
												판매자명: ${formData.nickName} | 연락처: 고객센터 070-1004-7777<br>
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
						
						<form id="deposit_form" style="padding:0 20px;" enctype="multipart/form-data" method="POST" action="${pageContext.request.contextPath }/event/orderOk/${formNo}">
							<input type="hidden" name="form_log_check" value="">
							<input type="hidden" name="form_idx" value="452888">
							<input type="hidden" name="user_idx" value="7598">

							<div class="row" style="padding-top: 10px;">
								<div class="col-md-12" style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">- 은행 정보</div>
							</div>
							<div class="row" style="padding-top: 5px;">
								<style>
									.the_cheat {
										display: inline-block;
										margin: 0px 0px 5px 0px;
										padding: 5px 10px 3px 6px;
										border-radius: 20px;
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
									<span class="the_cheat" style="margin-bottom: 10px; padding-left: 15px; padding-right: 15px;">
									· 판매자의 입금처 정보는 입금폼을 제출한 <strong>다음 화면</strong>에서 확인하실 수 있습니다.
									<br>
									· 윗치폼 회원인 경우 <strong>폼 참여 내역</strong>에서 입금처 정보를 확인하실수 있습니다.</span>
									<br>
								</div>
							</div>
							<div class="row" style="padding-top: 10px;">
								<div style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 주문 상품 선택 <span style="color: #ff0000;">＊</span>
								</div>
							</div>

							<div id="goods_list" class="row" style="padding-top: 5px;">
								<div class="col-md-12" style="font-size: 15px;">
									<div style="width: 100%; text-align: left; font-weight: 400; font-size: 13px; padding: 10px; background-color: #f6f6f6; margin-bottom: 5px;">
										<div style="">${formData.formGName}(${formData.formGPrice}원/${formData.formLmtc}개)</div>
										<div style="font-weight: 700; text-align: right;">
											<input type="number" class="form-control" id="2070731_number"
												name="2070731_number" value="0"
												style="display: inline-block; font-size: 11px; padding: 0px; width: 20%; text-align: center; margin-left: -4px; margin-right: -5px; height: 30px; border-radius: 0px; font-family: 'Arial';"
												min="0" inputmode="numeric" pattern="[0-9]*"
												onchange="goods_change();">
										</div>
									</div>
								</div>
								<script>
									function goods_change(n,price,qunt,goods_idx_cnt,jaego,goods_idx,limit_check,goods_limit){
										var goods_cnt = 1;
										var first = 0;
										var remain = Number(jaego)-Number(goods_idx_cnt);
										if(first==0) { first = 1; } else { }
										if(limit_check==1 && Number(qunt) >  Number(goods_limit)) {		
											alert("선택하신 상품은 "+goods_limit +"개까지 구매 가능합니다.");
											document.getElementById(goods_idx+"_number").value = Number(goods_limit);
										} else if( Number(qunt) >  Number(jaego)) {		
											alert("선택하신 상품의 재고가 "+jaego +"개 남았습니다.");
											document.getElementById(goods_idx+"_number").value = document.getElementById(goods_idx+"_number").value-1;
											document.getElementById(goods_idx+"_number").value = 0;
										} else if(Number(qunt)<0) {
											alert("마이너스는 올바른 값이 아닙니다.");
											document.getElementById(goods_idx+"_number").value = 0;
										} else if(${formData.formLmtc}==0){
											${formData.formLmtc}=="여러";
										}
									}
								</script>
							</div>
							

							<div class="row" style="padding-top: 10px;">
								<div style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 입금 정보 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group" style="margin-bottom: 5px;">
										<select class="form-control" id="account" name="account" name="은행정보">
    										<option>입금 은행을 정해주세요.</option>
											<option value="SHINHAN">신한은행</option>
											<option value="KBKOOKMIN">KB국민은행</option>
											<option value="NHNONGHYUP">NH농협은행</option>
											<option value="SCKOREA">SC제일은행</option>
											<option value="WOORI">우리은행</option>
											<option value="HANA">하나은행</option>
											<option value="CITYKOREA">한국씨티은행</option>
											<option value="KAKAO">카카오뱅크</option>
											<option value="KFCC">새마을금고</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="account"
											name="account" value="" placeholder="계좌번호">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="buyer_name"
											name="buyer_name" value="" placeholder="입금자명">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" min="0"
											inputmode="numeric" pattern="[0-9]*" id="buyer_price"
											name="buyer_price" value="" placeholder="입금액(숫자만 입력하세요)">
									</div>
								</div>
							</div>

							<div class="row" style="padding-top: 10px;">
								<div style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 주문자 정보 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="buyer_name2"
											name="buyer_name2" value="" placeholder="주문자명">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="email"
											name="email" value="" placeholder="주문자 이메일주소">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="buyer_phone"
											name="buyer_phone" value=""
											placeholder="주문자 핸드폰번호" maxlength="11">
									</div>
								</div>
							</div>
							
							<!-- 
							<div class="row" style="padding-top: 5px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 환불계좌 정보 (제작무산 등의 경우) <span style="color: #ff0000;">＊</span>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-3">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="bank" name="bank"
											value="환불은행" placeholder="은행명">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="account"
											name="account" value="환불계좌번호" placeholder="계좌번호">
									</div>
								</div>
								<div class="col-lg-3">
									<div class="form-group" style="margin-bottom: 5px;">
										<input class="form-control" type="text" id="depositor"
											name="depositor" value="예금주명" placeholder="예금주명">
									</div>
								</div>
							</div>
							 -->

							<div class="row" style="padding-top: 10px;">
								<div class="col-md-12"
									style="font-size: 15px; font-weight: 700; text-align: left; padding: 5px 15px;">
									- 개인정보 수집 및 동의 <span style="color: #ff0000;">＊</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12" style="font-size: 15px;">
									<div style="margin-bottom: 10px; padding: 5px; width: 100%; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out; text-align: left;">
										상품 주문 및 배송을 위해 위에 입력된 개인정보를 수집합니다.<br>수집한 개인정보는 주문과
										배송이외의 목적으로는 사용하지 않습니다.<br>개인정보의 수집 및 이용에 대한 동의를 거부할수
										있으며, 이 경우 상품 주문이 어려울 수 있습니다.
									</div>
									<input type="checkbox" id="agree" name="agree" value="1"
										style="text-align: left;"> 동의합니다.
								</div>

							</div>


							<div class="row" style="padding-top:15px;">
								<div class="content">
									<div class="content_main">
										<div id="submit_btn" class="content_item" onclick="form_insert();"
											style="border: 0px; border-radius:7px; margin-top: 10px; background-color: #ff5075; border-color: #f0513e; color: #fff; padding: 20px 50px 20px 50px; cursor: pointer; margin-bottom: 30px">
											<button style="width: 100%; border:none; box-shadow:none; border-radius:0; padding:0; overflow:visible;font-size:20px;font-weight:700;color:#fff;background-color:#ff5075;">제출</button>
										</div>
										<script type="text/javascript">
											function form_insert(){
												if(document.getElementById("agree").checked==false){
													alert("'개인정보 수집 및 동의'에 동의해주세요.");
													event.preventDefault();
												}
											}
										</script>
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
