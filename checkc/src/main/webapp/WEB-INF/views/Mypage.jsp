<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="" />
<meta name="author" content="" />
<title>Full Width Pics - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="resources/js/jquery-3.6.1.min.js"></script>
</head>

<body>
	<!-- Responsive navbar-->
	<%@include file="../../header.jsp"%>
	
	<video autoplay muted loop id="bg-video">
		<source src="resources/video/gfp-astro-timelapse.mp4" type="video/mp4">
	</video>
	<!-- Header - set the background image for the header in the line below-->
	<header
		style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
		<div class="text-center my-5">
			<p class="fs-1">개인정보</p>
		</div>
	</header>

	<!-- Content section-->
	<section class="py-3">
		<!-- Content IMG section-->
		<div class="container my-4">
			<div class="text-center">
				<img class="rounded" src="/오해원.jpg" alt="얼굴 이미지"
					style="width: 15em;" />
			</div>
		</div>
	</section>
	<!-- Content section-->
	<section class="py-3">
		<form>
			<div class="container my-5">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<table class="table caption-top">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">비상연락망</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<th><input class="p-1 flex-fill bd-highlight"
										type="phonenum" class="form-control" id=""
										placeholder="전화번호submit"> <svg
											class="p-2 flex-fill bd-highlight bi bi-trash3"
											xmlns="http://www.w3.org/2000/svg" fill="currentColor"
											viewBox="0 0 16 16" height="2em" style="float: right">
                                            <path
												d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
                                        </svg></th>
								</tr>
								<tr>
									<th scope="row">2</th>
									<th><svg xmlns="http://www.w3.org/2000/svg" width="16"
											height="16" fill="currentColor" class="bi bi-plus-lg"
											viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
												d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
                                        </svg></th>
								</tr>
								<tr>
									<th scope="row">3</th>
									<th><svg xmlns="http://www.w3.org/2000/svg" width="16"
											height="16" fill="currentColor" class="bi bi-plus-lg"
											viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
												d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
                                        </svg></th>
								</tr>
							</tbody>
						</table>
						<table class="table caption-top">
							<thead>
								<tr>
									<th scope="col">집 주소</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th><input type="address" class="form-control" id=""
										placeholder="집주소submit"></th>
								</tr>
							</tbody>
						</table>

						<div class="p-4 p-lg-5 bg-light rounded-3 text-center">
							<div class="m-4 m-lg-5">
								<video class="position-relative w-100 p-3" id="preview" autoplay
									mute style="border: 1px solid #ddd;"></video>
							</div>
							<br> <br>
							<button type="button" id="insertMembtn"
								class="btn btn-outline-secondary">영상을 서버에 보내기</button>


							<button type="button" class="btn btn-outline-secondary" disabled
								style="float: right;">개인정보수정완료</button>
						</div>
					</div>
				</div>
		</form>
	</section>
	<br>
	<div class="row justify-content-center">
		<div class="d-grid gap-2 col-6 mx-auto">
			<a href="list.html" class="btn btn-secondary disabled" tabindex="-1"
				role="button" aria-disabled="true">기록목록</a>
		</div>

		<section class="py-5">
			<div class="container my-5"></div>
		</section>
		<!-- Footer-->
		<footer class="py-4 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your
					Website 2022</p>
			</div>
		</footer>
		<!-- Bootstrap core JS-->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="resources/js/scripts.js"></script>

		<!--웹캠 자바스크립트  -->

		<script src="resources/js/WebCam3_insertMember.js"></script>
</body>

</html>