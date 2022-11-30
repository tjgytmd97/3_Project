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
  <title>íìê°ì</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet" />
</head>

<body>
  <!-- Responsive navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-lg-5">
      <a class="navbar-brand" href="#!">Driver Best</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
          class="navbar-toggler-icon"></span></button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
          <li class="nav-item"><button type="button" class="btn btn-dark" data-bs-toggle="modal"
              data-bs-target="#exampleModal">ë¡ê·¸ì¸</button></li>
          <li class="nav-item"><button type="button" class="btn btn-dark" data-bs-toggle="modal"
              data-bs-target="#exampleModal2">íìê°ì</button></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header - set the background image for the header in the line below-->
  <header style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
    <div class="text-center my-5">
      <p class="fs-1">íìê°ì</p>
    </div>
  </header>

  <section class="bg-light py-3">
    <div class="container">
      <form>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">ìì´ë</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group has-success">
          <label class="form-label" for="inputValid">ë¹ë°ë²í¸</label>
          <input type="password" class="form-control" id="inputValid">
          <div class="valid-feedback"></div>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">ì´ë¦</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">ì°¨ëë²í¸</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label mt-4">ì íë²í¸</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1" class="form-label">ì£¼ì</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
          <div class="m-4 m-lg-5">
            <video class="position-relative w-100 p-3" id="preview" autoplay mute
              style="border: 1px solid #ddd;"></video>
          </div>
        </div>
        <div class="d-grid gap-2">
          <button class="btn btn-primary btn-lg" type="button">ê°ìíê¸°</button>
          <button class="btn btn-primary btn-lg" type="button">ì·¨ì</button>
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
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
  <script src="js/WebCam2.js"></script>
</body>

</html>