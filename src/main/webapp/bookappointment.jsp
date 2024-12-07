<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .form-container {
            background-color: #000;
            width: 100%;
            max-width: 400px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .form-container h2 {
            color: #fff;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            color: #ddd;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #121212;
            color: #ddd;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #7d72b8;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 15px;
        }

        .btn-submit:hover {
            background-color: #5e56a8;
        }

        .back-link {
            margin-top: 20px;
        }

        .back-link a {
            text-decoration: none;
            color: #7d72b8;
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
  <%@ include file="patientnavbar.jsp" %>
    <div class="form-container">
        <h2>Book an Appointment</h2>
        <form action="bappointment" method="post">
            <div class="form-group">
                <label for="patient_id">Patient ID:</label>
                <input type="number" id="patient_id" value="${patient.patientID}" name="patient_id" readonly="readonly" required>
            </div>
            
            <div class="form-group">
                <label for="doctor_id">Doctor:</label>
                <select id="doctor_id" name="doctor_id" required>
                    <option value="">Select a Doctor</option>
                    <c:forEach var="doctor" items="${doctors}">
                        <option value="${doctor.doctorID}">${doctor.name} - ${doctor.specialization}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="appointment_date">Appointment Date:</label>
                <input type="date" id="appointment_date" name="appointment_date" required>
            </div>

            <div class="form-group">
                <label for="appointment_time">Appointment Time:</label>
                <input type="time" id="appointment_time" name="appointment_time" required>
            </div>

            <div class="form-group">
                <label for="problem">Problem/Description:</label>
                <textarea id="problem" name="problem" rows="4" required></textarea>
            </div>

            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>
            </div>

            <button type="submit" class="btn-submit">Book Appointment</button>
        </form>

        <div class="back-link">
            <a href="viewappointments">Back to View Appointments</a>
        </div>
    </div>
</body>
</html>
