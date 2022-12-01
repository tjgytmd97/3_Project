<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>회원가입</title> 
  <!-- Favicon-->
 <!--  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" /> -->
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="resources/css/styles.css" rel="stylesheet" />
  <script type="text/javascript">
  	function goIndex(){
  		location.href="${cpath}/";
  	}
  </script>
</head>


<body>
      <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
             <a class="navbar-brand" href="${cpath}/index.jsp">Driver Best</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="">Home</a></li>
                    	<c:choose>
                    	
                    		<c:when test="${empty loginMember}">
                    			<li class="nav-item"><button type="button"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</button></li>
                     			   <li class="nav-item"><a href="${cpath}/join.do" type="button"
                            		class="btn btn-dark">회원가입</a></li>
                    		</c:when>
                    		
                    		<c:otherwise>
                    				<li class="nav-item"><button type="button"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="returnJsp('sleepy')">졸음운전</button></li>
                            		 <li class="nav-item"><button type="button"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="returnJsp('steal')">차량도난</button></li>
                            		 <li class="nav-item"><button type="button"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="returnJsp('list')">도난기록</button></li>
                            		 <li class="nav-item"><button type="button"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="returnJsp('Mypage')">개인정보</button></li>
                            		 
                            		 <li class="nav-item"><button type="button"  onclick="logout()"
                           			 class="btn btn-dark"
                            		 data-bs-toggle="modal" data-bs-target="#exampleModal">로그아웃</button></li>
                            </c:otherwise>
                    	</c:choose>
                        
                       
                    </ul>
                </div>
            </div>
        </nav>

  <!-- Header - set the background image for the header in the line below-->
  <header style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
    <div class="text-center my-5">
      <p class="fs-1">회원가입</p>
    </div>
  </header>

  <section class="bg-light py-3">
    <div class="container">
      <form action="${cpath}/memberInsert.do" method="post">
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">아이디</label>
          <input type="text" name="m_id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group has-success">
          <label class="form-label" for="inputValid">비밀번호</label>
          <input type="password" name="m_pw" class="form-control" id="inputValid">
          <div class="valid-feedback"></div>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">이름</label>
          <input type="text" name="m_name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">차량번호</label>
          <input type="text" name="m_car" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label mt-4">전화번호</label>
          <input type="text" name="m_tel" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">주소</label>
          <input type="text" name="m_address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
       
        </div>
        <div class="d-grid gap-2">
        
        <!-- 자바스크립트 녹화랑 연동하기위해 가입하기 버튼 아이디 따로 만들어서 스타일 적용, -->
          <button class="btn btn-primary btn-lg" type="submit">가입하기</button>
          <button class="btn btn-primary btn-lg" type="button" onclick="goIndex()">취소</button>
        </div>


      </form>
    </div>
  </section>

  <!-- Content section-->
  <section class="py-5">
    <div class="container my-5">

    </div>
  </section>
  <!-- Footer-->
  <footer class="py-4 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
    </div>
  </footer>
  
    <script type="text/javascript">
        	function logout(){
        		location.href="${cpath}/memberLogout.do";
        	}
        	
        	
        	function returnJsp(nextPage){
        		
        		location.href="${cpath}/pagenext.do?nextPage="+nextPage;
        	}
        
        </script>
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="resources/js/scripts.js"></script>
  <!--  
  <script src="resources/js/WebCam3_insertMember.js"></script>
  -->
</body>

</html>