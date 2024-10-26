package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterProjectServlet")
public class RegisterProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String studentId = request.getParameter("studentId");
        String studentName = request.getParameter("studentName");
        String projectNumber = request.getParameter("projectNumber");
        String projectName = request.getParameter("projectName");
        String teamMembers = request.getParameter("teamMembers");

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/apm"; // Replace with your database name
        String dbUser = "root"; // Replace with your database username
        String dbPassword = "03Nov@2003123"; // Replace with your database password

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL query
            String sql = "INSERT INTO registerproject (student_id, student_name, project_number, project_name, team_members) VALUES (?, ?, ?, ?, ?)";

            // Prepare statement
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, studentId);
            ps.setString(2, studentName);
            ps.setString(3, projectNumber);
            ps.setString(4, projectName);
            ps.setString(5, teamMembers);

            // Execute the query
            int row = ps.executeUpdate();

            if (row > 0) {
                out.println("<h3>Project registered successfully!</h3>");
            } else {
                out.println("<h3>Failed to register the project.</h3>");
            }

            // Close resources
            ps.close();
            conn.close();
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
