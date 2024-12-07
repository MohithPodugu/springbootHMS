<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal - View All Doctors</title>
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
            max-width: 80%; /* Reduced width */
            overflow-x: auto;
            border-radius: 8px;
            background-color: #1c1c1c;
            padding: 10px; /* Reduced padding */
            margin: auto;
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
  <div class="d-flex">
  <div>
    <%@ include file="adminnavbar.jsp" %> <!-- Ensures navbar styling is separate -->
</div>
    <div class="content">
        <h3>View All Doctors</h3>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>SPECIALIZATION</th>
                        <th>CONTACT</th>
                        <th>EMAIL</th>
                        <th>ADDRESS</th>
                        <th>EXPERIENCE</th>
                        <th>AVAILABILITY</th>
                        <th>SHIFT</th>
                        <th>FEE</th>
                        <th>DEPARTMENT</th>
                        <th>QUALIFICATIONS</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${doctorlist}" var="doc">
                        <tr>
                            <td><c:out value="${doc.doctorID}"/></td>
                            <td><c:out value="${doc.name}"/></td>
                            <td><c:out value="${doc.specialization}"/></td>
                            <td><c:out value="${doc.contactNumber}"/></td>
                            <td><c:out value="${doc.email}"/></td>
                            <td><c:out value="${doc.address}"/></td>
                            <td><c:out value="${doc.yearsOfExperience}"/></td>
                            <td><c:out value="${doc.availabilityStatus}"/></td>
                            <td><c:out value="${doc.shiftTiming}"/></td>
                            <td><c:out value="${doc.consultationFee}"/></td>
                            <td><c:out value="${doc.department}"/></td>
                            <td><c:out value="${doc.qualifications}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>