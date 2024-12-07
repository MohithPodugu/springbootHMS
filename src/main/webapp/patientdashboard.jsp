<%@page import="com.klef.jfsd.springboot.model.Patient"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Patient p = (Patient) session.getAttribute("patient");
    if (p == null) {
        response.sendRedirect("patientsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background-color: #0d0e10;
    color: #ffffff;
}

.container {
    display: flex;
    min-height: 100vh;
    width: 100%;
}

.navbar {
    width: 100%;
    background-color: #1b1d1f;
    padding: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar .logo {
    font-size: 1.5em;
    color: #fff;
}

.navbar nav {
    display: flex;
    gap: 20px;
}

.navbar nav a {
    color: #888;
    text-decoration: none;
    font-size: 1em;
    transition: color 0.3s;
}

.navbar nav a:hover {
    color: #6c63ff;
}

.sidebar {
    width: 200px;
    background-color: #1b1d1f;
    padding: 20px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
}

.sidebar nav a {
    color: #888;
    padding: 15px;
    text-align: center;
    text-decoration: none;
    display: block;
    border-radius: 8px;
    margin-bottom: 5px;
    transition: background 0.3s;
}

.sidebar nav a.active,
.sidebar nav a:hover {
    background-color: #25272a;
    color: #6c63ff;
}

.user-profile {
    margin-top: auto;
}

.avatar {
    width: 50px;
    height: 50px;
    border-radius: 50%;
}

.content {
    flex: 1;
    padding: 20px;
    background-color: #141517;
}

section {
    margin-bottom: 20px;
    background-color: #1f2123;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

h2 {
    color: #ffffff;
    font-size: 1.4em;
    margin-bottom: 10px;
}

.appointment p {
    margin-bottom: 5px;
}

.appointment-actions {
    display: flex;
    gap: 10px;
    margin-top: 10px;
}

button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    color: #fff;
}

.reschedule {
    background-color: #6c63ff;
}

.cancel {
    background-color: #444;
}

.past-appointments .appointment-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 15px;
}

.appointment-card {
    background-color: #2b2d30;
    padding: 15px;
    border-radius: 8px;
    text-align: left;
}

.feedback {
    background-color: #6c63ff;
    width: 100%;
    margin-top: 10px;
    color: #ffffff;
}

.feedback-section textarea {
    width: 100%;
    padding: 15px;
    border-radius: 5px;
    border: none;
    background-color: #2b2d30;
    color: #ffffff;
    margin-bottom: 10px;
    resize: vertical;
    min-height: 100px;
}

.submit-feedback {
    width: 100%;
    background-color: #6c63ff;
    padding: 10px;
    border-radius: 5px;
    cursor: pointer;
    color: #ffffff;
}</style>
</head>
<body>

<!-- Navbar Section -->


<%@ include file="patientnavbar.jsp" %>

<main class="content">
    <section class="appointment">
        <h2><%= p.getName()%></h2>
        <p><%= p.getEmail()%></p>
        
        
    </section>

    <section class="past-appointments">
        <h2>Past Appointments</h2>
        <div class="appointment-cards">
            <div class="appointment-card">
                <p>Dr. Emily Carter</p>
                <p>30 mins</p>
                <button class="feedback">Feedback</button>
            </div>
            <div class="appointment-card">
                <p>Dr. John Smith</p>
                <p>45 mins</p>
                <button class="feedback">Feedback</button>
            </div>
            <div class="appointment-card">
                <p>Dr. Sarah Liu</p>
                <p>15 mins</p>
                <button class="feedback">Feedback</button>
            </div>
            <div class="appointment-card">
                <p>Dr. Michael Brown</p>
                <p>60 mins</p>
                <button class="feedback">Feedback</button>
            </div>
        </div>
    </section>

    <section class="feedback-section">
        <h2>Give Feedback</h2>
        <textarea placeholder="Enter your notes or comments about the consultation here..."></textarea>
        <button class="submit-feedback">Submit Feedback</button>
    </section>
</main>

</body>
</html>
