<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Project Details</title>
    <style>
        /* Overall page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        /* Container styling */
        .container {
            max-width: 500px;
            width: 100%;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h1 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
        }
        /* Label and input field styling */
        label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            outline: none;
            transition: border 0.3s ease;
        }
        input[type="text"]:focus {
            border-color: #4CAF50;
        }
        /* Button styling */
        button[type="submit"] {
            margin-top: 15px;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Enter Project ID to View Details</h1>
        <form action="ViewProjectsServlet" method="get">
            <label for="projectId">Project ID:</label>
            <input type="text" id="projectId" name="projectId" required>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
