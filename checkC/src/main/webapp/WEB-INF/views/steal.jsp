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
         <%@include file ="../../header.jsp" %>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
    </body>
</html>

