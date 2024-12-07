<%@ page import="com.klef.jfsd.springboot.model.Pharmacist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacist Chatbot</title>
    <style>
        /* General reset and body styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #1e1e1e;
            color: #ddd;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styles */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #444;
            border-radius: 5px;
        }

        /* Page content margin to account for fixed navbar */
        .content {
            margin-top: 100px; /* Adjusted to navbar height */
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Chat container */
        .chat-container {
            width: 400px;
            background: #333;
            border-radius: 8px;
            box-shadow: 0 5px 30px rgba(0, 0, 0, 0.6);
            padding: 20px;
        }

        /* Chat messages styling */
        .messages {
            height: 300px;
            overflow-y: auto;
            margin-bottom: 20px;
            border: 1px solid #444;
            border-radius: 5px;
            padding: 10px;
            background: #1e1e1e;
        }

        .messages p {
            margin: 8px 0;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
        }

        .user-message {
            background-color: #5750e1;
            color: #fff;
            text-align: right;
        }

        .bot-message {
            background-color: #6c63ff;
            color: #fff;
            text-align: left;
        }

        /* Input form styling */
        .input-container {
            display: flex;
        }

        input[type="text"] {
            flex: 1;
            padding: 10px;
            border: 1px solid #444;
            border-radius: 5px 0 0 5px;
            font-size: 14px;
            background-color: #1e1e1e;
            color: #ddd;
        }

        button {
            padding: 10px 20px;
            background: #6c63ff;
            color: white;
            border: none;
            border-radius: 0 5px 5px 0;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background: #5750e1;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@ include file="patientnavbar.jsp" %>
    </div>

    <div class="content">
        <div class="chat-container">
            <h1> Query ChatBot</h1>
            <div class="messages">
                <p class="user-message">Your Query: ${userInput}</p>
                <p class="bot-message">Chatbot Response: ${response}</p>
            </div>
            <form action="/chatbot" method="post" class="input-container">
                <input type="text" name="userInput" placeholder="Ask your question..." required>
                <button type="submit">Send</button>
            </form>
        </div>
    </div>
</body>
</html>