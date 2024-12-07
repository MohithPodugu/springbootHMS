<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Medicines</title>
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

        /* Table styling */
        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            text-align: left;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
        }

        th {
            background-color: #2c3e50;
            color: #ecf0f1;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #dcdde1;
        }

        /* Center alignment for table container */
        .table-container {
            width: 100%;
            display: flex;
            justify-content: center;
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
            <a href="pharmprofile.jsp">Update Profile</a>
            <a href="index.jsp">Logout</a>
        </div>
        
        <!-- Main Content Area -->
        <div class="content">
            <div class="header">View All Medicines</div>
            
            <!-- Table for Medicines -->
            <div class="table-container">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>TYPE</th>
                        <th>QUANTITY</th>
                        <th>PRICE</th>
                        <th>MANUFACTURER</th>
                        <th>EXPIRY DATE</th>
                        <th>DOSAGE INSTRUCTIONS</th>
                    </tr>
                    <c:forEach items="${medicines}" var="medicine">
                        <tr>
                            <td><c:out value="${medicine.id}"/></td>
                            <td><c:out value="${medicine.name}"/></td>
                            <td><c:out value="${medicine.type}"/></td>
                            <td><c:out value="${medicine.quantity}"/></td>
                            <td><c:out value="${medicine.price}"/></td>
                            <td><c:out value="${medicine.manufacturer}"/></td>
                            <td><c:out value="${medicine.expiryDate}"/></td>
                            <td><c:out value="${medicine.dosageInstructions}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</body>
</html>