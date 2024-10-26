<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submit Project</title>
    <style>
        * {
            box-sizing: border-box; /* Ensure padding and border are included in width/height */
        }
        body { 
            font-family: Arial, sans-serif; 
            background-color: #f0f4f8; 
            margin: 0; 
            padding: 0; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
        }
        .container { 
            max-width: 500px; 
            width: 100%; 
            padding: 20px; 
            background-color: #ffffff; 
            border-radius: 8px; 
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1); 
            transition: box-shadow 0.3s ease; 
        }
        .container:hover {
            box-shadow: 0 4px 40px rgba(0, 0, 0, 0.2); 
        }
        h1 { 
            text-align: center; 
            color: #333; 
            margin-bottom: 20px; 
        }
        label { 
            display: block; 
            margin-bottom: 5px; 
            font-weight: bold; 
            color: #555; 
        }
        input[type="text"], 
        input[type="url"] { 
            width: 100%; 
            padding: 10px; 
            margin-bottom: 15px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            font-size: 16px; 
            transition: border-color 0.3s ease; 
        }
        input[type="text"]:focus, 
        input[type="url"]:focus { 
            border-color: #66b2a5; 
            outline: none; 
        }
        input[type="submit"] { 
            background-color: #66b2a5; 
            color: white; 
            padding: 8px; /* Reduced padding for smaller button size */
            border: none; 
            border-radius: 5px; 
            cursor: pointer; 
            font-size: 16px; 
            transition: background-color 0.3s ease; 
            width: auto; /* Change to auto width for a more compact button */
            margin-top: 10px; /* Add some space above the button */
            display: block; /* Center the button horizontally */
            margin-left: auto;
            margin-right: auto;
        }
        input[type="submit"]:hover { 
            background-color: #5aa78a; 
        }
        .back-button {
            background-color: #BDE8CA; 
            color: white; 
            padding: 8px; /* Adjust padding for consistency */
            border: none; 
            border-radius: 5px; 
            cursor: pointer; 
            font-size: 16px; 
            text-decoration: none; /* Remove underline from the link */
            display: block; /* Center the button horizontally */
            margin-top: 10px; /* Space from the submit button */
            text-align: center; 
        }
        .back-button:hover { 
            background-color: #99D6B2; 
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Submit Project</h1>
        <form action="submitProject" method="post">
            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="projectNumber">Project Number:</label>
            <input type="text" id="projectNumber" name="projectNumber" required>

            <label for="projectName">Project Name:</label>
            <input type="text" id="projectName" name="projectName" required>

            <label for="githubLink">GitHub Link:</label>
            <input type="url" id="githubLink" name="githubLink" placeholder="https://github.com/your-repo" required>

            <input type="submit" value="Submit">
        </form>
        <a href="studentDashboard.jsp" class="back-button">Back to Dashboard</a> <!-- Back to Dashboard Button -->
        <div class="footer">Please fill in the details to submit your project.</div>
    </div>
</body>
</html>
