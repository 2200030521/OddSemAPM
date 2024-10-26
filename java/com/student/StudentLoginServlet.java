package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentEmail = request.getParameter("studentEmail");
        String studentPassword = request.getParameter("studentPassword");

        response.setContentType("text/html");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apm", "root", "03Nov@2003123")) {
                String sql = "SELECT * FROM students WHERE email = ? AND password = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, studentEmail);
                ps.setString(2, studentPassword);

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    response.sendRedirect("studentDashboard.jsp");
                } else {
                    PrintWriter out = response.getWriter();
                    out.println("<html><body><h2>Login failed. Invalid email or password. Please try again.</h2></body></html>");
                }

                ps.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
