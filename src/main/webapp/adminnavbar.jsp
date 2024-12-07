<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MiniCare</title>
    <style>
        /* Reset and general styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #181818;
            font-family: Arial, sans-serif;
            display: flex;
        }

        /* Sidebar container */
        .sidebar {
            width: 250px;
            background-color: #181818;
            padding: 20px;
            border-right: 3px solid #7d40e7;
            color: #ffffff;
            height: 100vh;
            position: fixed;
        }

        /* Logo and title */
        .logo {
            display: flex;
            align-items: center;
            color: #ffffff;
            font-weight: bold;
            font-size: 1.5em;
            margin-bottom: 30px;
        }

        .logo img {
            height: 40px;
            margin-right: 10px;
        }

        /* Navigation links */
        .nav {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .nav a {
            color: #b3b3b3;
            text-decoration: none;
            font-size: 1em;
            font-weight: 500;
            transition: color 0.3s;
            display: block;
            padding: 10px;
            border-radius: 5px;
        }

        .nav a.active,
        .nav a:hover {
            color: #7d40e7;
            background-color: #333333;
        }

        /* Dropdown button */
        .dropdown-btn {
            cursor: pointer;
            color: #b3b3b3;
            font-size: 1em;
            font-weight: 500;
            transition: color 0.3s;
            display: block;
            padding: 10px;
            border-radius: 5px;
            background: none;
            border: none;
            text-align: left;
            width: 100%;
        }

        .dropdown-btn:hover {
            color: #7d40e7;
            background-color: #333333;
        }

        /* Dropdown container */
        .dropdown-container {
            display: none;
            flex-direction: column;
            gap: 10px;
            padding-left: 20px;
        }

        /* Icons section */
        .icons {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-top: 30px;
        }

        .icons i {
            color: #b3b3b3;
            font-size: 1.2em;
            cursor: pointer;
            transition: color 0.3s;
        }

        .icons i:hover {
            color: #ffffff;
        }

        /* Profile image */
        .profile img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            cursor: pointer;
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <!-- Logo and title -->
        <div class="logo">
           <!-- Replace with actual logo URL -->
            MiniCare
        </div>

        <!-- Navigation Links -->
        <div class="nav">
            <a href="adminhome">Dashboard</a>
            <button class="dropdown-btn">Doctors
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
                <a href="adddoc">Add Doctor</a>
                <a href="viewalldocs">View All Doctor</a>
                <a href="deletedoctor">Delete Doctor</a>
            </div>
            <button class="dropdown-btn">Patients
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
                <a href="addpatient">Add Patient</a>
                <a href="viewallpatient">View All Patient</a>
                <a href="deletepatient">Delete Patient</a>
            </div>
            <button class="dropdown-btn">Pharmacists
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-container">
                <a href="addpharmacist">Add Pharmacist</a>
                <a href="viewallpharmacists">View All Pharmacist</a>
                <a href="deletepharmacist">Delete Pharmacist</a>
            </div>
            <a href="adminlogin">Logout</a>
        </div>

        <!-- Icons and Profile -->
       
    </div>

    <!-- Font Awesome for icons (link to include) -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
        // Dropdown functionality
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;

        for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>
</body>

</html>