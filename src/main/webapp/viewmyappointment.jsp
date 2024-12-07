<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="patientnavbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Appointments</title>
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
            max-width: 90%;
            overflow-x: auto;
            border-radius: 8px;
            background-color: #1c1c1c;
            padding: 10px;
            margin: auto;
            display: flex;
            justify-content: center; /* Center the table horizontally */
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
            padding: 10px;
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
    <div class="content">
        <h3>My Appointments</h3>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Appointment ID</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Problem</th>
                        <th>Age</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="appointment" items="${appointment}">
    <tr>
        <td><c:out value="${appointment.appointmentID}"/></td>
        <td><c:out value="${appointment.doctorName}"/></td>
        <td><c:out value="${appointment.date}"/></td>
        <td><c:out value="${appointment.time}"/></td>
        <td><c:out value="${appointment.problem}"/></td>
        <td><c:out value="${appointment.age}"/></td>
    </tr>
</c:forEach>
<c:if test="${empty appointment}">
    <tr>
        <td colspan="6" style="text-align: center;">No appointments found</td>
    </tr>
</c:if>

                </tbody>
            </table>
        </div>
        <div style="text-align: center; margin-top: 20px;">
            <a href="bookappointment" style="color: #7d72b8; text-decoration: none;">Back to Appointment Form</a>
        </div>
    </div>
</body>
</html>
