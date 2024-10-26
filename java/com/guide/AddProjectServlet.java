package com.guide;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddProjectServlet")
public class AddProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectNumber = request.getParameter("projectNumber");
        String projectName = request.getParameter("projectName");
        String projectDescription = request.getParameter("projectDescription");
        String submissionDate = request.getParameter("submissionDate");
        String technologiesUsed = request.getParameter("technologiesUsed");

        // Database connection settings
        String dbUrl = "jdbc:mysql://localhost:3306/apm";
        String dbUser = "root";
        String dbPassword = "03Nov@2003123";

        String message;
        String messageType;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish connection
            Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            // Insert into projects table
            String projectSql = "INSERT INTO projects (project_number, project_name, project_description, technologies_used, submission_date) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement projectStmt = connection.prepareStatement(projectSql);
            projectStmt.setString(1, projectNumber);
            projectStmt.setString(2, projectName);
            projectStmt.setString(3, projectDescription);
            projectStmt.setString(4, technologiesUsed);
            projectStmt.setString(5, submissionDate);

            // Insert into student_projects table
            String studentProjectSql = "INSERT INTO student_projects (student_id, project_number, project_name, project_description, technologies_used, submission_date) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement studentProjectStmt = connection.prepareStatement(studentProjectSql);
            studentProjectStmt.setInt(1, 1); // Placeholder for student_id; update as per logic
            studentProjectStmt.setString(2, projectNumber);
            studentProjectStmt.setString(3, projectName);
            studentProjectStmt.setString(4, projectDescription);
            studentProjectStmt.setString(5, technologiesUsed);
            studentProjectStmt.setString(6, submissionDate);

            int projectResult = projectStmt.executeUpdate();
            int studentProjectResult = studentProjectStmt.executeUpdate();

            if (projectResult > 0 && studentProjectResult > 0) {
                message = "Project added successfully for both guide and student modules!";
                messageType = "success";
            } else {
                message = "Failed to add project.";
                messageType = "message";
            }

            // Close resources
            projectStmt.close();
            studentProjectStmt.close();
            connection.close();
        } catch (Exception e) {
            message = "An error occurred: " + e.getMessage();
            messageType = "message";
        }

        // Set the message and type as request attributes
        request.setAttribute("message", message);
        request.setAttribute("messageType", messageType);

        // Forward to JSP to display the message
        request.getRequestDispatcher("guideaddproject.jsp").forward(request, response);
    }
}
