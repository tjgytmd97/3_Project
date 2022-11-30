<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <a class="navbar-brand" href="index.html">Driver Best</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><button type="button"
                            class="btn btn-dark"
                             data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</button></li>
                        <li class="nav-item"><button type="button"
                            class="btn btn-dark"
                            data-bs-toggle="modal" data-bs-target="#exampleModal2">회원가입</button></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Header - set the background image for the header in the line below-->
        <header style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
            <div class="text-center my-5">
                <p class="fs-1">졸음 방지 설정</p>
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
                                <th scope="row">비상연락망</th>
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
                                <th scope="row">알림 시간</th>
                                <td>
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>알림 시간 선택</option>
                                        <option value="time1">2초</option>
                                        <option value="time2">4초</option>
                                        <option value="time3">6초</option>
                                      </select> 
                                </td>
                              </tr>
                            </tbody>
                          </table>
                          <button type="button" class="btn btn-outline-secondary" disabled style="float: right;">졸음운전수정완료</button>
                    </div>
                </div>
            </div>
          </form>
        </section>

        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-4 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
    </body>
</html>

