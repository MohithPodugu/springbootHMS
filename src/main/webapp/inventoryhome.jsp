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
            font-family: 'Poppins', sans-serif;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background: linear-gradient(180deg, #2c3e50, #34495e);
            color: #ecf0f1;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 20px;
        }

        .sidebar h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            width: 100%;
        }

        .sidebar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 15px;
            width: 100%;
            display: block;
            margin-bottom: 10px;
            border-radius: 5px;
            text-align: left;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        /* Content area styling */
        .content {
            flex-grow: 1;
            padding: 20px;
            background: linear-gradient(to bottom, #f4f4f4, #e0e0e0);
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background: #2c3e50;
            padding: 15px;
            text-align: center;
            color: white;
            font-size: 24px;
            border-radius: 8px;
        }

        .cards-container {
            display: flex;
            justify-content: flex-start;
            flex-wrap: wrap;
            padding: 20px;
            gap: 20px;
        }

        .card {
            background: white;
            width: 300px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            background: #3498db;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }

        .card-body {
            padding: 20px;
            text-align: center;
        }

        .card-body p {
            color: #555;
            margin-bottom: 15px;
        }

        .card-body a {
            display: inline-block;
            padding: 10px 20px;
            background: #2c3e50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background 0.3s;
        }

        .card-body a:hover {
            background: #34495e;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Mini Care</h2>
            <a href="pharmhome.jsp">Home</a>
            <a href="inventoryhome.jsp">Inventory Check</a>
            <a href="pharmprofile.jsp">Profile</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="content">
            <div class="navbar">Inventory Check</div>
            <div class="cards-container">
                <!-- Add Medicine Card -->
                <div class="card">
                    <img src="https://www.shutterstock.com/image-illustration/medicine-medical-app-3d-icon-260nw-2211200437.jpg" alt="Add Medicine">
                    <div class="card-header">Add Medicine</div>
                    <div class="card-body">
                        <p>Add new medicines to the inventory.</p>
                        <a href="addmedicine.jsp">Add</a>
                    </div>
                </div>

                <!-- Delete Medicine Card -->
                <div class="card">
                    <img src="https://st5.depositphotos.com/65404274/73207/v/450/depositphotos_732074242-stock-illustration-garbage-bin-icon-trash-bin.jpg" alt="Delete Medicine">
                    <div class="card-header">Delete Medicine</div>
                    <div class="card-body">
                        <p>Remove medicines from the inventory.</p>
                        <a href="deletemedicine">Delete</a>
                    </div>
                </div>

                <!-- View Medicines Card -->
                <div class="card">
                    <img src="https://img.freepik.com/free-vector/isometric-gastroenterology-composition-with-view-medication-with-tubes-pills-illustration_1284-63536.jpg" alt="View Medicines">
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
