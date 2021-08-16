<%--
  Created by IntelliJ IDEA.
  User: fawzi
  Date: 8/7/2021
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>


<body>
<%@include file="navbar.html"  %>
<%@page import="com.StudentPckg.*" %>
<%@page import="java.util.*" %>
<%@ page import="java.sql.SQLException" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>






<%
    String name = null ;
    String email = null ;
    String password =null ;

    try {
        if (!request.getParameter("name").equals(null)) {
            name = (String) request.getParameter("name");
        }
        if (!request.getParameter("email").equals(null)) {
            email = (String) request.getParameter("email");
        }
        if (!request.getParameter("password").equals(null)) {
            password = (String) request.getParameter("password");
        }

        if ((!name.equals(null)) || (!email.equals(null)) || (!password.equals(null))) {
            Student st = new Student(name, email, password);
           int  stat   =  StudentDao.addStudent(st);



            }

    }catch (Exception e ){
        e.printStackTrace();
    }

%>


<div class="bg-light p-5 rounded-lg m-3">
    <h1 class="display-4">Add new Student  </h1>
    <a class="btn btn-primary btn-lg" href="showStudent.jsp" role="button">Show students information</a>

</div>

<div class="container"  >

    <div class="bg-light p-5 rounded-lg m-3">
        <article class="card-body mx-auto" style="width: 80%;">
            <h4 class="card-title mt-3 text-center">add Student</h4>


            <form action="addstudent.jsp" method="post" id="form">
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input name="name" class="form-control" placeholder="Full name" type="text">
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                    </div>
                    <input name="email" class="form-control" placeholder="Email address" type="email">
                </div>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input name="password" class="form-control" placeholder="Create password" type="password">
                </div> <!-- form-group// -->


                <div class="form-group">
                    <button type="submit"  class="btn btn-primary"  >
                        Add Student
                    </button>


                </div>

            </form>


            <script>
                if ( window.history.replaceState ) {
                    window.history.replaceState( null, null, window.location.href );
                }
            </script>


        </article>
    </div> <!-- card.// -->

</div>
<!--container end.//-->









<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

</body>

</html>
