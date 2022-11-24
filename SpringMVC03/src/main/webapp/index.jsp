<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/css/main.css" />
		<link rel="stylesheet" href="resources/css/noscript.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	</head>
	<body class="is-preload">

		<!-- Wrapper-->
			<div id="wrapper">
				
				<!-- Nav -->
					<nav id="nav">
						<img src="resources/css/images/3차로고.png" width="1em" height="1em">
						<a href="#" class="icon solid fa-home"><span>Home</span></a>
						<a href="#work" class="icon solid fa-folder"><span>졸음 설정</span></a>
						<a href="#contact" class="icon solid fa-envelope"><span>도난 설정</span></a>
						<a href="#Record" class="icon solid fa-envelope"><span>도난 기록</span></a>
						<a href="#settings" class="icon brands fa-twitter"><span>개인 설정</span></a>
						<button>로그인</button>
					 <button>회원가입</button>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Me -->
							<article id="home" class="panel intro">
								<header>
								<!--  
										<video  id="myVideo"  style="border: 1px solid #ddd;"></video>
										-->
										
										<video  id="preview" autoplay mute width="150" height="300"  style="border: 1px solid #ddd;"></video>
										
										<canvas id="myCanvas"  style="border: 1px solid #ddd;"></canvas><br>
										<!--  
										<input type=button value="get Video" onclick="{getVideo()}">
										<input type=button value="get Pic" onclick="{takeSnapshot()}"><br>
										
										Take snapshot every <input type=number id="myInterval"  value="3000"> milliseconds
										<input type=button value="Auto" onclick="{takeAuto()}">
										-->
										<script src="resources/js/WebCam2.js"></script>
										
										<!--지도 표시  -->
										<p>Senior Astral Projectionist</p>
								</header>
								
								<!-- 지도표시 
								지도 표시<div id="map" style="width:100%;height:350px;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ecae4d45ddef423654503bc460e6d4f"></script>
								<script type="text/javascript" src="resources/js/kokaomap.js"></script>
								-->
							</article>
 
						<!-- 졸음 -->
							<!-- 졸음운전 페이지 -->
							<article id="work" class="panel">
								<header>
								   <h2>졸음운전 페이지</h2>
								</header>
								<p style="margin-bottom: 4em;">
								이곳은 졸음운전 설정 페이지입니다. 두번의 경고가 주어지고 후에는 액션을 취해야만 
								경보음이 꺼집니다. 경보음을 정하고, 경보시간, 행동지속시간까지 설정해주세요. 
								</p>
								<form action="#" method="post">
								<section>
								   <div class="row">
								   <table>
									  <tr><td><div class="sleep-table"> 알림음
									  </div></td>
									  <td><select name="alarm-sound" id="alarm-sound" style="background-color:rgba(255, 255, 255, 0.5);">
										 <option value="sound0">--삐용삐용--</option>
										 <option value="sound1">sound1</option>
										 <option value="sound2">sound2</option>
										 <option value="sound3">sound3</option>
										 <option value="sound4">sound4</option>
									  
									  </select>
									  </td>
									  </tr>
								   </table>
								   <table>
									  <tr><td><div class="sleep-table"> 소리 설정
									  </div></td>
									  <td><select name="alarm-sound" id="alarm-sound" style="background-color:rgba(255, 255, 255, 0.5);">
										 <option value="3mi">3초</option>
										 <option value="5mi">5초</option>
										 <option value="7mi">7초</option>
										 <option value="10mi">10초</option>
										 <option value="12mi">12초</option>
									  
									  </select></td></tr>
								   </table>
								   <table>
									  <tr><td><div class="sleep-table"> 행동 지속 시간
									  </div></td>
									  <td><select name="alarm-sound" id="alarm-sound" style="background-color:rgba(255, 255, 255, 0.5);">
										 <option value="3mi">3초</option>
										 <option value="5mi">5초</option>
										 <option value="7mi">7초</option>
										 <option value="10mi">10초</option>
										 <option value="12mi">12초</option>
									  
									  </select></td></tr>
								   </table>
								   </div>
								   <div style="display: flex; justify-content: center;">
									  <button>수정완료</button>
								   </div>
							 </form>
							 </article>

						<!-- 도난 -->
							<article id="contact" class="panel">
								<header>
									<h2>Contact Me</h2>
								</header>
								<p style="margin-bottom: 5em;">
                           이곳은 도난방지 설정 페이지입니다. 화면 우측에 도난 상황 경고 메시지 뜬 후 도난 경보가 울린다.
                           그리고 경보음을 정하고 회원 및 회원의 비상 연락망으로 문자 알림이 간다.
                        </p>
                           <form action="#" method="post">
                           <section>
                              <div class="row">
                              <table>
                                 <tr><td><div class="sleep-table">알림음
                                 </div></td>
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
							  
							  
							  <table>
                                 <tr><td><div class="sleep-table" style="text-align:center;">연락처
                                 </div></td>
                                          <tr>
                                              <th rowspan="3">1</th>
                                              <th><input type="text" placeholder="010-0000-0000"></th>
                                              <th><input type="checkbox"></th>
                                              <th><input type="putt" name="phone-num"></th>
                                             
                                          </tr>
                                          <tr>
                                             <th>2</th>
                                             <th><input type="text" placeholder="010-1111-1111"></th>
                                             <th><input type="checkbox"></th>
                                             <th><input type="putt" name="phone-num"></th>
                                          </tr>
                                          <tr>
                                             <th>3</th>
                                             <th><input type="text" placeholder="010-2222-2222"></th>
                                             <th><input type="checkbox"></th>
                                             <th><input type="putt" name="phone-num"></th>
                                          </tr>
                                       



                              </table>
                              
                              <table>
                                 <tr><td><div style="text-align:center;"> 🗑️
                                 </div></td></tr>
                                 
                              
                              </table>
                              </div>
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
								   <img src="" alt="주소에 얼굴그림 추가" width="200" >
								   <div style="display: flex; justify-content: center;">
									  <a href="#">완료버튼</a>
								   </div></div>
								   
								   <table>
										 <tr><td><div class="sleep-table"> 비상연락처
										 </div></td>
										 <td style="width: 250px;">
											<table id="emergency">
											   <tbody>
												  <tr>
													 <th>1</th>
													 <th><input type="putt" name="phone-num"></th>
												  </tr>
												  <tr>
													 <th>2</th>
													 <th><input type="putt" name="phone-num"></th>
												  </tr>
												  <tr>
													 <th>3</th>
													 <th><input type="putt" name="phone-num"></th>
												  </tr>
											   </tbody>
											</table>
										 </td>
										 </tr>
										 <tr><td><div class="sleep-table"> 집 주소   
										 </div></td>
										 <td><input type="putt" name="naming">
										 </td>
										 </tr>
									  </table>
									  </div>
									  <div style="display: flex; justify-content: center;">
										 <a href="#Record">기록 목록 보기</a>
									  </div>
								   </div>
								   
								   
								</form>
							 </article>

					</div>

				<!-- Footer -->
					<div id="footer">
						<ul class="copyright">
							<li>&copy; Untitled.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/browser.min.js"></script>
			<script src="resources/js/breakpoints.min.js"></script>
			<script src="resources/js/util.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>