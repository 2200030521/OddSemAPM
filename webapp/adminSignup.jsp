<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Signup</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Background styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #f2f2f2;
            overflow: hidden;
        }

        /* Fade-in animation for the container */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Bounce animation for input fields */
        @keyframes bounceIn {
            0% {
                transform: scale(0.9);
            }
            60% {
                transform: scale(1.05);
            }
            100% {
                transform: scale(1);
            }
        }

        /* Slide animation for the button */
        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateX(-30px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* Container styling */
        .signup-container {
            background-color: #fff;
            padding: 2rem;
            width: 100%;
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 1s ease-out;
        }

        /* Header styling */
        .signup-container h2 {
            margin-bottom: 1.5rem;
            color: #333;
        }

        /* Input fields styling */
        .signup-container input[type="text"],
        .signup-container input[type="email"],
        .signup-container input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            margin: 0.5rem 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
            animation: bounceIn 0.5s ease forwards;
        }

        /* Staggered animation delay for each input field */
        .signup-container input[type="text"] { animation-delay: 0.2s; }
        .signup-container input[type="email"] { animation-delay: 0.4s; }
        .signup-container input[type="password"] { animation-delay: 0.6s; }

        /* Submit button styling */
        .signup-container input[type="submit"] {
            width: 100%;
            padding: 0.75rem;
            border: none;
            border-radius: 4px;
            background-color: #4d79ff;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            animation: slideIn 0.6s ease forwards;
            animation-delay: 0.8s;
        }

        /* Link styling */
        .signup-container p {
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #666;
            animation: fadeIn 1s ease forwards;
            animation-delay: 1.2s;
        }

        .signup-container a {
            color: #4d79ff;
            text-decoration: none;
        }

        .signup-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Admin Signup</h2>
        <form action="<%= request.getContextPath() %>/AdminSignupServlet" method="post">
            <input type="text" name="name" placeholder="Full Name" required />
            <input type="email" name="email" placeholder="Email" required />
            <input type="password" name="password" placeholder="Password" required />
            <input type="submit" value="Signup" />
        </form>
        <p>Already have an account? <a href="adminLogin.jsp">Login here</a></p>
    </div>
</body>
</html>
