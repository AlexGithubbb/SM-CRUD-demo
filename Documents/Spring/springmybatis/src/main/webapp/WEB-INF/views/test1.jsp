<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<h1>List Employees</h1>



<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Email</th>
      <th scope="col">Gender</th>
      <th scope="col">Hobbies</th>
      <th scope="col">Country</th>
      <th scope="col">Address</th>
    </tr>
  </thead>
  <tbody>
	  <c:forEach items="${listallemployees}" var="e">
	   <tr>
      		<td>${e.fullname}</td>
            <td>${e.email}</td>
            <td>${emp.gender}</td>
            <td>${emp.hobbies}</td>
            <td>${emp.country}</td>
            <td>${emp.address}</td>
	    </tr>
	  </c:forEach>
  </tbody>
</table>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script> -->
</body>
</html>