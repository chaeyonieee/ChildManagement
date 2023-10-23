<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib
uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> <%@ taglib prefix
="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <script>
      function input() {
       const type = document.querySelector("#input_type").value;
       console.log(type);
    </script>

    <title>NurseRegisterForm</title>
  </head>

  <body>
    <!-- ======= Header ======= -->
    <%@include file="/WEB-INF/views/common/header.jsp"%>
    <!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <%@include file="/WEB-INF/views/common/side.jsp"%>
    <!-- End Sidebar-->
    <main id="main" class="main">
      <div class="pagetitle">
        <h1>List Group</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item">Components</li>
            <li class="breadcrumb-item active">List Group</li>
          </ol>
        </nav>
      </div>

      <section class="section">
        <div class="card-body" style="width: 68em">
          <div class="card-body">
            <form
              class="row g-3"
              novalidate
              id="registerForm"
              method="POST"
              action="${contextPath}/member/nurseRegister.do"
            >
              <div class="col-8">
                <div class="form-label">Types</div>
                <div class="input-group">
                  <select id="type" name="type" class="form-control" required>
                    <option value="Certified Nursing Assistant(CNA)">
                      Certified Nursing Assistant(CNA)
                    </option>
                    <option value="Nursing Supervisor">
                      Nursing Supervisor
                    </option>
                    <option value="Personal Care Aide">
                      Personal Care Aide
                    </option>
                  </select>
                  <div class="invalid-feedback">
                    Please select your profession!
                  </div>
                </div>
              </div>

              <div class="col-8">
                <button class="btn btn-primary w-100" type="submit">
                  Modify
                </button>
              </div>
            </form>
          </div>
        </div>
      </section>
    </main>
    <!-- End #main -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>
  </body>
  <!-- ======= Footer ======= -->
  <%@include file="/WEB-INF/views/common/footer.jsp"%>
  <!-- End Footer -->
</html>
