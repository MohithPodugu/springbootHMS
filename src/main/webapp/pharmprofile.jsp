<%@ page import="com.klef.jfsd.springboot.model.Pharmacist" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    Pharmacist ph = (Pharmacist) session.getAttribute("pharmacist");
    if (ph == null) {
        response.sendRedirect("pharmsessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacist Profile</title>
    <!-- Font Awesome Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }

        .sidebar h2 {
            margin-bottom: 20px;
            color: #ecf0f1;
        }

        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 10px 15px;
            margin-bottom: 10px;
            display: block;
            border-radius: 5px;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Content Styling */
        .content {
            flex-grow: 1;
            padding: 20px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .profile-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        .profile-header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile-icon {
            font-size: 50px;
            margin-right: 15px;
            color: #2c3e50;
        }

        .profile-info h2 {
            font-size: 24px;
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .profile-info p {
            font-size: 16px;
            color: #555;
        }

        .profile-section {
            margin-bottom: 20px;
            text-align: left;
        }

        .profile-section h3 {
            font-size: 18px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .profile-section p {
            font-size: 16px;
            color: #555;
            margin: 5px 0;
        }

        /* Button Styling */
        .button {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            font-size: 16px;
        }

        .button:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>ABHIHEAL</h2>
            <a href="pharmhome.jsp">Home</a>
            <a href="inventoryhome.jsp">Inventory Check</a>
            <a href="pharmprofile.jsp">Update Profile</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Content -->
        <div class="content">
            <div class="profile-container">
                <!-- Profile Header -->
                <div class="profile-header">
                    <i class="fa-solid fa-user-md profile-icon"></i>
                    <div class="profile-info">
                        <h2><%= ph.getName() %></h2>
                        <p><strong>Contact:</strong> <%= ph.getContactNumber() %></p>
                        <p><strong>Email:</strong> <%= ph.getEmail() %></p>
                        <p><strong>Pharmacy Location:</strong> <%= ph.getPharmacyLocation() %></p>
                    </div>
                </div>

                <!-- Professional Information -->
                <div class="profile-section">
                    <h3>Professional Information</h3>
                    <p><strong>Years of Experience:</strong> <%= ph.getYearsOfExperience() %></p>
                    <p><strong>Availability Status:</strong> <%= ph.getAvailabilityStatus() %></p>
                    <p><strong>Shift Timing:</strong> <%= ph.getShiftTiming() %></p>
                    <p><strong>Managed Medicines:</strong> <%= ph.getManagedMedicines() %></p>
                </div>

                <!-- Address & Qualifications -->
                <div class="profile-section">
                    <h3>Address & Qualifications</h3>
                    <p><strong>Address:</strong> <%= ph.getAddress() %></p>
                    <p><strong>License Number:</strong> <%= ph.getLicenseNumber() %></p>
                </div>

                <!-- Edit Button -->
                <div class="profile-section">
                    <a href="updatepharmacist" class="button">Edit Profile</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>