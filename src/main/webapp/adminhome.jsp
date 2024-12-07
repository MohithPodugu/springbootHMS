<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>h1{
    color:white;
    tex-align:center;}</style>
</head>

<body >
 
 <%@include file="adminnavbar.jsp" %>
<h1 >Welcome <%= a.getUsername()%></h1>
    

</body>

</html>
