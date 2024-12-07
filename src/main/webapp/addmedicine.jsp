<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Medicine</title>
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
            justify-content: flex-start;
            text-align: left;
        }

        /* Header styling */
        .header {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        /* Form styling */
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
            color: #333;
        }

        input[type="text"], input[type="number"], input[type="date"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #2c3e50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #34495e;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar (Vertical Menubar) -->
        <div class="sidebar">
            <h2>Mini Care</h2>
           <a href="pharmhome.jsp">Home</a>
            
            <a href="inventoryhome.jsp">Inventory Check</a>
            <a href="pharmprofile.jsp">Update Profile</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Content Area -->
        <div class="content">
            <div class="header">
                <h2>Add New Medicine</h2>
            </div>

            <form action="${pageContext.request.contextPath}/addmedicine" method="post">
                <label for="name">Medicine Name:</label>
                <input type="text" id="name" name="name" required><br><br>

                <label for="type">Type:</label>
                <input type="text" id="type" name="type" required><br><br>

                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" required><br><br>

                <label for="price">Price:</label>
                <input type="number" step="0.01" id="price" name="price" required><br><br>

                <label for="manufacturer">Manufacturer:</label>
                <input type="text" id="manufacturer" name="manufacturer"><br><br>

                <label for="expiryDate">Expiry Date:</label>
                <input type="date" id="expiryDate" name="expiryDate"><br><br>

                <label for="dosageInstructions">Dosage Instructions:</label>
                <textarea id="dosageInstructions" name="dosageInstructions"></textarea><br><br>

                <input type="submit" value="Add Medicine">
            </form>
        </div>
    </div>
</body>
</html>