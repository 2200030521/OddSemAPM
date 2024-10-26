package com.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ManageContentServlet")
public class ManageContentServlet extends HttpServlet {
    private ContentDAO contentDAO = new ContentDAO(); // DAO class for database operations

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            Content content = new Content(title, description);
            contentDAO.addContent(content);
        } else if ("update".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            Content content = new Content(id, title, description);
            contentDAO.updateContent(content);
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            contentDAO.deleteContent(id);
        }

        // Refresh content list after any operation
        List<Content> contentList = contentDAO.getAllContents();
        request.setAttribute("contentList", contentList);
        request.getRequestDispatcher("manageContent.jsp").forward(request, response);
    }
}
