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
    <title>MiniCare- Doctor Home</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
     
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #121212; /* Dark background */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #1f1f1f;
            color: white;
            padding: 15px;
        }

        .main-content {
            margin-left: 250px; /* Reserve space for the sidebar */
            width: calc(100% - 250px); /* Avoid overlap */
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .welcome-card {
            background-color: #7d72b8;
            color: white;
            text-align: center;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px; /* Fixed width */
        }

        .welcome-card h1 {
            font-size: 28px;
            margin: 0;
        }

        .welcome-card p {
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
</head>

<body >
   <%@ include file="docnavbar.jsp" %>
   
    <div class="main-content">
        <div class="welcome-card">
             <h1 >Welcome <%= d.getName()%></h1>
            <p>Dashboard for Doctor Management</p>
        </div>
    </div>
  
</body>

</html>
