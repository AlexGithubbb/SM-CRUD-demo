<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>


	<%-- <c:if test="${}"></c:if> --%>


	<h1>Register New Employee</h1>
	<br />
	<s:form modelAttribute="employee" action="insertEmployee">

		<input id="hiddenHobbies" type="hidden" value="${employee.hobbies}">

		<s:hidden path="id" />
		
		Employee Name: <s:input path="fullname" />
		<br />
		<br />
		Employee Email: <s:input path="email" />
		<br />
		<br />
		 Gender: <s:radiobutton path="gender" value="Male" />Male
				 <s:radiobutton path="gender" value="Female" />Female
		<br />
		<br />
		
		Hobbies: <s:checkbox path="hobbies" value="Sports" />Sports
		<s:checkbox path="hobbies" value="Music" />Music
		<s:checkbox path="hobbies" value="Coding" />Coding
		<s:checkbox path="hobbies" value="Movie" />Movie<br />
		<br />
		
		Country: 
		<s:select path="country">
			<s:option value="China">China</s:option>
			<s:option value="Canada">Canada</s:option>
			<s:option value="America">America</s:option>
			<s:option value="India">India</s:option>
		</s:select>
		<br />
		<br />
		Address: <s:textarea path="address" />
		<br />
		<br />

		<input type="submit" value="REGISTER" />

	</s:form>

	<!-- Transfer the hidden text value into the checkbox -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			// get hidden text
			var hiddenText = $("#hiddenHobbies").val().split(",");
			// get all checkboxes
			var $checkboxes = $("input[type=checkbox]");

			$checkboxes.each(function(index, e) {

				if (hiddenText.indexOf(e.value) != -1) {
					e.setAttribute("checked", "checked");
				} else {
					e.removeAttribute("checked");
				}
			})

		})

		// loop through boxes and change the atrribute checked based on the indexof value
	</script>

</body>
</html>