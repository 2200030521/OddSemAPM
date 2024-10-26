<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Projects</title>

    <style>
        body { font-family: Arial, sans-serif; background-color: #f8f9fa; }
        .container { max-width: 800px; margin: 20px auto; padding: 20px; background-color: #fff; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #333; }
        .project-list { margin-top: 20px; padding: 10px; }
        .project { margin-bottom: 10px; padding: 8px; background-color: #BDE8CA; border-radius: 5px; }
        .description { font-size: 0.9em; color: #555; margin-top: 5px; }
        .technologies { font-style: italic; color: #666; }
        .back-button { background-color: #BDE8CA; color: white; padding: 10px 15px; text-decoration: none; border-radius: 5px; }
        .back-button:hover { background-color: #99D6B2; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Projects</h1>

        <div class="project-list">
            <div class="project">
                1. OP Health Clinic Management System
                <div class="description">A comprehensive system for managing clinic operations, including appointment scheduling and patient records.</div>
                <div class="technologies">Technologies: React, Node.js, MongoDB</div>
            </div>
            <div class="project">
                2. Online SoS Assistive Management System
                <div class="description">An online platform to assist individuals in emergencies with quick SOS alerts and management.</div>
                <div class="technologies">Technologies: Java, Spring Boot, Twilio API</div>
            </div>
            <div class="project">
                3. Marketing Management System
                <div class="description">A tool for planning and executing marketing campaigns effectively.</div>
                <div class="technologies">Technologies: Python, Django, PostgreSQL</div>
            </div>
            <div class="project">
                4. Corporate Recruitment Management System
                <div class="description">A platform to streamline recruitment processes and manage candidate applications.</div>
                <div class="technologies">Technologies: Java, JSF, MySQL</div>
            </div>
            <div class="project">
                5. E-Learning Management System
                <div class="description">An online learning platform that offers courses and tracks student progress.</div>
                <div class="technologies">Technologies: React, Node.js, Express, MongoDB</div>
            </div>
            <div class="project">
                6. Smart Agriculture System
                <div class="description">A system to monitor and manage agricultural activities using IoT sensors.</div>
                <div class="technologies">Technologies: Python, Raspberry Pi, MQTT</div>
            </div>
            <div class="project">
                7. Library Management System
                <div class="description">A digital system to manage library books, members, and transactions.</div>
                <div class="technologies">Technologies: Java, Hibernate, MySQL</div>
            </div>
            <div class="project">
                8. Food Waste Reduction Platform
                <div class="description">A platform connecting food donors with organizations to reduce waste.</div>
                <div class="technologies">Technologies: Spring Boot, Thymeleaf, MySQL</div>
            </div>
            <div class="project">
                9. Online Event Registration System
                <div class="description">A web application for users to register and manage event participation.</div>
                <div class="technologies">Technologies: PHP, Laravel, MySQL</div>
            </div>
            <div class="project">
                10. Travel Booking System
                <div class="description">An online system for booking travel packages and accommodations.</div>
                <div class="technologies">Technologies: Java, Spring Boot, PostgreSQL</div>
            </div>
            <div class="project">
                11. Inventory Management System
                <div class="description">A tool for tracking and managing inventory levels and orders.</div>
                <div class="technologies">Technologies: C#, ASP.NET, SQL Server</div>
            </div>
            <div class="project">
                12. Personal Finance Management App
                <div class="description">An application to help users manage their personal finances and budgets.</div>
                <div class="technologies">Technologies: React Native, Node.js, MongoDB</div>
            </div>
            <div class="project">
                13. Employee Attendance Management System
                <div class="description">A system to track employee attendance and generate reports.</div>
                <div class="technologies">Technologies: Java, Spring Boot, MySQL</div>
            </div>
            <div class="project">
                14. Online Auction System
                <div class="description">A platform for conducting online auctions for various items.</div>
                <div class="technologies">Technologies: PHP, MySQL, JavaScript</div>
            </div>
            <div class="project">
                15. Fitness Tracking Application
                <div class="description">An application for users to track their fitness activities and progress.</div>
                <div class="technologies">Technologies: Swift (iOS), Kotlin (Android)</div>
            </div>
        </div>

        <!-- Back to Dashboard Button -->
        <a href="studentDashboard.jsp" class="back-button">Back to Dashboard</a>
    </div>
</body>
</html>
