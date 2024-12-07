<%@page import="com.klef.jfsd.springboot.model.Doctor"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Doctor d = (Doctor) session.getAttribute("doc"); // Using "doc" for the session variable 
    if (d == null) {
        response.sendRedirect("docsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h1>Login fail</h1>
<a href="doclogin"><button>Try again</button></a>
</body>
</html>