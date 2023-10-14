<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib
uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> <%@ taglib prefix
="c" uri ="http://java.sun.com/jsp/jstl/core" %>
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
                        <button
                          class="btn btn-primary w-100"
                          type="button"
                          onclick="location.href='${contextPath}/member/loginForm.do'"
                        >
                          Login
                        </button>
                      </div>
                      <div class="col-12">
                        <button
                          class="btn btn-primary w-100"
                          type="button"
                          onclick="location.href='${contextPath}/member/registerForm.do'"
                        >
                          Administrator (Principal) Registration
                        </button>
                      </div>

                      <div class="col-12">
                        <button
                          class="btn btn-primary w-100"
                          type="button"
                          onclick="location.href='${contextPath}/member/nurseRegisterForm.do'"
                        >
                          ElderCare Team Registration
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
  </body>
</html>
