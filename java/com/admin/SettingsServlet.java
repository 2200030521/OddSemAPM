package com.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SettingsServlet")
public class SettingsServlet extends HttpServlet {
    private SettingsDAO settingsDAO = new SettingsDAO(); // DAO class for database operations

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to settings.jsp
        request.getRequestDispatcher("settings.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("update".equals(action)) {
            String siteTitle = request.getParameter("siteTitle");
            String adminEmail = request.getParameter("adminEmail");

            Settings settings = new Settings(siteTitle, adminEmail);
            settingsDAO.updateSettings(settings);
        }

        // Redirect back to the settings page
        response.sendRedirect("settings.jsp");
    }
}
