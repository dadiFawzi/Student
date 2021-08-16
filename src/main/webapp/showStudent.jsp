<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">



	<title>Students Manager</title>



</head>
<body>

<%@include file="navbar.html"  %>
<%@page import="com.StudentPckg.*" %>
<%@page import="java.util.*" %>
<%@ page import="java.sql.SQLException" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>


<div class="bg-light p-5 rounded-lg m-3">
	<h1 class="display-4">Students information  </h1>
		<a class="btn btn-primary btn-lg" href="addstudent.jsp" role="button">Add Student</a>

</div>

<div class="bg-light p-5 rounded-lg m-3">

	<% List<Student> list = null;
		try {
			list = StudentDao.getAllStudent();
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		request.setAttribute("list",list);
	%>

<table class="table table-bordered  table-responsive-sm">
	<thead >

	<tr>

		<th scope="col">Student id</th>
		<th scope="col">Student name</th>
		<th scope="col">Student email</th>
        <th scope="col" >    </th>
	</tr>
	</thead>

	<c:forEach var="s" items="${list}" >

	<tbody>
	<tr>

		<td><c:out value="${s.getId()}"/></td>
		<td><c:out value="${s.getName()}"/></td>
		<td><c:out value="${s.getEmail()}"/></td>
		<td >
			<a href="editstudent.jsp?id=${s.id}" class="btnv btn-sm btn-primary" >
				<i class="bi bi-pencil-square"></i>
				<span><strong> Edit</strong></span>
			</a>
			<a href="deletestudent.jsp?id=${s.id}"  class="btnv btn-sm btn-danger"  style = "margin-left: 5px;">
				<i class="bi bi-trash"></i>
			<span><strong>Delete</strong></span>
			</a>

		</td>
	</tr>
</c:forEach>




	</tbody>
</table>

</div>





<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
</body>
</html>