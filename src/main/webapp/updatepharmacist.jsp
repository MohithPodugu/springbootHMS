<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.klef.jfsd.springboot.model.Pharmacist"%>

<%
    Pharmacist pharm = (Pharmacist)session.getAttribute("pharmacist");
    if (pharm == null) {
        response.sendRedirect("pharmacistsessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Pharmacist</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flex;
            font-family: Arial, sans-serif;
            height: 100vh;
        }

        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            color: #ecf0f1;
            display: flex;
            flex-direction: column;
            padding: 20px;
        }

        .sidebar h2 {
            margin-bottom: 20px;
        }

        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .sidebar a:hover {
            background-color: #34495e;
        }

        .content {
            flex-grow: 1;
            background-color: #f4f4f4;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }

        .form-container h3 {
            margin-bottom: 20px;
            text-align: center;
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            vertical-align: middle;
        }

        label {
            font-weight: bold;
            color: #2c3e50;
        }

        input[type="text"], input[type="number"], input[type="email"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #2c3e50;
            color: #ecf0f1;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>ABHIHEAL</h2>
        <a href="pharmhome.jsp">Home</a>
        <a href="inventoryhome.jsp">Inventory Check</a>
        <a href="pharmprofile.jsp">Profile</a>
       
        <a href="index.jsp">Logout</a>
    </div>

    <div class="content">
        <div class="form-container">
            <h3>Update Pharmacist Details</h3>
            <form method="post" action="updatePharm">
                <table>
                    <tr>
                        <td><label for="phid">Pharmacist ID</label></td>
                        <td><input type="text" id="phid" name="phid" value="<%= pharm.getPharmacistID() %>" readonly required></td>
                    </tr>
                    <tr>
                        <td><label for="phname">Name</label></td>
                        <td><input type="text" id="phname" name="phname" value="<%= pharm.getName() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phcontact">Contact Number</label></td>
                        <td><input type="text" id="phcontact" name="phcontact" value="<%= pharm.getContactNumber() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phemail">Email</label></td>
                        <td><input type="email" id="phemail" name="phemail" value="<%= pharm.getEmail() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phaddress">Address</label></td>
                        <td><input type="text" id="phaddress" name="phaddress" value="<%= pharm.getAddress() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phexperience">Years of Experience</label></td>
                        <td><input type="number" id="phexperience" name="phexperience" value="<%= pharm.getYearsOfExperience() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phavailability">Availability Status</label></td>
                        <td><input type="text" id="phavailability" name="phavailability" value="<%= pharm.getAvailabilityStatus() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phshift">Shift Timing</label></td>
                        <td><input type="text" id="phshift" name="phshift" value="<%= pharm.getShiftTiming() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phlicense">License Number</label></td>
                        <td><input type="text" id="phlicense" name="phlicense" value="<%= pharm.getLicenseNumber() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phlocation">Pharmacy Location</label></td>
                        <td><input type="text" id="phlocation" name="phlocation" value="<%= pharm.getPharmacyLocation() %>" required></td>
                    </tr>
                    <tr>
                        <td><label for="phmedicines">Managed Medicines</label></td>
                        <td><input type="text" id="phmedicines" name="phmedicines" value="<%= pharm.getManagedMedicines() %>" required></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Update">
                            <input type="reset" value="Clear">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>