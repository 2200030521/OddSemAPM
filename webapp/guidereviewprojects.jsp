<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Review Submitted Projects</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #4CAF50;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Submitted Projects</h1>
        <table>
            <tr>
                <th>Student Name</th>
                <th>Student ID</th>
                <th>Project Number</th>
                <th>Project Name</th>
                <th>GitHub Link</th>
            </tr>
            <%
                String jdbcURL = "jdbc:mysql://localhost:3306/apm";
                String jdbcUsername = "root";
                String jdbcPassword = "03Nov@2003123";
                
                Connection connection = null;
                PreparedStatement statement = null;
                ResultSet resultSet = null;

                try {
                    connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
                    statement = connection.prepareStatement("SELECT * FROM submit");
                    resultSet = statement.executeQuery();

                    while (resultSet.next()) {
            %>
                        <tr>
                            <td><%= resultSet.getString("student_name") %></td>
                            <td><%= resultSet.getString("student_id") %></td>
                            <td><%= resultSet.getString("project_number") %></td>
                            <td><%= resultSet.getString("project_name") %></td>
                            <td><a href="<%= resultSet.getString("github_link") %>" target="_blank">View</a></td>
                        </tr>
            <%
                    }
                } catch (SQLException e) {
                    out.println("<tr><td colspan='5'>Error occurred while retrieving projects.</td></tr>");
                    e.printStackTrace();
                } finally {
                    // Close resources in the finally block to avoid resource leaks
                    try {
                        if (resultSet != null) resultSet.close();
                        if (statement != null) statement.close();
                        if (connection != null) connection.close();
                    } catch (SQLException ex) {
                        ex.printStackTrace();
                    }
                }
            %>
        </table>
        <div class="back-link">
            <a href="guidenavbar.jsp">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
