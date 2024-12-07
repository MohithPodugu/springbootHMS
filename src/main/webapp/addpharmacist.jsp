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
    <title>Add Pharmacist</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #000;
            color: #fff;
            display: flex;
            height: 100vh;
        }

        .d-flex {
            display: flex;
            width: 100%;
        }

        .navbar-container {
            width: 20%;
            background-color: #121212;
            min-height: 100vh;
        }

        .form-container {
            width: 80%;
            background-color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-wrapper {
            width: 350px;
            padding: 20px;
            background-color: #000;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .form-wrapper h3 {
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            position: relative;
            margin-bottom: 15px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 8px 8px 8px 30px;
            font-size: 13px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #121212;
            color: #ddd;
        }

        .form-group i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #7d72b8;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #5e56a8;
        }

        .btn-reset {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-reset:hover {
            background-color: #666;
        }
    </style>
</head>

<body>
    <div class="d-flex">
        <!-- Navbar -->
        <div class="navbar-container">
            <%@ include file="adminnavbar.jsp" %>
        </div>

        <!-- Form -->
        <div class="form-container">
            <div class="form-wrapper">
                <h3>Add Pharmacist</h3>
                <form action="submitPharmacistForm" method="POST">
                    <div class="form-group">
                        <i class="fas fa-user"></i>
                        <input type="text" name="phname" placeholder="Pharmacist Name" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-phone-alt"></i>
                        <input type="text" name="phcontact" placeholder="Contact Number" required pattern="\d{10}">
                    </div>
                    <div class="form-group">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="phemail" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-home"></i>
                        <input type="text" name="phaddress" placeholder="Address" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-briefcase"></i>
                        <input type="number" name="phexperience" placeholder="Years of Experience" required min="0">
                    </div>
                    <div class="form-group">
                        <i class="fas fa-clock"></i>
                        <input type="text" name="phavailability" placeholder="Availability Status" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-calendar-alt"></i>
                        <input type="text" name="phshift" placeholder="Shift Timing" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-id-card"></i>
                        <input type="text" name="phlicense" placeholder="License Number" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-map-marker-alt"></i>
                        <input type="text" name="phlocation" placeholder="Pharmacy Location" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-prescription-bottle-alt"></i>
                        <input type="text" name="phmedicines" placeholder="Managed Medicines" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="phpwd" placeholder="Password" required>
                    </div>
                    <button type="submit" class="btn-submit">Add</button>
                    <button type="reset" class="btn-reset">Reset</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>