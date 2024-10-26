<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Guide Module</title>
    
    <!-- Internal CSS -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%; /* Ensure html and body take full height */
            font-family: Arial, sans-serif;
            background-image: url('images/img1.jpg'); /* Background image */
            background-size: cover; /* Cover the entire screen */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent repeating */
        }

        .navbar {
            background-color: rgba(51, 51, 51, 0.8); /* Semi-transparent background */
            padding: 0.5rem 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-container {
            display: flex;
            align-items: center;
            width: 100%;
        }

        .logo {
            color: #BDE8CA;
            font-size: 1.2rem;
            font-weight: bold;
            text-decoration: none;
        }

        .nav-links {
            list-style-type: none;
            display: flex;
            gap: 3rem;  /* Increased gap for better spacing */
            margin-left: 1.5rem;
        }

        .nav-links li {
            display: inline;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
        }

        .nav-links a:hover {
            color: #BDE8CA;
        }

        .user-options {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            width: 100%;
        }

        .user-options a {
            color: #BDE8CA;
            text-decoration: none;
            font-size: 1rem;
        }

        .user-options a:hover {
            color: white;
        }

        .content {
            max-width: 800px;
            margin: 2rem auto;
            background-color: rgba(255, 255, 255, 0.9); /* Light background for content */
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #BDE8CA; /* Heading color */
            text-align: center;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adding shadow for better visibility */
        }

        .section {
            margin-bottom: 1.5rem;
        }

        .section h2 {
            color: #333; /* Section heading color */
            margin-bottom: 0.5rem;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6); /* Adding shadow for better visibility */
        }

        .section p {
            color: #666; /* Text color */
            line-height: 1.5;
        }

        a {
            color: #BDE8CA;
            text-decoration: underline;
        }

        a:hover {
            color: #333; /* Hover color for links */
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar-container">
            <a href="guidenavbar.jsp" class="logo">Project Guide</a>
            <ul class="nav-links">
                <li><a href="projectslist.jsp">Projects List</a></li>
                <li><a href="guideaddproject.jsp">Add Projects</a></li>
                <li><a href="viewprojectguide.jsp">View Projects</a></li>
                <li><a href="guidereviewprojects.jsp">Review Submissions</a></li>
                <li><a href="guidegradeprojects.jsp">Grade Projects</a></li>
                <li><a href="progressMonitor.jsp">Progress Monitoring</a></li>
                <li><a href="guideviewinquiry.jsp">View Feedback</a></li>
            </ul>
            <div class="user-options">
                <a href="index.jsp">Logout</a>
            </div>
        </div>
    </nav>

    <div class="content">
        <h1>Welcome to the Project Guide Module!</h1>
        
        <div class="section">
            <h2>Manage Your Projects</h2>
            <p>Efficiently manage your projects, from addition to deletion and viewing progress.</p>
        </div>

        <div class="section">
            <h2>Upcoming Meetings</h2>
            <p>Keep track of your upcoming meetings with students and ensure smooth communication.</p>
        </div>

        <div class="section">
            <h2>Communicate Effectively</h2>
            <p>Stay in touch with your students through messages and announcements.</p>
        </div>

        <div class="section">
            <h2>Project Guidelines</h2>
            <p>Follow the project guidelines to ensure successful project completion and assessment.</p>
        </div>

        <div class="section">
            <h2>Resources</h2>
            <p>Access various resources to help you in guiding your students effectively.</p>
        </div>
    </div>
</body>
</html>
