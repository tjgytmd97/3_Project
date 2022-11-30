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
        <title>Driver Best</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
            video{
                transform: rotateY(180deg);
                -webkit-transform:rotateY(180deg); /* Safari and Chrome */
                -moz-transform:rotateY(180deg); /* Firefox */
            }
        </style>
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="index.html">Driver Best</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.html">Home</a></li>
                        <li class="nav-item"><button type="button"
                            class="btn btn-dark"
                             data-bs-toggle="modal" data-bs-target="#exampleModal">ë¡ê·¸ì¸</button></li>
                        <li class="nav-item"><a href="/join.html" type="button"
                            class="btn btn-dark">íìê°ì</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Modal -->
      <!-- ë¡ê·¸ì¸ -->
      <div class="modal fade" id="exampleModal" tabindex="-1"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ë¡ê·¸ì¸</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="${cpath}/memberLogin.do" method="POST">
                        <input type="text" name="m_id" placeholder="ìì´ë" class="in"> 
                        <input type="password" name="m_pw" placeholder="ë¹ë°ë²í¸" class="in">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark"><input type="submit" value="ë¡ê·¸ì¸"></button>
                </div>
                </form>
            </div>
        </div>
    </div>

    
       
        <!-- ì¹´íê³ ë¦¬-->
        <section class="pt-4">       
            <ul class="nav justify-content-center">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="index.html">ë©ì¸</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="sleepy.html">ì¡¸ì ì´ì </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="steal.html">ì°¨ë ëë</a>
                </li>
                <li class="nav-item">
                 <a class="nav-link" href="list.html">ëë ê¸°ë¡</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Mypage.html">ê°ì¸ ì ë³´</a>
                   </li>
              </ul>
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
               <video class="position-relative w-100 p-3" id="preview" autoplay mute 
                  style="border: 1px solid #ddd;"></video>
                    </div>
                </div>
            </div>
        </section>
        
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
        <script src="js/scripts.js"></script>
        <script src="js/WebCam2.js"></script>
    </body>
</html>