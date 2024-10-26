<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ask Your Project Guide</title>
    <style>
        * {
            box-sizing: border-box; /* Include padding and border in width/height */
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
        h2 { 
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
        textarea { 
            width: 100%; 
            padding: 10px; 
            margin-bottom: 15px; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
            font-size: 16px; 
            transition: border-color 0.3s ease; 
        }
        input[type="text"]:focus, 
        textarea:focus { 
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
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
        .message {
            text-align: center;
            color: #00796b;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Ask Your Project Guide</h2>
        <form action="InquiryServlet" method="post">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="guideName">Guide Name:</label>
            <input type="text" id="guideName" name="guideName" required>

            <label for="inquiry">Your Inquiry:</label>
            <textarea id="inquiry" name="inquiry" rows="4" required></textarea>

            <input type="submit" value="Submit Inquiry">
        </form>

        <!-- Display success or error message -->
        <div class="message">
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
                    out.println("<h3>" + message + "</h3>");
                }
            %>
        </div>
        <div class="footer">Please fill in the details to ask your project guide.</div>
    </div>

</body>
</html>
