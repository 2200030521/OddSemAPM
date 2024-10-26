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

@WebServlet("/gradeProject")
public class GradeProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectId = request.getParameter("projectId");
        String studentName = request.getParameter("studentName");
        String studentId = request.getParameter("studentId");
        String projectName = request.getParameter("projectName");
        String qualityStr = request.getParameter("quality");
        String presentationStr = request.getParameter("presentation");
        String innovationStr = request.getParameter("innovation");

        // Calculate total marks
        int quality = Integer.parseInt(qualityStr);
        int presentation = Integer.parseInt(presentationStr);
        int innovation = Integer.parseInt(innovationStr);
        int totalMarks = quality + presentation + innovation;

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/apm";
        String jdbcUsername = "root";
        String jdbcPassword = "03Nov@2003123";

        // SQL Insert statement for grading
        String sql = "INSERT INTO grading (student_name, student_id, project_id, project_name, quality, presentation, innovation, total_marks, submission_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, CURDATE())";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, studentName);
            statement.setString(2, studentId);
            statement.setString(3, projectId);
            statement.setString(4, projectName);
            statement.setInt(5, quality);
            statement.setInt(6, presentation);
            statement.setInt(7, innovation);
            statement.setInt(8, totalMarks);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().print("Grade submitted successfully!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("Error occurred while submitting the grade.");
        }
    }
}
