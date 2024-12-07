<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<%@ include file="indexnavbar.jsp" %>
    <div class="container">
        <h2>Patient Registration Form</h2>
        <form action="insertpatient" method="POST">
            <div class="form-group">
                <label for="pname">Name:</label>
                <input type="text" id="pname" name="pname" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="pcontact">Contact Number:</label>
                <input type="text" id="pcontact" name="pcontact" required>
            </div>

            <div class="form-group">
                <label for="pemail">Email:</label>
                <input type="email" id="pemail" name="pemail" required>
            </div>

            <div class="form-group">
                <label for="paddress">Address:</label>
                <input type="text" id="paddress" name="paddress" required>
            </div>

            <div class="form-group">
                <label for="bloodType">Blood Type:</label>
                <input type="text" id="bloodType" name="bloodType" required>
            </div>

            <div class="form-group">
                <label for="emergencyContact">Emergency Contact:</label>
                <input type="text" id="emergencyContact" name="emergencyContact" required>
            </div>

            <div class="form-group">
                <label for="ppwd">Password:</label>
                <input type="password" id="ppwd" name="ppwd" required>
            </div>

            <div class="form-group">
                <label for="pdob">Date of Birth:</label>
                <input type="date" id="pdob" name="pdob" required>
            </div>

            <button type="submit" class="btn">Register</button>
        </form>
    </div>
</body>
</html>
