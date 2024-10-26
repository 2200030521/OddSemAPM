<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            height: 100vh;
            overflow: hidden;
            background-color: #f0f4f7; /* Fallback background color */
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative; /* For absolutely positioned children */
        }

        /* Background animation */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 0; /* Behind the content */
            overflow: hidden;
        }

        .background .circle {
            position: absolute;
            border-radius: 50%;
            background-color: rgba(0, 128, 128, 0.4);
            animation: float 10s linear infinite;
        }

        @keyframes float {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-30px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .circle:nth-child(1) {
            width: 100px;
            height: 100px;
            left: 15%;
            top: 10%;
            animation-delay: 0s;
            animation-duration: 8s;
        }

        .circle:nth-child(2) {
            width: 150px;
            height: 150px;
            left: 50%;
            top: 20%;
            animation-delay: 2s;
            animation-duration: 10s;
        }

        .circle:nth-child(3) {
            width: 80px;
            height: 80px;
            left: 75%;
            top: 40%;
            animation-delay: 4s;
            animation-duration: 6s;
        }

        .circle:nth-child(4) {
            width: 120px;
            height: 120px;
            left: 30%;
            top: 60%;
            animation-delay: 6s;
            animation-duration: 9s;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 90%;
            text-align: center;
            position: relative;
            animation: bounceIn 0.5s forwards; /* Bounce in effect */
            z-index: 1; /* Bring to the front */
        }

        @keyframes bounceIn {
            0% {
                transform: scale(0.5);
                opacity: 0;
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        .login-container h2 {
            margin-bottom: 30px;
            color: #00796b;
            font-size: 24px;
            animation: fadeIn 0.5s forwards; /* Fade in effect */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #00796b;
            outline: none;
        }

        .login-container input[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s, transform 0.2s;
        }

        .login-container input[type="submit"]:hover {
            background-color: #005b4f;
            transform: translateY(-2px); /* Slight lift effect on hover */
        }

        .login-container a {
            color: #00796b;
            text-decoration: none;
            transition: color 0.3s;
        }

        .login-container a:hover {
            text-decoration: underline;
            color: #005b4f;
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
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <input type="text" name="adminEmail" placeholder="Email" required />
            <input type="password" name="adminPassword" placeholder="Password" required />
            <input type="submit" value="Login" />
        </form>
        <p>Don't have an account? <a href="adminSignup.jsp">Sign up here</a></p>
    </div>
</body>
</html>
	