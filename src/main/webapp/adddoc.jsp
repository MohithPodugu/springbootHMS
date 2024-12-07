<%@ page import="com.klef.jfsd.springboot.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Admin a = (Admin) session.getAttribute("admin");
    if (a == null) {
        response.sendRedirect("adminsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Doctor</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #000;
            color: #fff;
            display: flex;
            height: 100vh;
        }

        .d-flex {
            display: flex;
            width: 100%;
        }

        .navbar-container {
            width: 20%;
            background-color: #121212;
            min-height: 100vh;
        }

        .form-container {
            width: 80%;
            background-color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-wrapper {
            width: 350px;
            padding: 20px;
            background-color: #000;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .form-wrapper h3 {
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            position: relative;
            margin-bottom: 15px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 8px 8px 8px 30px;
            font-size: 13px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #121212;
            color: #ddd;
        }

        .form-group i {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #888;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #7d72b8;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #5e56a8;
        }

        .btn-reset {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #444;
            color: #fff;
            font-size: 14px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-reset:hover {
            background-color: #666;
        }
    </style>
</head>

<body>
    <div class="d-flex">
        <!-- Navbar -->
        <div class="navbar-container">
            <%@ include file="adminnavbar.jsp" %>
        </div>

        <!-- Form -->
        <div class="form-container">
            <div class="form-wrapper">
                <h3>Add Doctor</h3>
                <form action="/submitDoctorForm" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <div class="form-group">
                        <i class="fas fa-user-md" title="Doctor Name"></i>
                        <input type="text" name="dname" placeholder="Doctor Name" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-stethoscope" title="Specialization"></i>
                        <input type="text" name="specialization" placeholder="Specialization" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-phone-alt" title="Contact Number"></i>
                        <input type="text" name="dcontact" placeholder="Contact Number" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-envelope" title="Email"></i>
                        <input type="email" name="demail" placeholder="Email" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-map-marker-alt" title="Address"></i>
                        <textarea name="daddress" placeholder="Address" required></textarea>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-briefcase" title="Years of Experience"></i>
                        <input type="number" name="dexperience" placeholder="Years of Experience" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-check-circle" title="Availability Status"></i>
                        <select name="davailability" required>
                            <option value="" disabled selected>Availability Status</option>
                            <option value="Available">Available</option>
                            <option value="Unavailable">Unavailable</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-clock" title="Shift Timing"></i>
                        <input type="text" name="dshift" placeholder="Shift Timing" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-money-bill-wave" title="Consultation Fee"></i>
                        <input type="number" step="0.01" name="dfee" placeholder="Consultation Fee" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-hospital" title="Department"></i>
                        <input type="text" name="department" placeholder="Department" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-graduation-cap" title="Qualifications"></i>
                        <input type="text" name="qualifications" placeholder="Qualifications" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-key" title="Password"></i>
                        <input type="password" name="dpwd" placeholder="Password" required>
                    </div>
                    <button type="submit" class="btn-submit">
                        <span id="btn-text">Add</span>
                        <i id="btn-spinner" class="fas fa-spinner fa-spin" style="display:none;"></i>
                    </button>
                    <button type="reset" class="btn-reset">Reset</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.querySelector('form').addEventListener('submit', function () {
            document.getElementById('btn-text').style.display = 'none';
            document.getElementById('btn-spinner').style.display = 'inline-block';
        });
    </script>
</body>

</html>