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
import javax.servlet.RequestDispatcher;

@WebServlet("/InquiryServlet")
public class InquiryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String studentId = request.getParameter("studentId");
        String studentName = request.getParameter("studentName");
        String guideName = request.getParameter("guideName");
        String inquiry = request.getParameter("inquiry");

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/apm"; // Replace with your database name
        String dbUser = "root"; // Replace with your database username
        String dbPassword = "03Nov@2003123"; // Replace with your database password

        String message = ""; // Variable to hold success or failure message

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL query to insert inquiry
            String sql = "INSERT INTO inquiries (student_id, student_name, guide_name, inquiry, submission_date) VALUES (?, ?, ?, ?, CURDATE())";

            // Prepare statement
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, studentId);
            ps.setString(2, studentName);
            ps.setString(3, guideName);
            ps.setString(4, inquiry);

            // Execute the query
            int row = ps.executeUpdate();

            if (row > 0) {
                message = "Inquiry submitted successfully!";
            } else {
                message = "Failed to submit the inquiry.";
            }

            // Close resources
            ps.close();
            conn.close();
        } catch (Exception e) {
            message = "Error: " + e.getMessage();
        }

        // Set the message in the request scope
        request.setAttribute("message", message);

        // Forward back to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("inquiry.jsp"); // Change to your JSP file name
        dispatcher.forward(request, response);
    }
}
