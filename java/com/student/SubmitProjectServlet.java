package com.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/submitProject")
public class SubmitProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentName = request.getParameter("studentName");
        String studentId = request.getParameter("studentId");
        String projectNumber = request.getParameter("projectNumber");
        String projectName = request.getParameter("projectName");
        String githubLink = request.getParameter("githubLink");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/apm"; // Replace with your database URL
        String jdbcUsername = "root"; // Replace with your database username
        String jdbcPassword = "03Nov@2003123"; // Replace with your database password

        // SQL Insert statement
        String sql = "INSERT INTO submit (student_name, student_id, project_number, project_name, github_link) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, studentName);
            statement.setString(2, studentId);
            statement.setString(3, projectNumber);
            statement.setString(4, projectName);
            statement.setString(5, githubLink);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().print("Project submitted successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("Error occurred while submitting the project.");
        }
    }
}
