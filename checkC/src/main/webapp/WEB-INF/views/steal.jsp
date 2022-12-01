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
        <title>Full Width Pics - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    </head>
    <body>
         <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="index.jsp">Driver Best</a>
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
                <p class="fs-1">도난 설정</p>
            </div>
        </header>
        <!-- Content section-->
        <section class="py-3">
          <form>
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <table class="table caption-top ">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">선택</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">알림음</th>
                                <td>
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>알림음 선택</option>
                                        <option value="alarm1">삐용</option>
                                        <option value="alarm2">에에에엥</option>
                                        <option value="alarm3">야!!!!</option>
                                      </select> 
                                </td>
                              </tr>
                              <tr>
                                <th scope="row">연락처</th>
                                <td>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          phone-one
                                        </label>
                                      </div>
                                      <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                        <label class="form-check-label" for="flexCheckChecked">
                                          phone-two
                                        </label>
                                      </div>
                                      <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                        <label class="form-check-label" for="flexCheckChecked">
                                          phone-three
                                        </label>
                                      </div>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                          <button type="button" class="btn btn-outline-secondary" disabled style="float: right;">차량도난수정완료</button>
                    </div>
                </div>
            </div>
          </form>
        </section>
        <div class="row justify-content-center">
            <div class="d-grid gap-2 col-6 mx-auto">
                <a href="list.html" class="btn btn-secondary disabled" tabindex="-1" role="button" aria-disabled="true">기록목록</a>
        </div>

        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-4 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
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
    </body>
</html>

