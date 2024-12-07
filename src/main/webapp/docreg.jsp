<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Style */
        .navbar {
            background-color: #007bff;
            padding: 15px;
            color: white;
            text-align: center;
            font-size: 18px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin: 0 15px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Main Container */
        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* Registration Form Container */
        .container {
            width: 100%;
            max-width: 500px;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 22px;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input,
        select,
        textarea {
            margin-bottom: 15px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        input:focus,
        select:focus,
        textarea:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.2);
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Textarea Resize Control */
        textarea {
            resize: none;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }

            h1 {
                font-size: 20px;
            }

            input,
            select,
            textarea {
                font-size: 13px;
            }

            button {
                font-size: 15px;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <%@ include file="indexnavbar.jsp" %>

    <!-- Main Content Container -->
    <div class="main-container">
        <div class="container">
            <h1>Doctor Registration</h1>
            <form action="insertdoc" method="POST">
                <label for="dname">Name:</label>
                <input type="text" id="dname" name="dname" required>

                <label for="specialization">Specialization:</label>
                <input type="text" id="specialization" name="specialization" required>

                <label for="dcontact">Contact Number:</label>
                <input type="text" id="dcontact" name="dcontact" required>

                <label for="demail">Email:</label>
                <input type="email" id="demail" name="demail" required>

                <label for="daddress">Address:</label>
                <textarea id="daddress" name="daddress" rows="3" required></textarea>

                <label for="dexperience">Years of Experience:</label>
                <input type="number" id="dexperience" name="dexperience" required>

                <label for="davailability">Availability Status:</label>
                <select id="davailability" name="davailability" required>
                    <option value="Available">Available</option>
                    <option value="Unavailable">Unavailable</option>
                </select>

                <label for="dshift">Shift Timing:</label>
                <input type="text" id="dshift" name="dshift" required>

                <label for="dfee">Consultation Fee:</label>
                <input type="number" step="0.01" id="dfee" name="dfee" required>

                <label for="department">Department:</label>
                <input type="text" id="department" name="department" required>

                <label for="qualifications">Qualifications:</label>
                <textarea id="qualifications" name="qualifications" rows="2" required></textarea>

                <label for="dpwd">Password:</label>
                <input type="password" id="dpwd" name="dpwd" required>

                <button type="submit">Register</button>
            </form>
        </div>
    </div>
</body>

</html>
