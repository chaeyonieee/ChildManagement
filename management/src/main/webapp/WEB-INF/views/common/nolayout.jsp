<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%> <%@ taglib uri
="http://tiles.apache.org/tags-tiles" prefix="tiles" %> <%@ taglib prefix ="c"
uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
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
    <link rel="stylesheet" href="${contextPath}/css/register.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <body>
    <tiles:insertAttribute name="body" />
  </body>
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
</html>
