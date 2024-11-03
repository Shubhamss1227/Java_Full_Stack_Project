<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*"%>
<html>
<head>
    <link rel="stylesheet" href="Static/CSS/Bs-css/bootstrap.min.css">
    <link rel="stylesheet" href="Static/CSS/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dash</title>
</head>
<body class="login">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
         <%

                    String username = (session != null) ? (String) session.getAttribute("username") : "User";
          %>
                <a class="navbar-brand" href="dash.jsp">Hi, <%= username %></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportContent" aria-controls="navbarSupportContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportContent">
            <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="employee-list.html">Employees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="jobs-list.html">Jobs</a>
                </li>
            </ul>
            <form class="d-flex">
                <div class="input-group">
                    <input type="search" class="form-control form-control-sm" placeholder="Search.." aria-label="Search.." aria-describedby="button-addon2">
                    <button class="btn btn-sm btn-success" type="button" id="button-addon2"><i class="fa fa-search"></i></button>
                </div>
            </form>
            <a href="login.jsp" class="btn btn-sm btn-warning ml-3 ms-1">Log out</a>
        </div>
    </div>
</nav>
<!-- dashboard contents start -->

<div class="container-fluid">
    <div class="row mt-3">
        <div class="col-lg-3 col-md-3">
            <div class="card card-border">
                <div class="card-body">
                    <h4 class="card-title"> 3 <small class="text-muted">Employees</small></h4>
                </div>
                <div class="list-group list-group-flush">
                    <a href="employee-list.html" class="list-group-item list-group-item-primary">View All</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3">
            <div class="card card-border">
                <div class="card-body">
                    <h4 class="card-title"> 5 <small class="text-muted">Jobs</small></h4>
                </div>
                <div class="list-group list-group-flush">
                    <a href="jobs-list.html" class="list-group-item list-group-item-primary">View All</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="Static/JavaScript/js/bootstrap.bundle.min.js"></script>
</body>
</html>
