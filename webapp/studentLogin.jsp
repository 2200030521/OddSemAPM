<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden; /* Prevents scrollbar during animation */
            position: relative; /* Set position to relative for absolute elements */
            background-color: #f0f4f7; /* Fallback background color */
            overflow: hidden; /* Prevents scrollbar during animation */
        }

        /* Background animation */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: 0; /* Behind the content */
        }

        .background .circle {
            position: absolute;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.7);
            animation: moveCircle 10s linear infinite; /* Circular animation */
        }

        @keyframes moveCircle {
            0% { transform: translate(-50%, -50%) scale(0.5); }
            50% { transform: translate(100vw, 100vh) scale(1); }
            100% { transform: translate(-50%, -50%) scale(0.5); }
        }

        .circle:nth-child(1) {
            width: 100px;
            height: 100px;
            left: 10%;
            top: 20%;
            animation-delay: 0s;
        }

        .circle:nth-child(2) {
            width: 150px;
            height: 150px;
            left: 50%;
            top: 30%;
            animation-delay: 2s;
        }

        .circle:nth-child(3) {
            width: 120px;
            height: 120px;
            left: 70%;
            top: 60%;
            animation-delay: 4s;
        }

        .circle:nth-child(4) {
            width: 180px;
            height: 180px;
            left: 30%;
            top: 80%;
            animation-delay: 6s;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            transform: translateY(-30px); /* Start position for animation */
            opacity: 0; /* Initially hidden */
            animation: fadeInUp 0.5s forwards; /* Fade in and move up */
            z-index: 1; /* Bring to the front */
        }

        @keyframes fadeInUp {
            to {
                transform: translateY(0);
                opacity: 1;
            }
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
            transition: border-color 0.3s; /* Smooth border color change */
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #00796b; /* Highlight on focus */
            outline: none; /* Remove outline */
        }

        .login-container input[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s, transform 0.2s; /* Smooth transition */
        }

        .login-container input[type="submit"]:hover {
            background-color: #005b4f;
            transform: translateY(-2px); /* Slight lift effect on hover */
        }

        .login-container a {
            color: #00796b;
            text-decoration: none;
            transition: color 0.3s; /* Smooth color transition */
        }

        .login-container a:hover {
            text-decoration: underline;
            color: #005b4f; /* Darker color on hover */
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
        <div class="circle"></div>
    </div>
    
    <div class="login-container">
        <h2>Student Login</h2>
        <form action="StudentLoginServlet" method="post">
            <input type="text" name="studentEmail" placeholder="Email" required />
            <input type="password" name="studentPassword" placeholder="Password" required />
            <input type="submit" value="Login" />
        </form>
        <p>Don't have an account? <a href="studentSignup.jsp">Sign up here</a></p>
    </div>
</body>
</html>
