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
    <title>Tacos</title>
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
    <div class="container">
      <div class="container" style="height:100px;"></div>
    <div class="container bg-light border" style="width: 400px ;">
        
        <div class="container">
        <img class="align-content-center" style="height: 200px ;" src="images/fitsocialLogo.PNG" alt="">
    <div class="container">
            
        </div>
        </div>
        <!-- this is reg -->
        <div class="row">
            <h2 class="text-center">Create Post</h2>
    
            <form:form action="/register" method="post" modelAttribute="workout">
    
            <div>
            <div class="form-group mt-1">
                <form:label path="title"></form:label>
                <form:input class="form-control" placeholder="Post Name" path="title" />
                <form:errors  path="title" />
            </div>

            <div class="form-group mt-1">
                <form:label path="type"></form:label>
                <form:select class="form-control custom-select" placeholder="Type" path="type">
                  <option selected>Type...</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </form:select>
                <form:errors  path="type" />
            </div>
    
            <div class="form-group mt-1">
                <form:label path="targetMuscle"></form:label>
                <form:input class="form-control" placeholder="target muscle" path="targetMuscle" />
                <form:errors  path="targetMuscle" />
            </div>
                
            <div>
                <form:label path="equipment"></form:label>
                <form:input class="form-control  mt-1 " placeholder="equipment"  path="equipment" />
                <form:errors  path="equipment" />
            </div>
    
            <div>
                <form:label path="difficulty"></form:label>
                <form:input class="form-control mt-1" placeholder="difficulty" path="difficulty" />
                <form:errors  path="difficulty" />
            </div>

            <div>
              <form:label path="instructions"></form:label>
              <form:input class="form-control mt-1" placeholder="target muscle" path="instructions" />
              <form:errors  path="instructions" />
          </div>

            </div>
            <input class="mt-3 mb-3 btn btn-dark btn-md " style="width:375px;" type="submit" value="Register">
            </form:form>
    
        </div>
        </div>  
        
        <div class="container bg-light border mt-3 d-flex align-items-center justify-content-center " style="width: 400px ; height: 75px;">
            <h6 class="text-center"> Go <a href="/workouts"> Back</a></h6>
        </div>
    
    </div>
    </div>
</body>
</html>
