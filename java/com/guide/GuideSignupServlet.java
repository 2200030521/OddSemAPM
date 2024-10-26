package com.guide;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GuideSignupServlet") // Ensure this matches the form action
public class GuideSignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name"); // Ensure this matches the form input name
        String email = request.getParameter("email");
        String password = request.getParameter("password"); // Storing the password in plain text is not recommended

        response.setContentType("text/html");

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apm", "root", "03Nov@2003123")) {
                String sql = "INSERT INTO projectguide (name, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, password); // Plain text password; consider hashing

                    int result = ps.executeUpdate();
                    PrintWriter out = response.getWriter();

                    if (result > 0) {
                        // Redirect to the login page upon successful signup
                        response.sendRedirect("projectGuideLogin.jsp");
                    } else {
                        displayError(out, "Signup failed. Please try again.");
                    }
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            displayError(response.getWriter(), "Database driver not found. Please check the configuration.");
        } catch (SQLException e) {
            e.printStackTrace();
            displayError(response.getWriter(), "Database error: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            displayError(response.getWriter(), "An unexpected error occurred: " + e.getMessage());
        }
    }

    private void displayError(PrintWriter out, String message) {
        out.println("<!DOCTYPE html>");
        out.println("<html><head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Error</title>");
        out.println("<style>");
        out.println("body { font-family: 'Roboto', sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: #f0f4f7; }");
        out.println(".signup-container { background-color: #fff; padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 400px; width: 100%; text-align: center; }");
        out.println(".signup-container h2 { color: #d32f2f; }");
        out.println("</style>");
        out.println("</head><body>");
        out.println("<div class='signup-container'>");
        out.println("<h2>" + message + "</h2>");
        out.println("</div>");
        out.println("</body></html>");
    }
}
