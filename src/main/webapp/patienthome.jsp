<%@page import="com.klef.jfsd.springboot.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Patient p = (Patient) session.getAttribute("patient");
    if (p == null) {
        response.sendRedirect("patientsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Patient Dashboard</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%; /* Ensure full height */
            overflow: hidden; /* Disable scrolling */
            background-color: #121212;
        }

        .sidebar {
            width: 250px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #1f1f1f;
            color: white;
            padding: 15px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            box-shadow: 2px 0px 5px rgba(0, 0, 0, 0.5);
        }

        .main-content {
            margin-left: 250px; /* Reserve space for the sidebar */
            width: calc(100% - 250px); /* Avoid overlap with the sidebar */
            height: 100%; /* Ensure full height */
            display: flex;
            flex-direction: column; /* Arrange items vertically */
            justify-content: center;
            align-items: center;
            box-sizing: border-box;
        }

        .welcome-card {
            background-color: #7d72b8;
            color: white;
            text-align: center;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px; /* Increased width for a balanced look */
        }

        .welcome-card h1 {
            font-size: 28px;
            margin: 0;
        }

        .welcome-card p {
            font-size: 18px;
            margin-top: 10px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 10px 0;
            color: #bbb;
            font-size: 18px;
        }

        .sidebar ul li:hover {
            color: #fff;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <%@include file="patientnavbar.jsp" %>

    <div class="main-content">
        <div class="welcome-card">
            <h1>Welcome, <%= p.getName() %></h1>
            <p>Dashboard for Patient Management</p>
        </div>
    </div>
</body>

</html>
