<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitSocial</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<style>
    body {
        background-image: url("/images/fitsocial.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        min-height: 100vh;
    }
    </style>
<body >


<div class="container" style="height:100px;"></div>
    <div class="container bg-light border" style="width: 350px ;">
        
        <div class="container">
        <img class="align-content-center" style="height: 200px ;" src="images/fitsocialLogo.PNG" alt="">
    <div class="container">
            <div class="col">
            <h2 class="text-center">Already a member?</h2>
            <div class="form-group">
                <form:form action="/login" method="post" modelAttribute="newLogin">
                <div class="form-group mb-1">
                    <form:label path="email" >email</form:label>
                    <form:input class="form-control" path="email" />
                    <form:errors path="email" />
                </div>
                <div class="form-group mb-1">
                <form:label path="password" >password</form:label>
                <form:input class="form-control" path="password" />
                <form:errors path="password" />
                </div>
                <input class="mb-1 mt-2 btn btn-danger" type="submit" value="login">
            </form:form>
        </div>
        </div>
        </div>
        <!-- this is reg -->
        <div class="row">
            <h2 class="text-center">Sign-up</h2>
    
            <form:form action="/register" method="post" modelAttribute="newUser">
    
            <div>
            <div class="form-group mt-1">
                <form:label path="userName">User Name</form:label>
                <form:input class="form-control" path="userName" />
                <form:errors  path="userName" />
            </div>

            <div class="form-group mt-1">
                <form:label path="fullName">Full Name</form:label>
                <form:input class="form-control" path="fullName" />
                <form:errors  path="fullName" />
            </div>
    
            <div class="form-group mt-1">
                <form:label path="email">email</form:label>
                <form:input class="form-control" path="email" />
                <form:errors  path="email" />
            </div>
                
            <div>
                <form:label path="password">password</form:label>
                <form:input class="form-control mt-1" path="password" />
                <form:errors  path="password" />
            </div>
    
            <div>
                <form:label path="confirm">confirm password</form:label>
                <form:input class="form-control mt-1" path="confirm" />
                <form:errors  path="confirm" />
            </div>
            </div>
            <input class="mt-3 mb-3 btn btn-danger border" type="submit" value="Register">
            </form:form>
    
        </div>
        </div>    
    
    </div>

    <footer class="p-5  text-white text-center position-relative mt-3">
        <div class="container">
            <p class="lead">| Where fitness and social media come together | Copyright &copy; 2022  FitSocial | </p> 
            <a href="#" class="position-absolute bottom-0 end-0 p-5">
                <i class="bi bi-arrow-up-cirle text-danger h1"></i>
            </a>
        </div>

    </footer>
</body>
</html>