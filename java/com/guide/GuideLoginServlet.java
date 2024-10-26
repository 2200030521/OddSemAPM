package com.guide;

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

@WebServlet("/GuideLoginServlet") // Ensure this matches the form action
public class GuideLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guideEmail = request.getParameter("guideEmail");
        String guidePassword = request.getParameter("guidePassword");

        response.setContentType("text/html");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/apm", "root", "03Nov@2003123")) {
                String loginQuery = "SELECT * FROM projectguide WHERE email = ? AND password = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(loginQuery);
                preparedStatement.setString(1, guideEmail);
                preparedStatement.setString(2, guidePassword); // Hash this in a real application

                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    response.sendRedirect("guidenavbar.jsp");
                } else {
                    PrintWriter out = response.getWriter();
                    out.println("<!DOCTYPE html>");
                    out.println("<html><head>");
                    out.println("<meta charset='UTF-8'>");
                    out.println("<title>Login Failed</title>");
                    out.println("<style>");
                    out.println("body { font-family: 'Roboto', sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: #f0f4f7; }");
                    out.println(".login-container { background-color: #fff; padding: 40px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); max-width: 400px; width: 100%; text-align: center; }");
                    out.println(".login-container h2 { color: #d32f2f; }");
                    out.println("</style>");
                    out.println("</head><body>");
                    out.println("<div class='login-container'>");
                    out.println("<h2>Login failed. Please try again.</h2>");
                    out.println("</div>");
                    out.println("</body></html>");
                }

                preparedStatement.close();
            }
        } catch (Exception e) {
            e.printStackTrace(); // Consider logging this instead
            // Optionally, send a friendly message to the user
        }
    }
}
