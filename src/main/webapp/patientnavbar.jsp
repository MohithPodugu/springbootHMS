<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealthSphere Patient Module</title>
    <style>
        /* Reset and general styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #181818;
            font-family: Arial, sans-serif;
            display: flex;
        }

        /* Sidebar container */
        .sidebar {
            width: 250px;
            background-color: #181818;
            padding: 20px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            border-right: 3px solid #7d40e7;
            color: #ffffff;
        }

        /* Logo and title */
        .logo {
            display: flex;
            align-items: center;
            color: #ffffff;
            font-weight: bold;
            font-size: 1.5em;
            margin-bottom: 30px;
        }

        .logo img {
            height: 40px;
            margin-right: 10px;
        }

        /* Navigation Links */
        .nav {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .nav a {
            color: #b3b3b3;
            text-decoration: none;
            font-size: 1em;
            font-weight: 500;
            transition: color 0.3s;
            padding: 10px;
            border-radius: 5px;
        }

        .nav a.active,
        .nav a:hover {
            color: #7d40e7;
            background-color: #333333;
        }

        /* Icons section */
        .icons {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 30px;
        }

        .icons i {
            color: #b3b3b3;
            font-size: 1.2em;
            cursor: pointer;
            transition: color 0.3s;
        }

        .icons i:hover {
            color: #ffffff;
        }

        /* Profile image */
        .profile img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            cursor: pointer;
        }

        /* Main content area */
        .main-content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <!-- Logo and title -->
        <div class="logo">
            <!-- Replace with actual logo URL -->
            MiniCare
        </div>

        <!-- Navigation Links -->
        <div class="nav">
            <a href="patienthome">Dashboard</a>
            <a href="patientprofile">Patient Profile</a>
            <a href="bookappointment"> Book Appointments</a>
            <a href="viewmyappointment"> View Appointments</a>
            <a href="chatbot.jsp">Chat Bot</a>
            <a href="#">Prescriptions</a>
            <a href="patientlogin">Logout</a>
        </div>

        <!-- Icons and Profile -->
    </div>

    <!-- Main content area -->
    <div class="main-content">
        <!-- Content goes here -->
    </div>

    <!-- Font Awesome for icons (link to include) -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

</body>

</html>