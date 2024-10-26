<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Projects</title>
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
                <th>Quality Marks</th>
                <th>Presentation Marks</th>
                <th>Innovation Marks</th>
                <th>Action</th>
            </tr>
            <%
                String jdbcUrl = "jdbc:mysql://localhost:3306/apm";
                String dbUser = "root";
                String dbPassword = "03Nov@2003123";
                
                Connection connection = null;
                PreparedStatement statement = null;
                ResultSet resultSet = null;

                try {
                    connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                    statement = connection.prepareStatement("SELECT * FROM submit");
                    resultSet = statement.executeQuery();

                    while (resultSet.next()) {
            %>
                        <tr>
                            <td><%= resultSet.getString("student_name") %></td>
                            <td><%= resultSet.getString("student_id") %></td>
                            <td><%= resultSet.getString("project_number") %></td>
                            <td><%= resultSet.getString("project_name") %></td>
                            <td><a href="<%= resultSet.getString("github_link") %>">View</a></td>
                            <td>
                                <form action="gradeProject" method="post">
                                    <input type="hidden" name="projectId" value="<%= resultSet.getString("project_number") %>">
                                    <input type="hidden" name="studentName" value="<%= resultSet.getString("student_name") %>">
                                    <input type="hidden" name="studentId" value="<%= resultSet.getString("student_id") %>">
                                    <input type="number" name="quality" min="0" max="100" placeholder="Quality" required>
                                    <input type="number" name="presentation" min="0" max="100" placeholder="Presentation" required>
                                    <input type="number" name="innovation" min="0" max="100" placeholder="Innovation" required>
                                    <input type="submit" value="Grade">
                                </form>
                            </td>
                        </tr>
            <%
                    }
                } catch (SQLException e) {
                    out.println("<tr><td colspan='9'>Error occurred while retrieving projects.</td></tr>");
                    e.printStackTrace();
                } finally {
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
    </div>
</body>
</html>