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

@WebServlet("/ViewProjectServlet")
public class ViewProjectsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectId = request.getParameter("projectId");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Project Details</title>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 0; }");
        out.println(".container { max-width: 800px; margin: 20px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); }");
        out.println("h1 { color: #4CAF50; text-align: center; }");
        out.println("p { font-size: 16px; line-height: 1.6; margin: 10px 0; }");
        out.println("strong { font-weight: bold; }");
        out.println("a { color: #4CAF50; text-decoration: none; font-weight: bold; display: inline-block; margin-top: 20px; }");
        out.println("a:hover { text-decoration: underline; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<h1>Project Details</h1>");

        try {
            if (projectId == null || projectId.isEmpty()) {
                out.println("<p>Error: Project ID cannot be empty.</p>");
                return;
            }

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apm", "root", "03Nov@2003123");

            String sql = "SELECT * FROM registerproject WHERE project_number = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, projectId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                out.println("<p><strong>Student ID:</strong> " + rs.getString("student_id") + "</p>");
                out.println("<p><strong>Student Name:</strong> " + rs.getString("student_name") + "</p>");
                out.println("<p><strong>Project Number:</strong> " + rs.getString("project_number") + "</p>");
                out.println("<p><strong>Project Name:</strong> " + rs.getString("project_name") + "</p>");
                out.println("<p><strong>Team Members:</strong> " + rs.getString("team_members") + "</p>");
            } else {
                out.println("<p>No project found with Project ID: " + projectId + "</p>");
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
        out.println("<a href='viewprojectguide.jsp'>Back to Form</a>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}
