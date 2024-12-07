<%@page import="com.klef.jfsd.springboot.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Check if the patient data is present in session, otherwise redirect to session failure page
    Patient p = (Patient)session.getAttribute("patient");
    if (p == null) {
        response.sendRedirect("patientsessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Patient</title>
    <link rel="stylesheet" type="text/css" href="style.css">
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
            height: 100vh;
            overflow: hidden; /* Prevent vertical scrolling */
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
            flex-grow: 1; /* Ensure content fills available space */
        }

        /* Form Container */
        .form-container {
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            width: 100%;
            max-width: 700px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.6);
            overflow: hidden; /* Hide any overflow */
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        h3 {
            font-size: 1.8em;
            color: #fff;
            margin-bottom: 20px;
            text-align: center;
            text-decoration: underline;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 8px;
            color: #ddd;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="number"], input[type="password"], input[type="date"], input[type="submit"], input[type="reset"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #444;
            background-color: #555;
            color: #fff;
            font-size: 1em;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #6c63ff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #5750e1;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        /* Ensure no overflow */
        .form-container, .content {
            overflow: hidden;
        }
    </style>
</head>
<body>
    <%@include file="patientnavbar.jsp" %> <!-- Include your navbar for navigation -->
    
    <div class="content">
        <div class="form-container">
            <h3>Update Patient Details</h3>
            <form method="post" action="updatePatient">
                <table>
                    <tr>
                        <td><label for="pid">Patient ID</label></td>
                        <td><input type="text" id="pid" name="pid" value="<%= p.getPatientID() %>" readonly="readonly" required/></td>
                    </tr>
                    <tr>
                        <td><label for="pname">Name</label></td>
                        <td><input type="text" id="pname" name="pname" value="<%= p.getName() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="gender">Gender</label></td>
                        <td><input type="text" id="gender" name="gender" value="<%= p.getGender() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="pcontact">Contact Number</label></td>
                        <td><input type="text" id="pcontact" name="pcontact" value="<%= p.getContactNumber() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="pemail">Email</label></td>
                        <td><input type="email" id="pemail" name="pemail" value="<%= p.getEmail() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="paddress">Address</label></td>
                        <td><input type="text" id="paddress" name="paddress" value="<%= p.getAddress() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="bloodType">Blood Type</label></td>
                        <td><input type="text" id="bloodType" name="bloodType" value="<%= p.getBloodType() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="emergencyContact">Emergency Contact</label></td>
                        <td><input type="text" id="emergencyContact" name="emergencyContact" value="<%= p.getEmergencyContact() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="ppwd">Password</label></td>
                        <td><input type="password" id="ppwd" name="ppwd" value="<%= p.getPassword() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="pdob">Date of Birth</label></td>
                        <td><input type="date" id="pdob" name="pdob" value="<%= p.getDateOfBirth() %>" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Update"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>