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
            <h2>${book.title}</h2>
        </div>
        <div class="row my-3">
            <h5><span style="color:brown">${book.user.userName}</span> read <span style="color: rebeccapurple">${book.title}</span> by <span style="color: green">${book.author}</span> </h5>
        </div>

        <div class="thoughts">
            <h3>Here are ${book.user.userName}'s thoughts</h3>
            <hr>
            <h5>${book.thoughts}</h5>
        </div>

        
    <c:if test="${userId == book.user.id}">
        <div class="mt-4"><a href="/books/${book.id}/edit">Edit Book</a></div>

    </c:if>

    <div class="d-flex justify-content-end">
        <div class="btn"><a href="/books/add">+ Add a book to my shelf</a></div>
        <div class="btn"><a href="/home">Back to Home</a></div>
    </div>

    

</body>

</html> 