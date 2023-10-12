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

    <title>RegisterForm</title>

    <!-- Favicons -->
    <link href="${contextPath}/img/register.png" rel="icon" />

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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="${contextPath}/js/registerForm1.js" rel="stylesheet" />
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
                    <span class="d-none d-lg-block">ElderCare Connect</span>
                    <img src="${contextPath}/img/elderly.png" alt="" />
                  </div>
                </div>
                <!-- End Logo -->

                <div class="card mb-3">
                  <div class="card-body">
                    <div class="pb-2">
                      <h5 class="card-title text-center pb-0 fs-4">
                        Create Admin Account
                      </h5>
                    </div>

                    <form
                      class="row g-3 needs-validation needs-validation1"
                      novalidate
                      id="registerForm"
                      method="POST"
                      action="${contextPath}/member/register.do"
                    >
                      <div class="col-12">
                        <div class="form-label">ID</div>
                        <input
                          id="id"
                          name="id"
                          class="form-control"
                          required
                        />
                        <div class="invalid-feedback">
                          Please enter your ID at least 6 characters long !
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-label">Password</div>
                        <input
                          type="password"
                          name="password1"
                          id="password1"
                          class="form-control"
                          required
                        />
                        <div class="invalid-feedback">
                          Please enter your password at least 6 characters long
                          !
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-label">Confirm Password</div>
                        <input
                          type="password"
                          id="password2"
                          class="form-control"
                          required
                        />
                        <div class="invalid-feedback">
                          Please enter your Confirm password!
                        </div>
                      </div>

                      <div class="col-12">
                        <div for="yourEmail" class="form-label">Email</div>
                        <input
                          type="email"
                          name="email"
                          class="form-control"
                          required
                        />
                        <div class="invalid-feedback">
                          Please enter a valid Email adddress!
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-label">Username</div>
                        <div class="input-group has-validation">
                          <input name="name" class="form-control" required />
                          <div class="invalid-feedback">
                            Please enter username!
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-label">Phone Number</div>
                        <div class="input-group has-validation">
                          <input name="phone" class="form-control" required />
                          <div class="invalid-feedback">
                            Please enter your phone number!
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-label">Nursing home address</div>
                        <div class="input-group has-validation">
                          <input
                            type="hidden"
                            id="h_input_zipcode"
                            placeholder="zipCode"
                            name="zipCode"
                          />

                          <div class="row">
                            <div class="col">
                              <!-- 주소 입력 필드 -->
                              <input
                                class="form-control"
                                name="address"
                                type="text"
                                id="address_input"
                                placeholder="Address"
                                readonly
                                style="margin-left: -10px"
                                required
                              />
                              <div class="invalid-feedback">
                                Please enter Nursing home address!
                              </div>
                            </div>
                            <div class="col">
                              <input
                                class="form-control"
                                type="text"
                                id="address_extra_input"
                                placeholder="Reference"
                                readonly
                              />
                            </div>
                          </div>

                          <input
                            class="form-control"
                            name="address_detail"
                            type="text"
                            id="address_detail_input"
                            style="margin: 8px 0px"
                            placeholder="Please enter the detail address."
                          />

                          <div class="col-12">
                            <button
                              class="btn btn-primary w-100"
                              type="button"
                              style="
                                background-color: transparent;
                                color: #212529;
                                border-width: 2px;
                              "
                              onclick="execDaumPostCode()"
                            >
                              Search
                            </button>
                          </div>
                          <input
                            type="hidden"
                            id="h_input_zipcode"
                            name="zipCode"
                          />
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="form-check">
                          <input
                            class="form-check-input"
                            name="terms"
                            type="checkbox"
                            id="acceptTerms"
                            required
                          />
                          <label class="form-check-label" for="acceptTerms"
                            >I agree and accept the
                            <a href="#">terms and conditions</a></label
                          >
                          <div class="invalid-feedback">
                            You must agree before submitting.
                          </div>
                        </div>
                      </div>
                      <div class="col-12">
                        <button
                          class="btn btn-primary w-100"
                          type="submit"
                          onclick="PwTest()"
                        >
                          Create Account
                        </button>
                      </div>
                      <div class="col-12">
                        <p class="small mb-0">
                          Already have an account?
                          <a href="pages-login.html">Log in</a>
                        </p>
                      </div>
                    </form>
                  </div>
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
    <script src="${contextPath}/js/registerForm1.js"></script>
    <!-- Template Main JS File -->
    <script src="${contextPath}/js/main.js"></script>
  </body>
</html>
