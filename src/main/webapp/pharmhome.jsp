<%@ page import="com.klef.jfsd.springboot.model.Pharmacist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pharmacist Home Page</title>
    <style>
        /* Resetting margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Main container styling */
        .container {
            display: flex;
            height: 100vh;
            font-family: Arial, sans-serif;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: #ecf0f1;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 20px;
        }

        /* Sidebar menu items */
        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 15px;
            width: 100%;
            display: block;
            margin-bottom: 10px;
            border-radius: 5px;
            text-align: left;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        /* Content area styling */
        .content {
            flex-grow: 1;
            padding: 20px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        /* Header styling */
        .header {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        /* Image styling */
        .content img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Paragraph styling */
        .content p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar (Vertical Menubar) -->
        <div class="sidebar">
            <h2>ABHIHEAL</h2>
            <a href="pharmhome.jsp">Home</a>
            <a href="inventoryhome.jsp">Inventory Check</a>
            <a href="pharmprofile.jsp">Profile</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Main Content Area -->
        <div class="content">
            <div class="header">Welcome ${pharmacist.getName()}</div>
            <p><b>Oh joy, the menu on the left! Manage prescriptions, orders, inventory, or deal with customers. So thrilling!</b></p>
            <!-- Centered Image -->
            <img src="https://media.istockphoto.com/id/1456595339/vector/pharmacy.jpg?s=612x612&w=0&k=20&c=TQVhosBnbvAOpU5dMYWvFv4dDBpNqJBg22g51uBIRI0=" alt="Pharmacy Image">
        </div>
    </div>
</body>
</html>