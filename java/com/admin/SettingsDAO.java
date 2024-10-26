package com.admin;

import java.sql.*;

public class SettingsDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/apm";
    private static final String DB_USER = "root"; // replace with your database username
    private static final String DB_PASSWORD = "03Nov@2003123"; // replace with your database password

    // Method to get the current settings from the database
    public Settings getSettings() {
        Settings settings = null;
        String sql = "SELECT * FROM settings LIMIT 1"; // Assuming only one settings row
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            if (resultSet.next()) {
                String siteTitle = resultSet.getString("site_title");
                String adminEmail = resultSet.getString("admin_email");
                settings = new Settings(siteTitle, adminEmail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return settings;
    }

    // Method to update settings in the database
    public void updateSettings(Settings settings) {
        String sql = "UPDATE settings SET site_title = ?, admin_email = ? WHERE id = 1"; // Assuming ID is 1
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, settings.getSiteTitle());
            statement.setString(2, settings.getAdminEmail());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
