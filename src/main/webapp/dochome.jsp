<%@page import="com.klef.jfsd.springboot.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Doctor d = (Doctor) session.getAttribute("doctor");
    if (d == null) {
        response.sendRedirect("doctorsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HealthSphere - Doctor Home</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
     <style>h1{
    color:white;
    tex-align:center;}</style>
</head>

<body >
   <%@ include file="docnavbar.jsp" %>
   <h1 >Welcome <%= d.getName()%></h1>
</body>

</html>
