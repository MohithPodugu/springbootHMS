<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Portal - View All Patients</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #000;
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styling */
        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #121212;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            z-index: 1000;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: space-around;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #7d72b8;
        }

        /* Content Styling */
        .content {
            padding: 20px;
            margin-top: 80px; /* Spacing below navbar */
            width: 90%;
            margin-left: auto;
            margin-right: auto;
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            text-decoration: underline;
        }

        /* Table Styling */
        .table-container {
            width: 90%; /* Reduced width */
            max-width: 1200px; /* Limit the width of the table */
            overflow-x: auto;
            border-radius: 8px;
            background-color: #1c1c1c;
            padding: 10px; /* Reduced padding */
            margin: auto; /* Center the table container */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #FFF8E7;
            color: white;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 10px; /* Compact spacing */
            text-align: center;
            border: 2px solid #562B7C;
            word-wrap: break-word;
        }

        th {
            background-color: #121212;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #1c1c1c;
        }

        tr:nth-child(odd) {
            background-color: #262626;
        }

        tr:hover {
            background-color: #333;
            cursor: pointer;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            th, td {
                font-size: 14px;
                padding: 8px;
            }

            nav ul {
                flex-direction: column;
                align-items: center;
            }

            nav ul li a {
                padding: 8px 12px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<h3 style="color: #fff; text-decoration: underline;">Delete Patients</h3>

<div class="table-container">

    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>CONTACT</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
            <th>BLOOD TYPE</th>
            <th>EMERGENCY CONTACT</th>
            <th>DATE OF BIRTH</th>
            <th>ADMISSION DATE</th>
            <th>PASSWORD</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${patientlist}" var="pat">
            <tr>
                <td><c:out value="${pat.patientID}"/></td>
                <td><c:out value="${pat.name}"/></td>
                <td><c:out value="${pat.contactNumber}"/></td>
                <td><c:out value="${pat.email}"/></td>
                <td><c:out value="${pat.address}"/></td>
                <td><c:out value="${pat.bloodType}"/></td>
                <td><c:out value="${pat.emergencyContact}"/></td>
                <td><c:out value="${pat.dateOfBirth}"/></td>
                <td><c:out value="${pat.admissionDate}"/></td>
                <td><c:out value="${pat.password}"/></td>
                <td>
                    <a href='<c:url value="deletedpatient?id=${pat.patientID}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>