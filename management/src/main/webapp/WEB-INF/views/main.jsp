<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>mainPage</title>

    <!-- Favicons -->
    <link href="${contextPath}/img/elderly.png" rel="icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="${contextPath}/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="${contextPath}/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />
    <link
      href="${contextPath}/vendor/boxicons/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link href="${contextPath}/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link
      href="${contextPath}/vendor/quill/quill.bubble.css"
      rel="stylesheet"
    />
    <link
      href="${contextPath}/vendor/remixicon/remixicon.css"
      rel="stylesheet"
    />
    <link
      href="${contextPath}/vendor/simple-datatables/style.css"
      rel="stylesheet"
    />

    <!-- Template Main CSS File -->
    <link href="${contextPath}/css/style.css" rel="stylesheet" />
  </head>

  <body>
    <main>
      <div class="container">
        <section
          class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4"
        >
          <div class="container">
            <div class="row justify-content-center">
              <div
                class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center"
              >
                <div class="d-flex justify-content-center py-4">
                  <a
                    href="${contextPath}/mainPage"
                    class="logo d-flex align-items-center w-auto"
                  >
                    <img src="${contextPath}/img/elderly.png" alt="" />
                    <span class="d-none d-lg-block" style="text-align: center">
                      Welcome to the<br />ElderCare Connect</span
                    >
                    <img src="${contextPath}/img/elderly.png" alt="" />
                  </a>
                </div>
                <!-- End Logo -->

                <div class="card mb-3">
                  <div class="card-body">
                    <form class="row g-3 needs-validation" novalidate>
                      <div class="col-12">
                        <button class="btn btn-primary w-100" type="submit">
                          Login
                        </button>
                      </div>
                      <div class="col-12">
                        <button class="btn btn-primary w-100" type="submit">
                          Administrator (Principal) Registration
                        </button>
                      </div>

                      <div class="col-12">
                        <button class="btn btn-primary w-100" type="submit">
                          Tutor Registration
                        </button>
                      </div>
                    </form>
                  </div>
                </div>

                <div class="credits">
                  <!-- All the links in the footer should remain intact. -->
                  <!-- You can delete the links only if you purchased the pro version. -->
                  <!-- Licensing information: https://bootstrapmade.com/license/ -->
                  <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                  Designed by
                  <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </main>
    <!-- End #main -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="${contextPath}/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="${contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/vendor/chart.js/chart.umd.js"></script>
    <script src="${contextPath}/vendor/echarts/echarts.min.js"></script>
    <script src="${contextPath}/vendor/quill/quill.min.js"></script>
    <script src="${contextPath}/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="${contextPath}/vendor/tinymce/tinymce.min.js"></script>
    <script src="${contextPath}/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="${contextPath}/js/main.js"></script>
  </body>
</html>
