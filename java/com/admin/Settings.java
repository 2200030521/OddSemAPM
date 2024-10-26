package com.admin;

public class Settings {
    private String siteTitle;
    private String adminEmail;

    // Constructor for creating/updating settings
    public Settings(String siteTitle, String adminEmail) {
        this.siteTitle = siteTitle;
        this.adminEmail = adminEmail;
    }

    // Getters and Setters
    public String getSiteTitle() {
        return siteTitle;
    }

    public void setSiteTitle(String siteTitle) {
        this.siteTitle = siteTitle;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }
}
