<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="java.util.Date" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--  mgiht show error-->
<%@ page isErrorPage="true" %>  


<!DOCTYPE html>
<html>

<head>
    <!-- bootstrap -->
    <!-- <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"  crossorigin="anonymous">
    <!-- regularcss -->
    <link rel="stylesheet" type="text/css" href="/css/style.css">

    <!-- bootstrap js -->
    <!-- <script src="/webjars/jquery/jquery.min.js"></script> -->
    <!-- <script src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->

    <!-- regular js -->
    <script type="text/javascript" src="/javascript/script.js"></script>

    <meta charset="UTF-8">
    <title>Home</title>
</head>

<body>
    <div class="container">
        <div class="row mt-2">
            <h2>Hello, Welcome!</h2>
        </div>
        <div class="row mt-2">
            <div class="col">
                <div class="card">
                    <h4 class="card-header text-primary p-4">Create a Book</h4>
                    <div class="card-body">
                                                
                        <form:form action="/books" method="post" modelAttribute="book">
                            <div class="mb-3">
                                <form:label path="title" class="form-label">title </form:label>
                                <form:input path="title" type="text" class="form-control" placeholder="title" />
                                <form:errors  class="text-danger" path="title" />
                            </div>

                            <div class="mb-3">
                                <form:label path="author" class="form-label">author </form:label>
                                <form:input path="author" type="text" class="form-control" placeholder="author" />
                                <form:errors  class="text-danger" path="author" />
                            </div>


                            <div class="mb-3">
                                <form:label path="thoughts" class="form-label">thoughts </form:label>
                                <form:input path="thoughts" type="text" class="form-control" placeholder="thoughts" />
                                <form:errors  class="text-danger" path="thoughts" />
                            </div>

                            <!-- ?path can be eiterh user.id or user for some reason-->
                            <form:input path="user.id" type="hidden" value="${userId}" />

                            <div class="d-flex justify-content-end">
                                <input type="submit" value="Add" class="btn btn-primary">
                            </div>
                        </form:form>

                        
                    </div>
                </div>
            </div>

    </div>
    <a href="/logout" class="btn" style="color: red">Logout</a>
    <!-- <input type="submit" value="Login" class="btn btn-primary"> -->


    <a href="/books/add">+ Add a book to my shelf</a>

</body>

</html>