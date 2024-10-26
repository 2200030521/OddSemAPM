<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.admin.Content" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Content</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 70%;
            margin: auto;
            padding-top: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        form {
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
        }
        input[type="text"], input[type="textarea"] {
            padding: 8px;
            width: calc(33% - 10px);
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
            transition: background-color 0.3s ease;
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
        <h1>Manage Content</h1>

        <!-- Back to Dashboard Button -->
        <a href="adminDashboard.jsp" class="back-button">Back to Dashboard</a>

        <!-- Add Content Form -->
        <form action="ManageContentServlet" method="post">
            <input type="hidden" name="action" value="add">
            <input type="text" name="title" placeholder="Title" required>
            <textarea name="description" placeholder="Description" required></textarea>
            <input type="submit" value="Add Content">
        </form>

        <!-- Content List Table -->
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
            <%
                List<Content> contentList = (List<Content>) request.getAttribute("contentList");
                if (contentList != null) {
                    for (Content content : contentList) {
            %>
            <tr>
                <td><%= content.getId() %></td>
                <td><%= content.getTitle() %></td>
                <td><%= content.getDescription() %></td>
                <td>
                    <form action="ManageContentServlet" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="id" value="<%= content.getId() %>">
                        <input type="text" name="title" value="<%= content.getTitle() %>" required>
                        <textarea name="description" required><%= content.getDescription() %></textarea>
                        <input type="submit" value="Update">
                    </form>
                    <form action="ManageContentServlet" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="<%= content.getId() %>">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
