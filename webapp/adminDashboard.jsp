<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Dashboard container */
        .dashboard-container {
            display: flex;
            height: 100vh;
        }

        /* Sidebar navigation */
        .sidebar {
            width: 250px;
            background-color: #333;
            color: #fff;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
        }

        .sidebar h2 {
            text-align: center;
            padding-bottom: 20px;
            font-size: 1.5rem;
        }

        .sidebar a {
            padding: 15px 20px;
            color: #ccc;
            text-decoration: none;
            font-size: 1rem;
            display: block;
            transition: all 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #444;
            color: #fff;
        }

        /* Main content */
        .main-content {
            flex-grow: 1;
            padding: 20px;
        }

        .main-content h1 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 1rem;
        }

        /* Content sections */
        .content-section {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <h2>Admin Panel</h2>
            <a href="manageUsers.jsp">Manage Users</a>
            <a href="manageContent.jsp">Manage Content</a>
            <a href="viewReports.jsp">View Reports</a>
            <a href="analytics.jsp">Analytics</a>
            <a href="settings.jsp">Settings</a>
            <a href="index.jsp">Logout</a>
        </div>

        <!-- Main Content Area -->
        <div class="main-content">
            <h1>Welcome, Admin</h1>
            <div class="content-section">
                <h2>Overview</h2>
                <p>This is the admin dashboard where you can manage users, view reports, monitor analytics, and access other administrative functions.</p>
            </div>
            <div class="content-section">
                <h2>Recent Activities</h2>
                <p>Display recent actions or changes made in the system here.</p>
            </div>
            <div class="content-section">
                <h2>System Notifications</h2>
                <p>Display system notifications or alerts for the admin here.</p>
            </div>
        </div>
    </div>
</body>
</html>
