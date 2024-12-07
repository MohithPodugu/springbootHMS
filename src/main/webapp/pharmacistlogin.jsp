<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - MiniCare</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f7f7f7;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar */
        .navbar {
            background-color: #7d72b8;
            padding: 15px 20px;
            color: #fff;
            text-align: center;
            font-size: 18px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Main Container */
        .main-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Login Container */
        .login-container {
            background-color: #fff;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-container h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .login-container p {
            color: #666;
            font-size: 14px;
            margin-bottom: 30px;
        }

        /* Input Fields */
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #eaeaea;
            border-radius: 4px;
            font-size: 16px;
        }

        /* Login Button */
        .login-container button {
            background-color: #7d72b8;
            color: #fff;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-container button:hover {
            background-color: #6a63a6;
        }

        /* Additional Links */
        .login-container .additional-links {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            font-size: 14px;
        }

        .login-container .additional-links a {
            color: #7d72b8;
            text-decoration: none;
        }

        .login-container .additional-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <%@ include file="indexnavbar.jsp" %>

    <!-- Navbar -->
    

    <!-- Main Container -->
    <div class="main-container">
        <div class="login-container">
            <form method="post" action="checkpharmLogin">
                <h2>Pharmacist Login to MiniCare</h2>
                <p>Welcome back! Please enter your credentials to access your account.</p>

                <input type="text" name="phemail" placeholder="Username or Email" required>
                <input type="password" name="phpwd" placeholder="Password" required>
                <button type="submit">Log In</button>
            </form>

            <div class="additional-links">
                <a href="#">Forgot Password?</a>
                <a href="pharmreg">Sign Up</a>
            </div>
        </div>
    </div>
</body>

</html>
