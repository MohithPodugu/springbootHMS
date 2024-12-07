<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inventory Check</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
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
    }

    .navbar {
        background-color: #2c3e50;
        padding: 15px;
        text-align: center;
        color: white;
        font-size: 24px;
    }

    .cards-container {
        display: flex;
        justify-content: flex-start;
        flex-wrap: wrap;
        padding: 20px;
        gap: 20px; /* Adds spacing between cards */
    }

    .card {
        background-color: white;
        width: 250px;
        margin: 15px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: 0.3s;
        overflow: hidden;
        flex-shrink: 0;
    }

    .card img {
        width: 100%;
        height: 150px;
        object-fit: cover;
    }

    .card:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card-header {
        background-color: #ddd;
        color: #2c3e50;
        padding: 20px;
        text-align: center;
        font-size: 1.2em;
        font-weight: bold;
    }

    .card-body {
        padding: 20px;
        text-align: center;
    }

    .card-body p {
        color: #555;
    }

    .card-body a {
        display: inline-block;
        margin: 10px 5px;
        padding: 10px 15px;
        background-color: #3498db;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
    }

    .card-body a:hover {
        background-color: #2980b9;
    }
</style>

<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>ABHIHEAL</h2>
            <a href="pharmhome.jsp">Home</a>
         
            <a href="inventoryhome.jsp">Inventory Check</a>
            <a href="pharmprofile.jsp"> Profile</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="content">
            <div class="navbar">
                Inventory Check
            </div>
            <div class="cards-container">
                <!-- Add Medicine Card -->
                <div class="card">
                    <img src="https://www.shutterstock.com/image-illustration/medicine-medical-app-3d-icon-260nw-2211200437.jpg" alt="Add Medicine Image">
                    <div class="card-header">Add Medicine</div>
                    <div class="card-body">
                        <p>Add new medicines to the inventory.</p>
                        <a href="addmedicine.jsp">Add</a>
                    </div>
                </div>

                <!-- Delete Medicine Card -->
                <div class="card">
                    <img src="https://st5.depositphotos.com/65404274/73207/v/450/depositphotos_732074242-stock-illustration-garbage-bin-icon-trash-bin.jpg" alt="Delete Medicine Image">
                    <div class="card-header">Delete Medicine</div>
                    <div class="card-body">
                        <p>Remove medicines from the inventory.</p>
                        <a href="deletemedicine">Delete</a>
                    </div>
                </div>

                

                <!-- View Medicines Card -->
                <div class="card">
                    <img src="https://img.freepik.com/free-vector/isometric-gastroenterology-composition-with-view-medication-with-tubes-pills-illustration_1284-63536.jpg" alt="View Medicines Image">
                    <div class="card-header">View Medicines</div>
                    <div class="card-body">
                        <p>See all medicines in the inventory.</p>
                        <a href="viewallmedicines">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>