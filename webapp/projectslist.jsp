<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects List</title>
    <style>
        /* Reset & General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f0f8f5;
            color: #333;
            padding-top: 100px; /* Adjusted top padding for better spacing */
        }

        /* Navbar Styling */
        .navbar {
            background-color: #333;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 30px;
            color: #BDE8CA;
        }
        .nav-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #BDE8CA;
        }
        .nav-links {
            list-style: none;
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }
        .nav-links li {
            margin: 5px;
        }
        .nav-links a {
            text-decoration: none;
            color: #BDE8CA;
            font-weight: bold;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .nav-links a:hover {
            background-color: #555;
        }

        /* Title Styling */
        .projects-title {
            text-align: center;
            color: #333;
            margin-top: 20px;
            font-size: 2rem;
            font-weight: bold;
        }

        /* Content Section Styling */
        .content-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px;
        }
        .content-section {
            width: 80%; /* Reduced width for better spacing */
            max-width: 800px;
            margin: 15px 0;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .content-section h2 {
            color: #006400;
            font-size: 1.4rem;
            margin-bottom: 10px;
        }
        .content-section p {
            font-size: 1rem;
            line-height: 1.6;
        }
    </style>
</head>
<body>

    <!-- Projects List Title -->
    <div class="projects-title">Projects List</div>

    <!-- Content Sections -->
    <div class="content-container">
        <section id="ps01" class="content-section">
            <h2>PS-01: OP Health Clinic Management System</h2>
            <p>This system manages patient records, doctor appointments, schedules, prescriptions, and clinic inventory. It improves clinical workflow by enabling online patient registration, managing doctor schedules, and sending SMS/email appointment reminders.</p>
        </section>

        <section id="ps02" class="content-section">
            <h2>PS-02: Online SoS Assistive Management System</h2>
            <p>This system provides an online platform for distress signal management, where users can send SoS alerts to designated responders. The surveillance team can verify distress reports, trigger emergency responses, and notify appropriate authorities or medical services.</p>
        </section>

        <section id="ps03" class="content-section">
            <h2>PS-03: Marketing Management System</h2>
            <p>This system is designed to streamline marketing processes by managing digital marketing materials, social media campaigns, and content updates, ensuring cohesive branding and targeted advertising efforts across platforms.</p>
        </section>

        <section id="ps04" class="content-section">
            <h2>PS-04: Corporate Recruitment Management System</h2>
            <p>This project assists HR departments in streamlining recruitment processes. It allows for managing candidate profiles, scheduling interviews, and tracking hiring status, with a focus on making recruitment transparent and efficient.</p>
        </section>

        <section id="ps05" class="content-section">
            <h2>PS-05: Corporate Grievance Management System</h2>
            <p>This system provides an online platform for employees to submit grievances, enabling companies to maintain records of grievances, automate the complaint tracking process, and ensure timely resolution.</p>
        </section>

        <section id="ps06" class="content-section">
            <h2>PS-06: Airline Reservation System</h2>
            <p>The Airline Reservation System simplifies ticket booking, cancellations, and inquiries. It manages flight schedules, passenger data, and seat availability, optimizing the booking process for travelers and airline staff alike.</p>
        </section>

        <section id="ps07" class="content-section">
            <h2>PS-07: Course Management System</h2>
            <p>This system manages course details, enrollment, and assessments, providing students with an easy way to access course materials and manage academic requirements online.</p>
        </section>

        <section id="ps08" class="content-section">
            <h2>PS-08: Electricity Billing System</h2>
            <p>An automated system to calculate electricity bills based on usage, manage customer billing records, and send reminders, enabling energy providers to streamline the billing process and improve customer service.</p>
        </section>

        <section id="ps09" class="content-section">
            <h2>PS-09: Library Management System</h2>
            <p>This system simplifies library operations by tracking books, managing member details, and allowing users to reserve and renew books, enhancing the efficiency of library services.</p>
        </section>

        <section id="ps10" class="content-section">
            <h2>PS-10: Online Bank Management System</h2>
            <p>The Online Bank Management System manages customer accounts, transactions, loans, and other banking operations online, enhancing the accessibility and efficiency of banking services.</p>
        </section>

        <section id="ps11" class="content-section">
            <h2>PS-11: Stock Management System</h2>
            <p>This system helps businesses manage inventory levels, track sales, and generate reports, reducing the risk of overstock or stockouts.</p>
        </section>

        <section id="ps12" class="content-section">
            <h2>PS-12: Smart City Management System</h2>
            <p>This system integrates data from various municipal services to streamline urban planning, improve city services, and enhance the quality of life for residents.</p>
        </section>

        <section id="ps13" class="content-section">
            <h2>PS-13: Online Quiz Management System</h2>
            <p>The Online Quiz Management System allows educational institutions to conduct quizzes and assessments online, with automated grading and reporting.</p>
        </section>

        <section id="ps14" class="content-section">
            <h2>PS-14: Campus Activity Portal</h2>
            <p>This system helps manage campus events and activities, enabling students to participate and stay informed about ongoing and upcoming events within the university.</p>
        </section>

        <section id="ps15" class="content-section">
            <h2>PS-15: Healthcare Hospital System</h2>
            <p>This project manages hospital operations, including patient registration, appointment scheduling, and medical record management, streamlining hospital workflows and improving patient care.</p>
        </section>

        <section id="ps16" class="content-section">
            <h2>PS-16: Manpower Acquisition System</h2>
            <p>This system aids organizations in managing recruitment processes, tracking applicants, and organizing interviews, ensuring efficient hiring practices.</p>
        </section>

        <section id="ps17" class="content-section">
            <h2>PS-17: Vehicle Tracker System</h2>
            <p>The Vehicle Tracker System uses GPS technology to monitor and manage vehicle locations, enhancing fleet management and security.</p>
        </section>
    </div>
</body>
</html>
