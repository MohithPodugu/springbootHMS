<%@ page import="com.klef.jfsd.springboot.model.Patient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Patient p = (Patient)session.getAttribute("patient");
    if(p == null) {
        response.sendRedirect("patientsessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Profile</title>
    <!-- Font Awesome Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #1e1e1e;
            color: #ddd;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styles */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #444;
            border-radius: 5px;
        }

        /* Page content margin to account for fixed navbar */
        .content {
            margin-top: 100px; /* Adjusted to navbar height */
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Profile container */
        .profile-container {
            background-color: #333;
            padding: 30px;
            border-radius: 10px;
            max-width: 800px;
            width: 100%;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.6);
        }

        /* Profile header */
        .profile-header {
            display: flex;
            align-items: center;
            border-bottom: 2px solid #444;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }

        /* Font Awesome icon styling */
        .profile-icon {
            font-size: 80px;
            color: #6c63ff;
            margin-right: 20px;
        }

        /* Profile info section */
        .profile-info h2 {
            font-size: 2em;
            margin: 0;
            color: #fff;
            font-weight: 600;
        }

        .profile-info p {
            margin: 10px 0;
            color: #ccc;
            font-size: 1.1em;
        }

        .profile-info p strong {
            color: #fff;
        }

        /* Profile sections */
        .profile-section {
            margin-bottom: 25px;
        }

        .profile-section h3 {
            font-size: 1.3em;
            color: #6c63ff;
            margin-bottom: 15px;
            font-weight: 500;
        }

        .profile-section p {
            margin: 5px 0;
            color: #ddd;
            font-size: 1.1em;
        }

        .profile-section strong {
            color: #fff;
        }

        /* Styling for buttons if any */
        .button {
            background-color: #6c63ff;
            color: white;
            padding: 12px 25px;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #5750e1;
        }
    </style>
</head>
<body>

       <%@ include file="patientnavbar.jsp" %>
    
    <div class="content">
        <div class="profile-container">
            <!-- Patient Profile Header -->
            <div class="profile-header">
                <i class="fa-solid fa-user profile-icon"></i>

                <div class="profile-info">
                    <h2><%= p.getName() %></h2>
                    <p><strong>Contact:</strong> <%= p.getContactNumber() %></p>
                    <p><strong>Email:</strong> <%= p.getEmail() %></p>
                    <p><strong>Address:</strong> <%= p.getAddress() %></p>
                    <p><strong>Blood Type:</strong> <%= p.getBloodType() %></p>
                </div>
            </div>

            <!-- Patient Medical Information -->
            <div class="profile-section">
                <h3>Medical Information</h3>
                <p><strong>Emergency Contact:</strong> <%= p.getEmergencyContact() %></p>
                <p><strong>Date of Birth:</strong> <%= p.getDateOfBirth() %></p>
            </div>

            <!-- Optional Button -->
            <div class="profile-section">
                <a href="updatepatient"> <button class="button">Edit Profile</button></a>
            </div>
        </div>
    </div>

</body>
</html>