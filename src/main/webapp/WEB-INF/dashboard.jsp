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
        <div class="row">
            <div class="d-flex align-items-center justify-content-end">
                <div class="logout"><a href="/logout" class="btn" style="color: red">Logout</a></div>
                <div class="add"><a href="/books/add">+ Add a book to my shelf</a></div>
            </div>
        </div>
        <div class="row mt-2">
            <h2>Hello, Welcome 
                ${user.userName}! </h2>
        </div>

        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Posted by</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td><a href="/books/${book.id}/show">${book.title}</a></td>
                        <td>${book.author}</td>
                        <td>${book.user.userName}</td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>



</body>

</html>