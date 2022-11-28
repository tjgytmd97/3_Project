<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<!--
	Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Astral by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/noscript.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body class="is-preload">

	<!-- Wrapper-->
	<div id="wrapper">




		<!-- Nav -->
		<div class="position-relative">
			<nav id="nav">
				<a href="#" class="icon solid fa-home"><span>Home</span></a> <a
					href="#work" class="icon solid fa-folder"><span>졸음 설정</span></a> <a
					href="#contact" class="icon solid fa-envelope"><span>도난
						설정</span></a> <a href="#Record" class="icon solid fa-envelope"><span>도난
						기록</span></a> <a href="#settings" class="icon brands fa-twitter"><span>개인
						설정</span></a>
						
						
						<c:choose>
   <c:when test="${empty loginMember}">
   
   <button type="button"
					class="btn btn-dark position-absolute top-0 end-0"
					" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</button>
   </c:when>
   
   
     
   <c:otherwise>
   
					 로그인된 아이디는 ${loginMember.m_id} 입니다
   
   </c:otherwise>
</c:choose>
						
				
					
					
				<button type="button"
					class="btn btn-dark position-absolute bottom-0 end-0"
					data-bs-toggle="modal" data-bs-target="#exampleModal2">회원가입</button>
			</nav>
		</div>

		<!-- Modal -->
		<!-- 로그인 -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="${cpath}/memberLogin.do" method="POST">
							<input type="text" name="m_id" placeholder="아이디" class="in"> 
							<input type="password" name="m_pw" placeholder="비밀번호" class="in">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-dark"><input type="submit" value="로그인"></button>
					</div>
					</form>
				</div>
			</div>
		</div>

		<!-- 회원가입 -->
		<div class="modal fade" id="exampleModal2" tabindex="-1"
			aria-labelledby="exampleModalLabel2" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel2">회원가입</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="${cpath}/memberInsert.do" method="POST" class="joinForm"
							onsubmit="DoJoinForm__submit(this); return false;">

							<div class="textForm">
								<input name="m_id" type="text" class="id" placeholder="아이디">
								</input>
							</div>
							<div class="textForm">
								<input name="m_pw" type="password" class="pw"
									placeholder="비밀번호">
							</div>
							<!-- <div class="textForm">
								<input name="loginPwConfirm" type="password" class="pw"
									placeholder="비밀번호 확인">
							</div> -->
							<div class="textForm">
								<input name="m_name" type="text" class="name" placeholder="이름">
							</div>
							<div class="textForm">
								<input name="m_car" type="text" class="carNo" placeholder="차량번호">
							</div>
							<div class="textForm">
								<input name="m_address" type="text" class="address"
									placeholder="주소">
							</div>
							<div class="textForm">
								<input name="m_tel" type="text" class="cellphoneNo"
									placeholder="전화번호">
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-dark"><input type="submit" value="회원가입"></button>
						
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Main -->
		<div id="main">

			<!-- Me -->
			<article id="home" class="panel intro">
				<header>


					<!--<video  id="myVideo"  style="border: 1px solid #ddd;"></video>
										-->
					<img class="position-absolute top-0 start-0"
						src="resources/css/images/3차로고.png" width="50em" height="50em">
					<video
						class="position-absolute top-0 start-50 translate-middle-x h-100 d-inline-block"
						id="preview" autoplay mute 
						style="border: 1px solid #ddd width="350" height="200";"></video>

					<!-- 					<canvas class="position-absolute top-0 end-0" id="myCanvas" style="border: 1px solid #ddd;"></canvas>
 -->
					<!--  
										<input type=button value="get Video" onclick="{getVideo()}">
										<input type=button value="get Pic" onclick="{takeSnapshot()}"><br>
										
										Take snapshot every <input type=number id="myInterval"  value="3000"> milliseconds
										<input type=button value="Auto" onclick="{takeAuto()}">
										-->
				</header>
			</article>

			<!-- 졸음 -->
			<!-- 졸음운전 페이지 -->
			<article id="work" class="panel">
				<div>
					<img src="resources/css/images/3차로고.png" width="50em" height="50em">
				</div>
				<header>
					<h2>졸음운전 페이지</h2>
				</header>
				<p style="margin-bottom: 4em;">이곳은 졸음운전 설정 페이지입니다. 두번의 경고가 주어지고
					후에는 액션을 취해야만 경보음이 꺼집니다. 경보음을 정하고, 경보시간, 행동지속시간까지 설정해주세요.</p>
				<form action="#" method="post">
					<section>
						<div class="row">
							<table>
								<tr>
									<td><div class="sleep-table">알림음</div></td>
									<td><select name="alarm-sound" id="alarm-sound"
										style="background-color: rgba(255, 255, 255, 0.5);">
											<option value="sound0">--삐용삐용--</option>
											<option value="sound1">sound1</option>
											<option value="sound2">sound2</option>
											<option value="sound3">sound3</option>
											<option value="sound4">sound4</option>

									</select></td>
								</tr>
							</table>
							<table>
								<tr>
									<td><div class="sleep-table">소리 설정</div></td>
									<td><select name="alarm-sound" id="alarm-sound"
										style="background-color: rgba(255, 255, 255, 0.5);">
											<option value="3mi">3초</option>
											<option value="5mi">5초</option>
											<option value="7mi">7초</option>
											<option value="10mi">10초</option>
											<option value="12mi">12초</option>

									</select></td>
								</tr>
							</table>
							<table>
								<tr>
									<td><div class="sleep-table">행동 지속 시간</div></td>
									<td><select name="alarm-sound" id="alarm-sound"
										style="background-color: rgba(255, 255, 255, 0.5);">
											<option value="3mi">3초</option>
											<option value="5mi">5초</option>
											<option value="7mi">7초</option>
											<option value="10mi">10초</option>
											<option value="12mi">12초</option>

									</select></td>
								</tr>
							</table>
						</div>
						<div style="display: flex; justify-content: center;">
							<button>수정완료</button>
						</div>
						</section>
				</form>
			</article>

			<!-- 도난 -->
			<article id="contact" class="panel">
				<header>
					<h2>Contact Me</h2>
				</header>
				<p style="margin-bottom: 5em;">이곳은 도난방지 설정 페이지입니다. 화면 우측에 도난 상황
					경고 메시지 뜬 후 도난 경보가 울린다. 그리고 경보음을 정하고 회원 및 회원의 비상 연락망으로 문자 알림이 간다.</p>
				 <form action="#" method="post">
               <section>
                  
                  <table>
                     <tr>
                        <td>
                           <div class="sleep-table" style="background:pink;">알림음</div>
                        </td>
                     <td><select name="alarm-sound" id="alarm-sound" style="background-color:rgba(255, 255, 255, 0.5);">
                        <option value="sound0">--삐이익--</option>
                        <option value="sound1">sound1</option>
                        <option value="sound2">sound2</option>
                        <option value="sound3">sound3</option>
                        <option value="sound4">sound4</option>
                     
                     </select>
                     </td>
                     </tr>
                  </table>
                  <table border="1" style="text-align:center; margin-right: auto; margin-left: auto; width:20%;">
                  <thead>
                     <tr>
                        <td style="background-color:pink;">연락처</td>
                        <td></td>
                        
                        </tr>
                  </thead>
                  <tr>
                     <td>1</td>
                     <td>010-1111-1111</td>
                     <td><input type="checkbox"></td>
                     
                  </tr>
                  <tr>
                     <td>2</td>
                     <td>010-2222-2222</td>
                     <td><input type="checkbox"></td>
                     
                  </tr>
                  <tr>
                     <td>3</td>
                     <td>010-3333-3333</td>
                     <td><input type="checkbox"></td>
                     
                  </tr>
                  <tr>
                     <td>4</td>
                     <td>010-4444-4444</td>
                     <td><input type="checkbox"></td>
                     
                  </tr>
                 
                  </table>
                  <table>
                     <tr>
                        <td><div style="text-align:center;"> 🗑️</div></td>
                     </tr>
                  </table>
                  <div style="display: flex; justify-content: center;">
                     <button>기록목록보기</button>
                  </div>
                  </section>
               </form>
			</article>

			<!-- 기록 -->
			<article id="Record" class="panel">
				<header>
					<h2>기록 목록</h2>
				</header>
				<form action="#" method="post">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">날짜 / 시간</th>
								<th scope="col">영상</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>날짜 / 시간</td>
								<td>영상링크</td>

							</tr>
							<tr>
								<th scope="row">2</th>
								<td>날짜 / 시간</td>
								<td>영상링크</td>
							</tr>
						</tbody>
					</table>
				</form>
			</article>

			<!-- 개인정보 -->
			<!-- 개인정보 설정페이지 -->
			<article id="settings" class="panel">
				<header>
					<h2>개인정보 설정</h2>
				</header>
				<form action="#" method="post">
					<div>
						<div class="row">
							<div>
								<!-- src에 얼굴사진 데이터를 넣기 -->
								<img src="" alt="주소에 얼굴그림 추가" width="200">
								<div style="display: flex; justify-content: center;">
									<button type="button" onclick="location.href='#'">완료</button>
								</div>
							</div>

							<table>
								<tr>
									<td><div class="sleep-table">비상연락처</div></td>
									<td style="width: 250px;">
										<table id="emergency">
											<tbody>
												<tr>
													<th>1</th>
													<th><input type="putt" name="phone-num"
														placeholder="전화번호 입력"></th>
												</tr>
												<tr>
													<th>2</th>
													<th><input type="putt" name="phone-num"
														placeholder="전화번호 입력"></th>
												</tr>
												<tr>
													<th>3</th>
													<th><input type="putt" name="phone-num"
														placeholder="전화번호 입력"></th>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td><div class="sleep-table">집 주소</div></td>
									<td><input type="putt" name="naming"></td>
								</tr>
							</table>
						</div>
						<div style="display: flex; justify-content: center;">
							<button type="button" onclick="location.href='#Record'">기록목록
								보기</button>
						</div>
					</div>


				</form>
			</article>

		</div>

		<!-- Footer -->
		<div id="footer">
			<ul class="copyright">
				<li>&copy; Untitled.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

	<!-- Scripts -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/browser.min.js"></script>
	<script src="resources/js/breakpoints.min.js"></script>
	<script src="resources/js/util.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/WebCam2.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>


</body>
</html>