<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Schedule Appointment</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background-color: #181a1b;
    color: #ffffff;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.layout-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: 80px; /* Add space for the fixed navbar */
}

.section {
    background-color: #1f2123;
    padding: 20px;
    border-radius: 8px;
    max-width: 600px;
    width: 100%;
}

h2 {
    margin-bottom: 15px;
    font-size: 1.2em;
    color: #ffffff;
}

input[type="text"],
input[type="email"],
input[type="date"],
input[type="time"],
button {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 5px;
}

input[type="text"],
input[type="email"],
input[type="date"],
input[type="time"] {
    background-color: #333;
    color: #ffffff;
}

button {
    background-color: #6c63ff;
    color: #ffffff;
    cursor: pointer;
}

button:hover {
    background-color: #5348c5;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
    background-color: #333;
    color: #ffffff;
    border-radius: 5px;
    overflow: hidden;
}

th,
td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #444;
}

td {
    background-color: #2d2f31;
}

.date-time {
    display: flex;
    gap: 10px;
}

.admin-navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #333;
    padding: 10px;
    color: white;
    z-index: 1000;
    text-align: center;
}

.admin-navbar a {
    color: white;
    margin: 0 15px;
    text-decoration: none;
}

.admin-navbar a:hover {
    color: #6c63ff;
}
</style>
</head>
<body>

<div class="doc-navbar">
    <%@ include file="docnavbar.jsp" %>
</div>
<br/>
<br/>
<br/>
<div class="layout-container">
    <div class="section">
        <h2>Schedule Appointment</h2>
        <input type="email" placeholder="Email">
        <div class="date-time">
            <input type="date" placeholder="Select Date">
            <input type="time" placeholder="Select Time">
        </div>
        <button>Schedule</button>
    </div>
</div>

</body>
</html>
