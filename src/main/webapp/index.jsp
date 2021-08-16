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

<div class="bg-light p-5 rounded-lg m-3">
    <h1 class="display-4">welcom </h1>
    <a class="btn btn-primary btn-lg" href="showStudent.jsp" role="button">Show students information</a>
    <a class="btn btn-primary btn-lg" href="addstudent.jsp" role="button">Add Student</a>
</div>

</body>
</html>