<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/img1.jpg'); /* Add your background image URL here */
            background-size: cover; /* Make the background cover the whole page */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Make the background stay fixed during scrolling */
        }

        /* Navbar Styling */
        .navbar {
            background-color: rgba(0, 121, 107, 0.9); /* Slightly transparent background */
            overflow: hidden;
            padding: 1rem;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
        }

        /* Float logout to the right */
        .navbar a.logout {
            float: right;
            background-color: #d32f2f; /* Different color for logout */
        }

        .navbar a:hover {
            background-color: #004d40;
            color: white;
        }

        .navbar a.logout:hover {
            background-color: #b71c1c; /* Darker hover for logout */
        }

        /* Container Styling */
        .container {
            padding: 40px;
            margin-top: 30px;
            background-color: rgba(255, 255, 255, 0.8); /* White container with transparency */
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            color: #00796b;
            margin-bottom: 20px;
        }

        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .card h3 {
            color: #00796b;
            margin-bottom: 10px;
        }

        .card p {
            color: #333;
            font-size: 14px;
        }

        .card a {
            background-color: #00796b;
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
        }

        .card a:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="registerProject.jsp">Register for Project</a>
        <a href="submitProject.jsp">Submit Project</a>
        <a href="viewProjects.jsp">View Projects</a>
        <a href="inquiry.jsp">Interact with Project Guide</a>
        <!-- Logout button aligned to the right -->
        <a href="index.jsp" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>Welcome to Student Dashboard</h2>
        
    </div>

</body>
</html>
