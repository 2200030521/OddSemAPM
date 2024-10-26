<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Guide Login</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: #f0f4f7;
            overflow: hidden;
            position: relative;
        }
        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            z-index: 10;
            position: relative;
        }
        .login-container h2 {
            margin-bottom: 30px;
            color: #00796b;
            font-size: 24px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .login-container input[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .login-container input[type="submit"]:hover {
            background-color: #005b4f;
        }
        .login-container a {
            color: #00796b;
            text-decoration: none;
        }
        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Project Guide Login</h2>
        <form action="GuideLoginServlet" method="post"> <!-- Ensure the action matches the servlet mapping -->
            <input type="text" name="guideEmail" placeholder="Email" required />
            <input type="password" name="guidePassword" placeholder="Password" required />
            <input type="submit" value="Login" />
        </form>
        <p>Don't have an account? <a href="projectGuideSignup.jsp">Sign up here</a></p>
    </div>
</body>
</html>
