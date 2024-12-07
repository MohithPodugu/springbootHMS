<%@page import="com.klef.jfsd.springboot.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Check if the employee data is present in session, otherwise redirect to session failure page
    Doctor d = (Doctor)session.getAttribute("doctor");
    if (d == null) {
        response.sendRedirect("docsessionfail");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Doctor</title>

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

        /* Form container */
        .form-container {
            background-color: #333;
            padding: 30px;
            border-radius: 10px;
            max-width: 800px;
            width: 100%;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.6);
        }

        h3 {
            color: #fff;
            font-size: 1.8em;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Form Styling */
        table {
            width: 100%;
            border-spacing: 15px;
        }

        td {
            padding: 10px;
        }

        label {
            color: #fff;
            font-size: 1.1em;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="submit"],
        input[type="reset"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #444;
            background-color: #555;
            color: #fff;
            font-size: 1em;
            margin-bottom: 10px;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 48%;
            background-color: #6c63ff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #5750e1;
        }

        /* Button container */
        .button-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

    <%@ include file="docnavbar.jsp" %> <!-- Include your navbar for navigation -->
    
    <div class="content">
        <div class="form-container">
            <h3><u>Update Doctor</u></h3>
            <form method="post" action="updateDoctor">
                <table>
                    <tr>
                        <td><label for="did">Doctor ID</label></td>
                        <td><input type="text" id="did" name="did" value="<%= d.getDoctorID() %>" readonly="readonly" required/></td>
                    </tr>
                    <tr>
                        <td><label for="dname">Enter Name</label></td>
                        <td><input type="text" id="dname" name="dname" value="<%= d.getName() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="specialization">Specialization</label></td>
                        <td><input type="text" id="specialization" name="specialization" value="<%= d.getSpecialization() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="dcontact">Contact Number</label></td>
                        <td><input type="text" id="dcontact" name="dcontact" value="<%= d.getContactNumber() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="demail">Email</label></td>
                        <td><input type="email" id="demail" name="demail" value="<%= d.getEmail() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="daddress">Address</label></td>
                        <td><input type="text" id="daddress" name="daddress" value="<%= d.getAddress() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="dexperience">Years of Experience</label></td>
                        <td><input type="number" id="dexperience" name="dexperience" value="<%= d.getYearsOfExperience() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="davailability">Availability Status</label></td>
                        <td><input type="text" id="davailability" name="davailability" value="<%= d.getAvailabilityStatus() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="dshift">Shift Timing</label></td>
                        <td><input type="text" id="dshift" name="dshift" value="<%= d.getShiftTiming() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="dfee">Consultation Fee</label></td>
                        <td><input type="number" id="dfee" name="dfee" value="<%= d.getConsultationFee() %>" step="0.01" required/></td>
                    </tr>
                    <tr>
                        <td><label for="department">Department</label></td>
                        <td><input type="text" id="department" name="department" value="<%= d.getDepartment() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="qualifications">Qualifications</label></td>
                        <td><input type="text" id="qualifications" name="qualifications" value="<%= d.getQualifications() %>" required/></td>
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