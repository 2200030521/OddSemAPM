<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.admin.Settings" %>
<%@ page import="com.admin.SettingsDAO" %>
<%
    SettingsDAO settingsDAO = new SettingsDAO();
    Settings settings = settingsDAO.getSettings(); // Get current settings
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: auto;
            padding-top: 20px;
        }
        h1 {
            text-align: center;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"] {
            width: calc(100% - 10px);
            padding: 8px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            padding: 8px 15px;
            cursor: pointer;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .back-button {
            padding: 8px 15px;
            cursor: pointer;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            display: inline-block;
            margin-bottom: 20px;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Settings Management</h1>

        <!-- Back to Dashboard Button -->
        <a href="adminDashboard.jsp" class="back-button">Back to Dashboard</a>

        <!-- Settings Form -->
        <form action="SettingsServlet" method="post">
            <input type="hidden" name="action" value="update">
            <label for="siteTitle">Site Title:</label>
            <input type="text" id="siteTitle" name="siteTitle" value="<%= settings.getSiteTitle() %>" required>

            <label for="adminEmail">Admin Email:</label>
            <input type="text" id="adminEmail" name="adminEmail" value="<%= settings.getAdminEmail() %>" required>

            <input type="submit" value="Update Settings">
        </form>
    </div>
</body>
</html>
