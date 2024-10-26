<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Projects</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff; /* Light blue background */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff; /* White container for content */
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            padding: 20px 0;
        }
        .header h1 {
            font-size: 36px;
            color: #333333;
            margin: 0;
        }
        .project-card {
            background-color: #d0e7ff; /* Light blue for cards */
            border: 1px solid #a8c8e7;
            border-radius: 8px;
            padding: 20px;
            margin: 10px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .project-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .project-title {
            font-size: 24px;
            font-weight: bold;
            color: #333333;
            margin: 0 0 10px;
        }
        .project-details {
            font-size: 16px;
            color: #666666;
            margin: 0;
        }
        .project-details p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>List of Projects</h1>
        </div>
        <div class="project-card">
            <div class="project-title">Vehicle Service Management System</div>
            <div class="project-details">
                <p>Technology: Python, Django, HTML, CSS</p>
                <p>Description: A Python full-stack project using the Django framework, with HTML and CSS for the frontend.</p>
            </div>
        </div>
        <div class="project-card">
            <div class="project-title">Student Course Management System</div>
            <div class="project-details">
                <p>Technology: MERN Stack, MongoDB</p>
                <p>Description: A project based on the MERN stack technology, using MongoDB as the database.</p>
            </div>
        </div>
        <div class="project-card">
            <div class="project-title">Healthcare Management System</div>
            <div class="project-details">
                <p>Technology: Java, JSP, MySQL</p>
                <p>Description: An enterprise programming project using Java Servlets for the backend, JSP for the frontend, and MySQL as the database.</p>
            </div>
        </div>
        <div class="project-card">
            <div class="project-title">Deep Machine Learning Based Bird Species Identification</div>
            <div class="project-details">
                <p>Technology: OpenCV, TensorFlow, Keras, PyTorch, CNN</p>
                <p>Description: A hybrid model using deep and classical machine learning for bird species identification, utilizing AI for efficient bird species identification based on size & shape, color pattern, behavior, and habitat.</p>
            </div>
        </div>
        <div class="project-card">
            <div class="project-title">National Level Techno-Management Fest 'Samyak'</div>
            <div class="project-details">
                <p>Technology: Spring MVC, Eclipse</p>
                <p>Description: A Spring MVC application for maintaining participant details for an event, including features such as user registration, event management, user event registration, and admin functionalities for managing events and participants.</p>
            </div>
        </div>
        <div class="project-card">
            <div class="project-title">Reduce Food Wastage and Improve Food Security</div>
            <div class="project-details">
                <p>Technology: Java, Maven, Dynamic Web Module</p>
                <p>Description: A platform to track and reduce food waste, developed using Java full-stack development. The project roles include Admin, Food Donor, Recipient Organization, and Data Analyst.</p>
            </div>
        </div>
    </div>
</body>
</html>
