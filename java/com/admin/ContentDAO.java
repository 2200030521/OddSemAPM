package com.admin;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContentDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/apm";
    private static final String DB_USER = "root"; // replace with your database username
    private static final String DB_PASSWORD = "03Nov@2003123"; // replace with your database password

    // Method to add content to the database
    public void addContent(Content content) {
        String sql = "INSERT INTO content (title, description) VALUES (?, ?)";
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, content.getTitle());
            statement.setString(2, content.getDescription());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update content in the database
    public void updateContent(Content content) {
        String sql = "UPDATE content SET title = ?, description = ? WHERE id = ?";
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, content.getTitle());
            statement.setString(2, content.getDescription());
            statement.setInt(3, content.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete content from the database
    public void deleteContent(int id) {
        String sql = "DELETE FROM content WHERE id = ?";
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to get all content from the database
    public List<Content> getAllContents() {
        List<Content> contentList = new ArrayList<>();
        String sql = "SELECT * FROM content";
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");
                contentList.add(new Content(id, title, description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contentList;
    }
}
