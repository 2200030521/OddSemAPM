package com.guide;

public class Project {
    private int studentId;
    private String studentName;
    private int projectNumber;
    private String projectName;
    private String teamMembers;

    public Project(int studentId, String studentName, int projectNumber, String projectName, String teamMembers) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.projectNumber = projectNumber;
        this.projectName = projectName;
        this.teamMembers = teamMembers;
    }

    // Getters and Setters
    public int getStudentId() { return studentId; }
    public String getStudentName() { return studentName; }
    public int getProjectNumber() { return projectNumber; }
    public String getProjectName() { return projectName; }
    public String getTeamMembers() { return teamMembers; }
}
