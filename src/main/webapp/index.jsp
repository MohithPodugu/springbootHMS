<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MiniCare</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f7f7f7;
            color: #333;
        }

        /* Header */
        header {
            background-color: #fff;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #eaeaea;
        }

        header .logo {
            font-size: 24px;
            color: #333;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        header nav {
            display: flex;
            gap: 20px;
        }

        header nav a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
            padding: 5px 10px;
        }

        header .auth-buttons button {
            margin-left: 10px;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        header .auth-buttons .start-free {
            background-color: #7d72b8;
            color: #fff;
        }

        header .auth-buttons .sign-in {
            background-color: #fff;
            color: #7d72b8;
            border: 1px solid #7d72b8;
        }

        /* Main Section */
        .main-section {
            background-image: url("https://img.freepik.com/free-photo/medical-banner-with-doctor-wearing-goggles_23-2149611193.jpg?t=st=1730030645~exp=1730034245~hmac=a8e11efe5e6b0ba9bb9a6dbdaaccce0f36ac59d678fb96e3f945faea74aaf6a3&w=1480");
            background-size: cover;
            color: #fff;
            text-align: center;
            padding: 80px 20px;
        }

        .main-section h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .main-section p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .main-section .btn-learn-more {
            background-color: #7d72b8;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .services-section {
            padding: 60px 20px;
            text-align: center;
        }

        .services-section h2 {
            font-size: 28px;
            margin-bottom: 40px;
        }

        .services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .service-card {
            background-color: #fff;
            border: 1px solid #eaeaea;
            padding: 20px;
            width: 220px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .service-card h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .service-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 10px;
        }

        .service-card a {
            color: #7d72b8;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
        }
        .join-section {
            background-color: #f7f7f7;
            padding: 40px 20px;
            text-align: center;
        }

        .join-section h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .join-section p {
            font-size: 16px;
            color: #666;
            margin-bottom: 20px;
        }

        .join-section button {
            background-color: #7d72b8;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        footer {
            background-color: #333;
            color: #fff;
            padding: 40px 20px;
            text-align: center;
        }

        footer .footer-columns {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 20px;
        }

        footer .footer-column h4 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        footer .footer-column a {
            color: #aaa;
            text-decoration: none;
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
        }

        footer .newsletter {
            margin-top: 20px;
        }

        footer .newsletter input[type="email"] {
            padding: 8px;
            border: 1px solid #444;
            border-radius: 4px;
            font-size: 14px;
            margin-right: 10px;
        }

        footer .newsletter button {
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            background-color: #7d72b8;
            color: #fff;
            cursor: pointer;
        }

        /* Modal Styles */
        .modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Stay in place */
            z-index: 1000;
            /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            background-color: rgba(0, 0, 0, 0.6);
            /* Black w/ opacity */
        }

        .modal-content {
            background-color: #fff;
            margin: 10% auto;
            /* 10% from the top and centered */
            padding: 30px;
            border-radius: 8px;
            width: 90%;
            /* Could be more or less, depending on screen size */
            max-width: 400px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        .modal-content h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .modal-content p {
            margin-bottom: 20px;
            color: #666;
        }

        .modal-content input[type="text"],
        .modal-content input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .modal-content button {
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

        .modal-content button:hover {
            background-color: #6a63a6;
        }

        .additional-links {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            font-size: 14px;
        }

        .additional-links a {
            color: #7d72b8;
            text-decoration: none;
        }

        .additional-links a:hover {
            text-decoration: underline;
        }
          .auth-buttons {
    position: relative; /* Ensure the dropdown is positioned relative to the button */
}

.dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    background-color: #fff;
    border: 1px solid #eaeaea;
    border-radius: 4px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    margin-top: 10px; /* Adjust this value to increase or decrease space */
}
          

        .dropdown-menu a {
            display: block;
            padding: 10px 20px;
            color: #333;
            text-decoration: none;
            font-size: 14px;
        }

        .dropdown-menu a:hover {
            background-color: #f7f7f7;
        }
        .bv{
        padding:10px;
        margin:10px;}
        
    </style>
</head>

<body>
    <!-- Header -->
    <header>
        <div class="logo">MiniCare</div>
        <nav>
            <a href="#">Dashboard</a>
            <a href="#">Laboratory Services</a>
            <a href="#">About us</a>
            <a href="#">Contact us</a>
            <a href="#">FAQ</a>
        </nav>
        <div class="auth-buttons">
            <button class="start-free" onclick="showModal('loginModal')">Login</button>
            <button class="sign-up" onclick="showModal('signupModal')">Sign Up</button>
        </div>
    </header>

    <!-- Main Section -->
    <section class="main-section">
        <h1>Our Features</h1>
        <p>Discover the tools that transform your health management</p>
        <button class="btn-learn-more">Learn More</button>
    </section>

    <!-- Services Section -->
    <section class="services-section">
        <h2>Our Services</h2>
        <div class="services-container">
            <div class="service-card">
                <h3>Book Appointments</h3>
                <p>Easily schedule your appointments online with your preferred doctor.</p>
                <a href="#">Discover more</a>
            </div>
            <div class="service-card">
                <h3>E-Prescriptions</h3>
                <p>Receive prescriptions electronically right after your consultation.</p>
                <a href="#">Discover more</a>
            </div>
            <div class="service-card">
                <h3>Access Medical Records</h3>
                <p>Securely view and manage your health records anytime.</p>
                <a href="#">Discover more</a>
            </div>
            <div class="service-card">
                <h3>Prescription Fulfillment</h3>
                <p>Get your medications delivered to your doorstep swiftly.</p>
                <a href="#">Discover more</a>
            </div>
            <div class="service-card">
                <h3>Telehealth Consultations</h3>
                <p>Consult with healthcare professionals from the comfort of your home.</p>
                <a href="#">Discover more</a>
            </div>
            <div class="service-card">
                <h3>Wellness Programs</h3>
                <p>Participate in various wellness programs and workshops.</p>
                <a href="#">Discover more</a>
            </div>
        </div>
    </section>
    <section class="join-section">
        <h2>Join HealthConnect</h2>
        <p>Become part of our community and take control of your health journey today. Connect, track, and thrive with us.</p>
        <button>Join now</button>
    </section>
    <footer>
        <div class="footer-columns">
            <div class="footer-column">
                <h4>Product</h4>
                <a href="#">Features</a>
                <a href="#">Pricing</a>
            </div>
            <div class="footer-column">
                <h4>Resources</h4>
                <a href="#">Blog</a>
                <a href="#">User guides</a>
                <a href="#">Webinars</a>
            </div>
            <div class="footer-column">
                <h4>Company</h4>
                <a href="#">About us</a>
                <a href="#">Contact us</a>
            </div>
            <div class="footer-column">
                <h4>Plans & Pricing</h4>
                <a href="#">Personal</a>
                <a href="#">Start up</a>
                <a href="#">Organization</a>
            </div>
        </div>
        <div class="newsletter">
            <input type="email" placeholder="Subscribe to our newsletter" />
            <button>Subscribe</button>
        </div>
        <p>&copy; 2024 Brand, Inc. • Privacy • Terms • Sitemap</p>
    </footer>
    

    <!-- Login Modal -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('loginModal')">&times;</span>
            <h2>Login to MiniCare</h2>
            <div class="bv">
               <div> <a href="adminlogin"><button>Admin Login</button></a></div><br/>
               <div> <a href="doclogin"><button>Doctor Login</button></a></div><br/>
               <div> <a href="patientlogin"><button>Patient Login</button></a></div><br/>
               <div> <a href="pharmacistlogin"><button>Pharmacist Login</button></a></div><br/>
            </div>
        </div>
    </div>

    <!-- Signup Modal -->
    <div id="signupModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal('signupModal')">&times;</span>
            <h2>Sign Up for MiniCare</h2>
            
                <div><a href="docreg"><button>Doctor Signup</button></a></div><br/>
                <div><a href="patientreg"><button>Patient Signup</button></a></div><br/>
               <div> <a href="pharmreg"><button>Pharmacist Signup</button></a></div><br/>
        </div>
    </div>

    <script>
        // Modal Control Functions
        function showModal(modalId) {
            document.getElementById(modalId).style.display = "block";
        }

        function closeModal(modalId) {
            document.getElementById(modalId).style.display = "none";
        }

        // Close modal when clicking outside of it
        window.onclick = function(event) {
            const loginModal = document.getElementById('loginModal');
            const signupModal = document.getElementById('signupModal');
            if (event.target === loginModal) loginModal.style.display = "none";
            if (event.target === signupModal) signupModal.style.display = "none";
        };
    </script>
</body>

</html>
