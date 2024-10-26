<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e9ecef;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            width: 35%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #005f73;
            margin-bottom: 20px;
        }

        label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 6px;
        }

        input[type="text"], textarea {
            width: calc(100% - 20px); /* Ensures input fits within container borders */
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"], .back-button {
            width: 95%; /* Reduced button width */
            background-color: #005f73;
            color: white;
            padding: 8px 10px; /* Reduced padding */
            border: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        input[type="submit"]:hover {
            background-color: #00798c;
        }

        .back-button {
            background-color: #adb5bd;
            text-align: center;
            text-decoration: none;
            margin-top: 8px;
        }

        .back-button:hover {
            background-color: #6c757d;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Register for Project</h2>
        <form action="RegisterProjectServlet" method="post">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="projectNumber">Project Number:</label>
            <input type="text" id="projectNumber" name="projectNumber" required>

            <label for="projectName">Project Name:</label>
            <input type="text" id="projectName" name="projectName" required>

            <label for="teamMembers">Team Members (comma separated):</label>
            <textarea id="teamMembers" name="teamMembers" rows="3" required></textarea>

            <input type="submit" value="Register Project">
        </form>

        <!-- Back to Dashboard button -->
        <a href="studentDashboard.jsp" class="back-button">Back to Dashboard</a>
    </div>

</body>
</html>
