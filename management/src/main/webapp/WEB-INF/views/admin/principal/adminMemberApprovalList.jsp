<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib
uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> <%@ taglib prefix
="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
      <!-- End Page Title -->

      <section class="section">
        <div class="card" style="width: 68em">
          <div class="card-body">
            <h5 class="card-title">ElderCare Team Sign-up Approval</h5>
            <form
              method="post"
              action="${contextPath}/admin/principal/adminMemberApprovalList.do"
            >
              <table class="table">
                <thead>
                  <tr>
                    <th>
                      <input
                        class="form-check-input me-1"
                        type="checkbox"
                        name=""
                      />
                    </th>
                    <th style="margin-right: 30px !important">No</th>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Type</th>
                    <th scope="col">Sign up Date</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="member" items="${adminMemberApprovalList}">
                    ><c:choose
                      ><c:when test="${member.memberNo != PreMemberNo}">
                        <tr>
                          <div>
                            <td scope="col">
                              <input
                                class="form-check-input me-1"
                                type="checkbox"
                                name=""
                              />
                            </td>
                            <td>${member.memberNo}</td>
                            <td>${member.id}</td>
                            <td>${member.name}</td>
                            <td>${member.type}</td>
                            <td>${member.creDate}</td>
                          </div>
                        </tr></c:when
                      >
                    </c:choose>
                    <c:set var="PreMemberNo" value="${member.memberNo}" />
                  </c:forEach>
                </tbody>
              </table>
            </form>
            <!-- End List Checkboxes and radios -->
          </div>
        </div>
      </section>
    </main>
    <!-- ======= Footer ======= -->
    <%@include file="/WEB-INF/views/common/footer.jsp"%>
    <!-- End Footer -->
  </body>
</html>

<div class="pagetitle">
  <h1>General Tables</h1>
  <nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index.html">Home</a></li>
      <li class="breadcrumb-item">Tables</li>
      <li class="breadcrumb-item active">General</li>
    </ol>
  </nav>
</div>
<!-- End Page Title -->
