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
    <title>Fit Social</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<style>
    body {
        background-image: url("/images/hero2.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        min-height: 100vh;
    }
    </style>
<body>
   dashboard
       <!-- ########### this is our nav bar ############ -->
       <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 fixed-top">
        <div class="container">
            <!-- <a href="#" class="navbar-brand"> <img src= "{{url_for('static', filename='bodybuildz.png')}}" class="img-fluid w-50 " /></a> -->
            <a href="/workouts" class="navbar-brand"> <img class="align-content-center" style="height: 100px ;" src="/images/fitsocialLogoWhite.PNG" alt="Logo"></a>


            <button 
                class="navbar-toggler" 
                type="button" 
                data-bs-toggle="collapse" 
                data-bs-target="#navmenu" 
            >
                <span class="navbar-toggler-icon"></span>
            </button>

        <!-- button toggles the nav menu because of the navmenu id -->

            <div class="collapse navbar-collapse" id="navmenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a href="/workouts" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="/workouts/new" class="nav-link">Create</a>
                    </li>
                    <li class="nav-item">
                        <a href="/profile" class="nav-link">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a href="/logout" type="submit" value="logout" class="nav-link"> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container" style="height: 200px;"></div>

    <div class="container">
        <div class="card padding-3">
            <div class="card-header">
                <img class="align-content-center mt-3 mb-3" style="height:100px;" src="/images/user-circle.png" alt="Profile picture">
                <h1>${user.fullName}</h1>
            </div>
            <div class="card-body d-flex justify-content-center">
                <h3>Workouts</h3>
            </div>
            <div>
                <c:forEach var="workout" items="${user.workouts}">
            <div class="col">
                <div class="card border border-dark " style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">${workout.title}</h5>
                        <p class="card-text">${workout.instructions}.</p>
                        <p class="card-text">Difficulty: ${workout.difficulty}.</p>
                    </div>
                    <ul class="list-group list-group-flush"> <p>Equipment for workout</p>
                        <li class="list-group-item">${workout.equipment}</li>
                    </ul>
                    <div class="card-body">
                        <a href="/workouts/new" class="btn btn-primary"> Post new workout!</a>
                        <a href="#" class="btn btn-primary">Another link</a>
                    </div>
                </div>
            </div>
        </c:forEach>
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