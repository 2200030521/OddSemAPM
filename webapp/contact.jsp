<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff; /* Light blue background */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff; /* White container for content */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header h1 {
            font-size: 36px;
            color: #333333;
            margin: 0;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
        }
        .contact-form label {
            font-size: 16px;
            color: #333333;
            margin-bottom: 5px;
        }
        .contact-form input, .contact-form textarea {
            font-size: 16px;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #bdd7ee; /* Light blue border */
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }
        .contact-form textarea {
            resize: vertical;
            min-height: 100px;
        }
        .contact-form button {
            background-color: #007bff; /* Blue button */
            color: white;
            font-size: 16px;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .contact-form button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Contact Us</h1>
        </div>
        <form class="contact-form" action="ContactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
