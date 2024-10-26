<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Academic Project Management System</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: url('images/img1.jpg') no-repeat center center/cover;
            margin: 0;
            padding: 0;
            color: white;
        }

        h1, p {
            animation: fadeIn 1.5s ease-in-out;
        }

        .content {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            color: #2c3e50;
        }

        /* Navbar */
        nav {
            background-color: rgba(44, 62, 80, 0.9);
            overflow: hidden;
            padding: 15px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            position: relative; /* For dropdown positioning */
        }

        nav ul li a {
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #34495e;
            border-radius: 5px;
        }

        /* Hero Section */
        .hero {
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 40px;
            font-weight: bold;
            background: rgba(44, 62, 80, 0.6);
            margin-bottom: 20px;
            border-radius: 10px;
        }

        /* Fade In Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Flip Card Styles */
        .gallery {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .card {
            width: 30%;
            perspective: 1000px;
            cursor: pointer;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 300px;
            text-align: center;
            transition: transform 0.8s;
            transform-style: preserve-3d;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card:hover .card-inner {
            transform: rotateY(180deg);
        }

        .card-front, .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
        }

        .card-front {
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        .card-front img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
        }

        .card-back {
            background-color: #e0f7fa; /* Light teal color */
            color: #2c3e50; /* Darker text color for contrast */
            display: flex;
            justify-content: center;
            align-items: center;
            transform: rotateY(180deg);
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 30px;
            background-color: rgba(44, 62, 80, 0.9);
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
            font-size: 14px;
        }

        footer ul {
            list-style-type: none;
            padding: 0;
            margin: 20px 0;
        }

        footer ul li {
            display: inline;
            margin-right: 15px;
        }

        footer ul li a {
            color: #b0e0e6;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        footer ul li a:hover {
            color: #f1c40f;
        }

        footer .copyright {
            margin-top: 10px;
            font-size: 12px;
            color: #b0e0e6;
        }

        /* Features Section */
        .features {
            background-color: #fff; /* No background image, solid color */
            color: #2c3e50; /* Dark text color */
            padding: 30px;
            margin-top: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .features h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
            color: #2c3e50;
        }

        .features p {
            font-size: 18px;
            line-height: 1.6;
        }

        .features ul {
            list-style: none;
            padding-left: 0;
            font-size: 18px;
        }

        .features ul li {
            margin-bottom: 10px;
        }

        .features ul li::before {
            content: '✔'; /* Checkmark symbol */
            color: green;
            margin-right: 10px;
        }
    </style>
</head>
<body>

    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="project.jsp">Projects</a></li>
            <li><a href="studentLogin.jsp">Student Login</a></li>
            <li><a href="projectGuideLogin.jsp">Project Guide Login</a></li>
            <li><a href="adminLogin.jsp">Admin Login</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>

    <div class="hero">
        Empower Your Academic Projects
    </div>

    <div class="content">
        <h1>Welcome to Academic Project Management System</h1>
        <p>Your one-stop solution for managing academic projects efficiently.</p>

        <div class="gallery">
            <!-- Card 1 -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="<%= request.getContextPath() %>/images/img2.jpg" alt="Project Collaboration">
                    </div>
                    <div class="card-back">
                        <p>Collaborate on projects with students and faculty. Manage documents and tasks easily.</p>
                    </div>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="<%= request.getContextPath() %>/images/img3.jpg" alt="Milestone Tracking">
                    </div>
                    <div class="card-back">
                        <p>Track project milestones and deliverables. Keep everything on schedule.</p>
                    </div>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="<%= request.getContextPath() %>/images/img4.jpg" alt="Resource Management">
                    </div>
                    <div class="card-back">
                        <p>Manage resources and allocate tasks effectively for successful project completion.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="features">
            <h2>Key Features</h2>
            <p>Our system provides the following key features:</p>
            <ul>
                <li>User-friendly interface</li>
                <li>Real-time collaboration tools</li>
                <li>Document management system</li>
                <li>Milestone and deadline tracking</li>
                <li>Resource allocation and management</li>
            </ul>
        </div>
    </div>

    <footer>
        <p>Contact us for more information!</p>
        <ul>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">Support</a></li>
        </ul>
        <p class="copyright">&copy; 2024 Academic Project Management System. All rights reserved.</p>
    </footer>

</body>
</html>
