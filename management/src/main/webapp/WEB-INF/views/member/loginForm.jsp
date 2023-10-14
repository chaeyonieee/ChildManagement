<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib
uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> <%@ taglib prefix
="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>loginForm</title>
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
                  <div class="logo d-flex align-items-center w-auto">
                    <img src="${contextPath}/img/elderly.png" alt="" />
                    <span class="d-none d-lg-block">ElderCare Center</span>
                    <img src="${contextPath}/img/elderly.png" alt="" />
                  </div>
                </div>
                <!-- End Logo -->

                <div class="card mb-3">
                  <div class="card-body">
                    <div class="pt-4 pb-2">
                      <h5 class="card-title text-center pb-0 fs-4">
                        Login to Your Account
                      </h5>
                      <p class="text-center small">
                        Enter your ID & password to login
                      </p>
                    </div>

                    <form
                      class="row g-3 needs-validation1"
                      novalidate
                      method="POST"
                      action="${contextPath}/member/login.do"
                    >
                      <div class="col-12">
                        <label for="yourUsername" class="form-label">ID</label>
                        <div class="input-group has-validation">
                          <input
                            type="text"
                            name="id"
                            class="form-control"
                            id="id"
                            required
                          />
                          <div class="invalid-feedback">
                            Please enter your ID.
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <label for="yourPassword" class="form-label"
                          >Password</label
                        >
                        <input
                          type="password1"
                          name="password1"
                          class="form-control"
                          id="yourPassword"
                          required
                        />
                        <div class="invalid-feedback">
                          Please enter your password!
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-check">
                          <input
                            class="form-check-input"
                            type="checkbox"
                            name="remember"
                            value="true"
                            id="idSaveCheck"
                          />
                          <label class="form-check-label" for="rememberMe"
                            >Remember me</label
                          >
                        </div>
                      </div>
                      <div class="col-12">
                        <button class="btn btn-primary w-100" type="submit">
                          Login
                        </button>
                      </div>
                      <div class="col-12">
                        <p class="small mb-0">
                          Don't have account?
                          <a href="${contextPath}/member/nurseRegisterForm.do"
                            >Create an account</a
                          >
                        </p>
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
  <script>
    $(document).ready(function () {
      var key = getCookie("key");
      $("#id").val(key);

      if ($("#id").val() != "") {
        $("#idSaveCheck").attr("checked", true);
      }

      $("#idSaveCheck").change(function () {
        if ($("#idSaveCheck").is(":checked")) {
          setCookie("key", $("#id").val(), 7);
        } else {
          deleteCookie("key");
        }
      });

      $("#id").keyup(function () {
        if ($("#idSaveCheck").is(":checked")) {
          setCookie("key", $("#id").val(), 7);
        }
      });
    });

    function setCookie(cookieName, value, exdays) {
      var exdate = new Date();
      exdate.setDate(exdate.getDate() + exdays);
      var cookieValue =
        escape(value) +
        (exdays == null ? "" : "; expires=" + exdate.toGMTString());
      document.cookie = cookieName + "=" + cookieValue;
    }

    function deleteCookie(cookieName) {
      var expireDate = new Date();
      expireDate.setDate(expireDate.getDate() - 1);
      document.cookie =
        cookieName + "= " + "; expires=" + expireDate.toGMTString();
    }

    function getCookie(cookieName) {
      cookieName = cookieName + "=";
      var cookieData = document.cookie;
      var start = cookieData.indexOf(cookieName);
      var cookieValue = "";
      if (start != -1) {
        start += cookieName.length;
        var end = cookieData.indexOf(";", start);
        if (end == -1) end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
      }
      return unescape(cookieValue);
    }
  </script>
</html>
