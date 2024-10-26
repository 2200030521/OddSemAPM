package com.student;

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

@WebServlet("/StudentSignupServlet")
public class StudentSignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        response.setContentType("text/html");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apm", "root", "03Nov@2003123")) {
                String sql = "INSERT INTO students (name, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, password);

                    int result = ps.executeUpdate();
                    PrintWriter out = response.getWriter();
                    if (result > 0) {
                        response.sendRedirect("studentLogin.jsp");
                    } else {
                        displayError(out, "Signup failed. Please try again.");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            displayError(response.getWriter(), "Database error: " + e.getMessage());
        }
    }

    private void displayError(PrintWriter out, String message) {
        out.println("<html><body><h2>" + message + "</h2></body></html>");
    }
}
