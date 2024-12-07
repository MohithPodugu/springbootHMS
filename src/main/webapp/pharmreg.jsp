<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacist Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%@ include file="indexnavbar.jsp" %>
    <div class="container">
        <h1>Pharmacist Registration</h1>
        <form action="insertpharm" method="POST">
            <label for="pname">Name:</label>
            <input type="text" id="pname" name="pname" required>

            <label for="pcontact">Contact Number:</label>
            <input type="text" id="pcontact" name="pcontact" required>

            <label for="phemail">Email:</label>
            <input type="email" id="phemail" name="phemail" required>

            <label for="paddress">Address:</label>
            <input type="text" id="paddress" name="paddress" required>

            <label for="pexperience">Years of Experience:</label>
            <input type="number" id="pexperience" name="pexperience" required>

            <label for="pavailability">Availability Status:</label>
            <input type="text" id="pavailability" name="pavailability" required>

            <label for="pshift">Shift Timing:</label>
            <input type="text" id="pshift" name="pshift" required>

            <label for="plicense">License Number:</label>
            <input type="text" id="plicense" name="plicense" required>

            <label for="plocation">Pharmacy Location:</label>
            <input type="text" id="plocation" name="plocation" required>

            <label for="pmedicines">Managed Medicines:</label>
            <input type="text" id="pmedicines" name="pmedicines" required>

            <label for="phpwd">Password:</label>
            <input type="password" id="phpwd" name="phpwd" required>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>