<%@ page session="true" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Project</title>

    <!-- Internal CSS -->
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; background: linear-gradient(135deg, #BDE8CA 40%, #DFF5E1); display: flex; flex-direction: column; min-height: 100vh; }
        .navbar { background-color: rgba(51, 51, 51, 0.8); padding: 0.5rem 1rem; display: flex; justify-content: space-between; align-items: center; }
        .logo { color: #BDE8CA; font-size: 1.2rem; font-weight: bold; text-decoration: none; }
        .content { max-width: 600px; margin: 2rem auto; background-color: white; padding: 2rem; border-radius: 8px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); text-align: center; }
        h1 { color: #333; margin-bottom: 1rem; }
        label { display: block; margin-bottom: 0.5rem; color: #333; text-align: left; }
        input[type="text"], input[type="date"], textarea { width: 100%; padding: 0.5rem; margin-bottom: 1rem; border: 1px solid #ccc; border-radius: 4px; }
        input[type="submit"], .back-button { background-color: #BDE8CA; color: white; border: none; padding: 0.5rem 1rem; border-radius: 4px; cursor: pointer; transition: background-color 0.3s ease; font-size: 1rem; margin-top: 1rem; }
        input[type="submit"]:hover, .back-button:hover { background-color: #99D6B2; }
        .back-button { display: inline-block; text-decoration: none; margin-top: 1rem; }
        .message { color: #d9534f; text-align: center; margin-top: 1rem; }
        .success { color: #5cb85c; text-align: center; margin-top: 1rem; }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar-container">
            <a href="guideHome.jsp" class="logo">Project Guide</a>
            <div class="user-options">
                <a href="index.jsp">Logout</a>
            </div>
        </div>
    </nav>

    <div class="content">
        <h1>Add Project</h1>
        <form action="AddProjectServlet" method="POST">
            <label for="projectNumber">Project Number:</label>
            <input type="text" id="projectNumber" name="projectNumber" required>

            <label for="projectName">Project Name:</label>
            <input type="text" id="projectName" name="projectName" required>

            <label for="projectDescription">Project Description:</label>
            <textarea id="projectDescription" name="projectDescription" rows="4" required></textarea>

            <label for="submissionDate">Submission Date:</label>
            <input type="date" id="submissionDate" name="submissionDate" required>

            <label for="technologiesUsed">Technologies Used:</label>
            <input type="text" id="technologiesUsed" name="technologiesUsed" placeholder="e.g., Java, Spring, MySQL" required>

            <input type="submit" value="Add Project">
        </form>

        <!-- Back to Dashboard Button -->
        <a href="guidenavbar.jsp" class="back-button">Back to Dashboard</a>

        <!-- Display any success or error messages -->
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
            <div class="<%= request.getAttribute("messageType") %>">
                <%= message %>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>
