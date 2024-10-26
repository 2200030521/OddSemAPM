package com.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewProjectServlet")
public class ViewProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dbUrl = "jdbc:mysql://localhost:3306/apm";
        String dbUser = "root";
        String dbPassword = "03Nov@2003123";

        ArrayList<Project> projectList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            String sql = "SELECT project_number, project_name, project_description, technologies_used, submission_date FROM student_projects WHERE student_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, 1); // Replace with actual student_id

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Project project = new Project();
                project.setProjectNumber(resultSet.getString("project_number"));
                project.setProjectName(resultSet.getString("project_name"));
                project.setProjectDescription(resultSet.getString("project_description"));
                project.setTechnologiesUsed(resultSet.getString("technologies_used"));
                project.setSubmissionDate(resultSet.getString("submission_date"));
                projectList.add(project);
            }

            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("projectList", projectList);
        request.getRequestDispatcher("guideviewprojects.jsp").forward(request, response);
    }
}
