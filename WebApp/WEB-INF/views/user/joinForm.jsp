<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<!--한국어 문서만 검색 음성지원할때-->
<head>
<meta charset="UTF-8">
<!--브라우저가 문서를 해설할때 필요한 정보-->
<title>O'CCU sign up</title>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user.css" type="text/css">
<!--user css-->


</head>

<body>
	<div id="wrap">
		<div class="box">
			<div class="square" style="-i: 0;"></div>
			<div class="square" style="-i: 1;"></div>
			<div class="square" style="-i: 2;"></div>
			<div class="square" style="-i: 3;"></div>
			<div class="square" style="-i: 4;"></div>
			<div class="square" style="-i: 5;"></div>
		</div>


		<div class="form-area user">

			<form id="joinForm" action="${pageContext.request.contextPath}/user/join" method="post">

				<p class="text-fontsname">회원가입</p>

				<div class="form-group">
					<label for="email" class="form-label" aria-hidden="true"> E-mail <span class="essential">필수 입력</span>
					</label>
					<div class="n-form-layer" id="emailFromLayer">
						<input type="text" class="d-input" tabindex="0" id="email" name="email" placeholder="E-mail" autocomplete="off" maxlength="50">
						<ul id="emailDomainList" class="layer">
							<li>
								<button type="button">
									<span></span><em>gmail.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>naver.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>hanmail.net</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>nate.com</em>
								</button>
							</li>
							<li>
								<button type="button">
									<span></span><em>daum.net</em>
								</button>
							</li>
						</ul>
						<p id="hLayeremail" class="n-validation"></p>
					</div>
				</div>

				<!-- join form -->
				<div class="form-group">
					<label for="userId" class="form-label" aria-hidden="true"> ID <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input" tabindex="0" id="userId" name="userId" placeholder="ID 입력(5~11자)" autocomplete="off" maxlength="11">
					<p class="n-validation" id="hLayerid">

						<!-- 아이디 사용 가능 여부 -->

					</p>
				</div>

				<div class="form-group pass">
					<label for="password" class="form-label" aria-hidden="true"> Password <span class="essential">필수 입력</span>
					</label> <input type="password" class="d-input" tabindex="0" id="password" name="password" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)" autocomplete="off">
					<p class="n-validation" id="passwordValiMessage">

						<!-- 패스워드 안내문 -->

					</p>
				</div>

				<div class="form-group pass">
					<input type="password" class="d-input" tabindex="0" id="confirmPassword" name="confirmPassword" placeholder="비밀번호 확인" autocomplete="new-password">
					<p class="n-validation" id="passwordConfirmValiMessage">
						<!-- 비밀번호 확인 안내문 -->
					</p>
				</div>

				<div class="form-group">
					<label for="nickName" class="form-label" aria-hidden="true"> 닉네임 <span class="essential">필수 입력</span>
					</label> <input type="text" class="d-input" tabindex="0" id="joinNickName" name="nickName" placeholder="닉네임" autocomplete="off" maxlength="50">
					<p id="nickNameValiMessage" class="n-validation">
						<!-- 닉네임 확인 안내문 -->
					</p>
				</div>


				<div class="form-group">
					<label for="info__birth" class="form-label" aria-hidden="true"> 생년월일 <span class="essential">필수 입력</span>
					</label>
					<div class="info" id="info__birth">
						<input type="text" class="d-input" tabindex="0" id="birth_year" name="bYear" placeholder="Year" autocomplete="off" maxlength="50"> <input
							type="text" class="d-input" tabindex="0" id="birth_month" name="bMon" placeholder="Month" autocomplete="off" maxlength="50"> <input
							type="text" class="d-input" tabindex="0" id="birth_day" name="bDay" placeholder="Day" autocomplete="off" maxlength="50">
					</div>
					<p class="n-validation" id="birthValiMessage">

						<!-- 생년월 안내문 -->

					</p>
				</div>

				<!-- 약관 동의 -->
				<div id="agreementDivArea">

					<label for="chk-agree" class="form-label" aria-hidden="true"> 약관 동의 <span class="essential">필수 입력</span>
					</label>
					<div class="chk_agree">
						<input type="checkbox" id="chk-agree" value="" name=""> <label for="chk-agree">서비스 약관에 동의합니다.</label>
					</div>
				</div>
				<br>
				<!-- submit -->
				<div id="joinBtnDiv">
					<button type="submit" id="joinBtn">회원가입</button>
				</div>


			</form>
		</div>
		<!-- join form -->

	</div>
</body>




<script type="text/javascript">
	/* 이벤트를 준 것: propertychange, blur, change, keyup, paste, input이 행해질 때, 이 함수를 실행해라>> */
	/* 서버와 통신하기 전에 미리 체크하는 함수 (불통시 진행 중지)  */
	$("#userId").on("propertychange blur change keyup paste input", function() {
		checkId();
	});

	// 비밀번호
	$(".pass")
			.on(
					"propertychange focusout change keyup paste input",
					function() {

						var password = $("#password").val().trim();
						console.log("password: " + password);
						var num = password.search(/[0-9]/g);
						var eng = password.search(/[a-z]/ig);
						var spe = password
								.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
						console.log(num, eng, spe)
						$("input[name='password']").val('');
						$("input[name='password']").val(password);
						if (password === '') {
							$("#password")
									.attr("class", "d-input input-reject");
							$("#passwordValiMessage").className = "n-validation";
							$('#passwordValiMessage').html('비밀번호는 필수정보입니다.');
							$("#passwordConfirmValiMessage").html('');
							return;
						}
						if (password.length < 8) {
							$("#password")
									.attr("class", "d-input input-reject");
							$("#passwordValiMessage").attr("class",
									"n-validation");
							$('#passwordValiMessage').html(
									"비밀번호는 8자 이상 입력해주세요.");
							return;
						}

						if (password.search(/\s/) != -1) {
							$("#password")
									.attr("class", "d-input input-reject");
							$("#passwordValiMessage").attr("class",
									"n-validation");
							$('#passwordValiMessage').html(
									"비밀번호는 공백 없이 입력해주세요.");
							return false;
						} else if (num < 0 || eng < 0 || spe < 0) {
							$("#password")
									.attr("class", "d-input input-reject");
							$("#passwordValiMessage").attr("class",
									"n-validation");
							$('#passwordValiMessage').html(
									"영문,숫자, 특수문자를 혼합하여 입력해주세요.");
							return false;
						} else {
							console.log("통과");
							$("#password").attr("class", "d-input input");
							$("#passwordValiMessage").attr("class",
									"n-validation validation-pass");
							$('#passwordValiMessage').html('');
						}
						var confirmPassword = $("#confirmPassword").val()
								.trim();
						console.log("confirm: " + confirmPassword);
						if (confirmPassword !== '' && password.length > 7) {
							if (password !== confirmPassword) {
								$("#confirmPassword").attr("class",
										"d-input input-reject");
								$("#passwordValiMessage").attr("class",
										"n-validation");
								//var cName = $("#passwordConfirmValiMessage").attr("class");
								//console.log("cName: " + cName);
								$("#passwordConfirmValiMessage").removeClass(
										"validation-pass");
								$("#passwordConfirmValiMessage").html(
										'비밀번호가 일치하지 않습니다.');
								return;
							} else if (password === confirmPassword) {
								$("#confirmPassword").attr("class",
										"d-input input");
								$("#passwordConfirmValiMessage").attr("class",
										"n-validation validation-pass");
								$("#passwordConfirmValiMessage").html('');
							}

						}
						$("#confirmPassword").on(
								"focusout",
								function() {
									if (confirmPassword.length == 0) {
										$("#confirmPassword").attr("class",
												"d-input input-reject");
										$("#passwordValiMessage").attr("class",
												"n-validation");
										$("#passwordConfirmValiMessage").html(
												'비밀번호 확인은 필수정보입니다.');
										return;
									}
								});
					});
	/***************이름*************/
	$("#name").on(
			"blur",
			function() {
				var name = $("#name").val().trim();
				if (name.length === 0) {
					$("#name").attr("class", "d-input input-reject");
					$("#nameValiMessage").attr("class", "n-validation");
					$("#nameValiMessage").html('이름은 필수 정보입니다.');
				} else {
					$("#name").attr("class", "d-input input");
					$("#nameValiMessage").attr("class",
							"n-validation validation-pass");
					$("#nameValiMessage").html('');
				}
			});

	/***************닉네임*************/
	$("#joinNickName").on(
			"blur",
			function() {
				var name = $("#joinNickName").val().trim();
				if (name.length === 0) {
					$("#joinNickName").attr("class", "d-input input-reject");
					$("#nickNameValiMessage").attr("class", "n-validation");
					$("#nickNameValiMessage").html('닉네임은 필수 정보입니다.');
				} else {
					$("#joinNickName").attr("class", "d-input input");
					$("#nickNameValiMessage").attr("class",
							"n-validation validation-pass");
					$("#nickNameValiMessage").html('');
				}
			});

	/****************email************************/
	// 이메일 인풋창에서 포커스 아웃되었을 때 아무것도 적지 않거나 올바르지 않은 주소를 치면 나타나는 경고문
	$("#email").on(
			"blur",
			function() {
				var trimedEmail = $("#email").val().trim();
				$("#email").val('');
				$("#email").val(trimedEmail);

				if (trimedEmail.length === 0) {
					$("#email").attr("class", "d-input input-reject");
					$("#hLayeremail").attr("class", "n-validation");
					$("#hLayeremail").html('이메일은 필수정보입니다.');
				} else {
					var email = $("#email").val();
					var isInvalidEmail = email.indexOf('\@') === -1
							|| email.indexOf('.') === -1;

					if (isInvalidEmail) {
						$("#email").attr("class", "d-input input-reject");
						$("#hLayeremail").attr("class", "n-validation");
						$("#hLayeremail").html("이메일 주소가 올바르지 않습니다.");
					} else {
						$("#email").attr("class", "d-input input");
						$("#hLayeremail").attr("class",
								"n-validation validation-pass");
						$("#hLayeremail").html("");
					}

				}
			});
	// 이메일 주소 도메인 선택했을 때
	$("#emailFromLayer ul").on("click", "li button", function(e) {
		console.log("button click");
		var email = $(this).text().trim();
		console.log("email: " + email.trim());

		e.preventDefault();
		$("#email").val(email);
		$("#emailDomainList").hide();
		$("#email").attr("class", "d-input input");
		$("#hLayeremail").html("");
		return false;
	});

	// email 입력칸에 입력했을 때
	$("#email").on("keyup", function(e) {
		console.log("keyup")
		var value = e.currentTarget.value;
		console.log("value: " + value);
		$(this).parents('li').hide();
		if (value.length > 1 && value[value.length - 1] == "@") {
			console.log("keyup1")
			$("#emailFromLayer ul > li button span").text(value);
		}
		if (value.indexOf("@") != -1) {
			console.log("keyup2")
			$('#emailFromLayer').attr("class", "n-form-layer is-active");
			$("#emailDomainList").show();
			$("#emailDomainList li").show();
			var inputDomain = $("#email").val().split('@')[1];
			console.log("inputDomain: " + inputDomain);
			var emailId = $("#email").val().split('@')[0];
			console.log("emailId: " + emailId);
			$("#emailFromLayer ul > li button span").text(emailId + '@');
			$("#emailDomainList li em").each(function() {
				if ($(this).text().indexOf(inputDomain) == -1) {
					$(this).parents('li').hide();
				}

			});

		} else {
			console.log("parent")
			$('#emailFromLayer').removeClass("n-form-layer");
			$('#emailDomainList').attr("style", "display: none;");
		}
	});

	// 폼 submit 전 점검 사항
	$(".form-area #joinForm").on("submit", function() {

		var id = $("#userId").val();
		if (id.length == 0) {
			console.log("id check");
			alert("아이디를 입력해주세요.");
			return false;
		} else if (id.length < 5) {
			alert("아이디는 5자 이상 입력해주세요.");
			return false;
		}

		// 패스워드 미입력
		var pw = $("#password").val();
		if (pw.length === 0) {
			alert("비밀 번호를 입력해주세요.");
			return false;
		}

		// 이름 미입력
		var name = $("#name").val();
		if (name.length === 0) {
			alert("이름을 입력해주세요.");
			return false;
		}

		// 닉네임 미입력
		var nickName = $("#joinNickName").val();
		if (nickName.length === 0) {
			alert("닉네임을 입력해주세요.");
			return false;
		}

		// 이메일 미입력
		var email = $("#email").val();
		if (email.length === 0) {
			alert("이메일을 입력해주세요.");
			return false;
		}

		// 성별 미선택
		var gender = $('input[name="gender"]').is(":checked");
		console.log(gender);
		if (!gender) {
			alert("성별을 선택해주세요.");

			return false;
		}

		var check = $("#chk-agree").is(":checked");
		console.log(check);
		if (!check) {
			alert("가입하시려면 약관에 동의 해주세요.");
			return false;
		}

		return true;
	});

	/*************함수 정의***********/

	function validateLengthUserIdWhenKeyup() {
		console.log("길이 제한 func");
		$('#userId').val($('#userId').val().trim());
		var userId = $('#userId');

		if (userId.val().length > 11) {
			// Id 길이 제한
			var limitUserId = $userId.val().substring(0, 11);
			$userId.val(limitUserId);
		}
	}

	function checkId() {
		/* $*"#userId" : userID의 값을 가져옴 */
		var userId = $("#userId").val().trim();
		console.log(userId.length);
		console.log(userId);

		var pattern1 = /[0-9]/; //숫자
		var pattern2 = /[a-zA-Z]/; //영어
		var pattern3 = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //한글
		var pattern4 = /[~!@#\#$%<>^&*]/; //특수문자

		validateLengthUserIdWhenKeyup();

		if (userId.length == 0) {
			$("#userId").attr("class", "d-input input-reject");
			$("#hLayerid").attr("class", "n-validation");
			$("#hLayerid").removeClass('validation-pass')
					.html('아이디는 필수 정보입니다.');
			return false;
		}

		if (userId.length < 5) {
			$("#userId").attr("class", "d-input input-reject");
			$("#hLayerid").attr("class", "n-validation");
			$("#hLayerid").removeClass('validation-pass').html(
					'아이디는 5자 이상이어야 합니다');
			return false;
		}

		if (userId.search(/\s/) != -1) {
			$("#userId").attr("class", "d-input input-reject");
			$("#hLayerid").attr("class", "n-validation");
			$('#hLayerid').html("아이디는 공백 없이 입력해주세요.");
			return false;
		} else if (pattern1 < 0 || pattern2 < 0) {
			$("#userId").attr("class", "d-input input-reject");
			$("#hLayerid").attr("class", "n-validation");
			$('#hLayerid').html("영문, 숫자를 혼합하여 입력해주세요.");
			return false;
		} else if (pattern3.test(userId)) {
			$("#userId").attr("class", "d-input input-reject");
			$("#hLayerid").attr("class", "n-validation");
			$('#hLayerid').html("한글은 사용하실 수 없습니다.");
			return false;
		}

		/* 기본 형태 : $.ajax({}) */
		/*type: '전송 방식 (GET / POST)',*/
		/* data: '전송할 데이터 - 파라미터 문자열 key=value&key=value',*/
		/*  	    dataType: '요청한 데이터 형식 (html / xml / json / jsonp)',*/
		/* 		    timeout : '밀리세컨드단위 제한시간', */
		/* 			cache : '이전요청에대한 캐쉬저장여부 (true=사용함, false=사용안함)',*/

		// 전송에 성공하면 이 콜백 함수를 실행 (data 에는 응답받은 데이터가 저장된다)
		// 전송에 실패하면 이 콜백 함수를 실행
		$.ajax({

			url : "${pageContext.request.contextPath }/user/checkId",
			type : "post",
			data : {
				userId : userId
			},
			dataType : "text",
			success : function(response) {
				/*성공시 처리해야될 코드 작성*/
				console.log("성공");
				if (response == 'can') {
					console.log("can");
					$("#userId").attr("class", "d-input input");
					$("#hLayerid")
							.attr("class", "n-validation validation-pass");
					$("#hLayerid").html("사용할 수 있는 아이디 입니다.");
				} else {
					console.log("cant");
					$("#userId").attr("class", "d-input input-reject");
					$("#hLayerid").attr("class", "n-validation");
					$("#hLayerid").html("사용할 수 없는 아이디 입니다.")
				}
				console.log("response: " + response);
			},
			error : function(XHR, status, error) {
				console.log("실패")
				console.error(status + " : " + error);

				ini_set("display_errors", 1);
			},
			complete : function() {
				console.log("ajax호출 완료 시 실행");
			}
		});
		console.log("test");

	}

	/***************닉네임*************/
	/****************** 닉네임 체크 ********************/
	$("#joinNickName")
			.on(
					"propertychange blur change keyup paste input",
					function() {
						var nickName = $("#joinNickName").val().trim();
						console.log(nickName);
						if (nickName.length == 0) {
							$("#joinNickName").attr("class",
									"d-input input-reject");
							$("#nickNameValiMessage").attr("class",
									"n-validation");
							$("#nickNameValiMessage").html('닉네임은 필수 정보입니다.');
							return;
						} else {
							$("#joinNickName").attr("class", "d-input input");
							$("#nickNameValiMessage").attr("class",
									"n-validation validation-pass");
							$("#nickNameValiMessage").html('');
						}

						$.ajax({

									url : "${pageContext.request.contextPath}/user/checknickname",
									type : "post",
									data : {
										nickName : nickName
									},

									dataType : "text",
									success : function(response) {
										/*성공시 처리해야될 코드 작성*/
										if (response == 'can') {
											console.log("can");
											$("#joinNickName").attr("class",
													"d-input input");
											$("#nickNameValiMessage")
													.attr("class",
															"n-validation validation-pass");
											$("#nickNameValiMessage").html(
													"사용할 수 있는 닉네임 입니다.");
										} else {
											console.log("cant");
											$("#joinNickName").attr("class",
													"d-input input-reject");
											$("#nickNameValiMessage").attr(
													"class", "n-validation");
											$("#nickNameValiMessage").html(
													"사용할 수 없는 닉네임 입니다.")

										}
										console.log("response: " + response);
									},
									error : function(XHR, status, error) {
										console.error(status + " : " + error);
									}
								});

					});

	/* 해야하는 일
	경고 css 추가로 주기
	경고 먹으면 submit 안되게 하기 */
	
	function validateLengthBirthYearWhenKeyup() {
		console.log("길이 제한 func");
		$('#birth_year').val($('#birth_year').val().trim());
		var birthYear = $('#birth_year');
		console.log("birthYear: " + birthYear.val().substring(0, 4));

		if (birthYear.val().length > 4) {
			// year 길이 제한
			var limitYear = birthYear.val().substring(0, 4);
			birthYear.val(limitYear);
		}
	}
	
	$("#birth_year").on("propertychange blur change keyup paste input", function() {
		validateLengthBirthYearWhenKeyup();
	});
	
	function validateLengthBirthMonWhenKeyup() {
		console.log("길이 제한 func");
		$('#birth_month').val($('#birth_month').val().trim());
		var birthMon = $('#birth_month');
		console.log("birth_month: " + birthMon.val().substring(0, 2));

		if (birthMon.val().length > 2) {
			// year 길이 제한
			var limitMon = birthMon.val().substring(0, 2);
			birthMon.val(limitMon);
		}
	}
	
	$("#birth_month").on("propertychange blur change keyup paste input", function() {
		let birthMon = Number($("#birth_month").val().trim());
/* 		console.log("확인1 " + $('#birth_month').val($('#birth_month').val().trim()));
		console.log("확인2 " + $("#birth_month").val().trim());
		console.log("타입 확인: " + typeof($("#birth_month").val().trim()))
		console.log(birthMon);
		console.log("밖" + typeof(birthMon));
		console.log(birthMon > 0); */
		if (birthMon > 12) {
			$("#birth_month")
			.attr("class", "d-input input-reject");
			$("#birthValiMessage").attr("class",
					"n-validation");
			$('#birthValiMessage').html(
					"1월 ~ 12월 사이로 입력해주세요.");
		} else if (birthMon >= 0){
			console.log(typeof(birthMon));
			if (birthMon > 0 || birthMon < 13) {
				validateLengthBirthMonWhenKeyup();
			}			
		}
	});
	
	function validateLengthBirthDayWhenKeyup() {
		console.log("길이 제한 func day");
		$('#birth_day').val($('#birth_day').val().trim());
		var birthDay = $('#birth_day');
		console.log("birth_day: " + birthDay.val().substring(0, 2));

		if (birthDay.val().length > 2) {
			// year 길이 제한
			var limitDay = birthDay.val().substring(0, 2);
			birthDay.val(limitDay);
		}
	}
	
	$("#birth_day").on("propertychange blur change keyup paste input", function() {
		validateLengthBirthDayWhenKeyup();
	});
	
</script>




</html>
