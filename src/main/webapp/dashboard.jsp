<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = (String) session.getAttribute("userName");
    if (userName == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        :root {
            --dark-bg: #222; 
            --primary-color: #f06292; 
            --secondary-color: #ba68c8; 

            --accent-color: #ffb74d; 
            --text-color: #eee; 
            --heading-font: 'Dancing Script', cursive;
            --body-font: 'Poppins', sans-serif;
            --border-radius: 15px;
            --box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        body {
            font-family: var(--body-font);
            background-color: var(--dark-bg);
            color: var(--text-color);
            padding-top: 50px;
            padding-bottom: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .dashboard-container {
            background-color: #333;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            padding: 40px;
            text-align: center;
            width: 80%;
            max-width: 500px;
        }

        .welcome-heading {
            font-family: var(--heading-font);
            color: var(--primary-color);
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
        }

        .dashboard-links {
            list-style: none;
            padding: 0;
            margin-bottom: 30px;
        }

        .dashboard-links li {
            margin-bottom: 15px;
        }

        .dashboard-links li a {
            display: block;
            background-color: var(--secondary-color);
            color: var(--text-color);
            padding: 12px 20px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .dashboard-links li a:hover {
            background-color: var(--primary-color);
            transform: scale(1.05);
        }

        .logout-button {
            background-color: #d32f2f; 
            color: var(--text-color);
            border: none;
            padding: 10px 20px;
            border-radius: 50px;
            cursor: pointer;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
            display: inline-block;
        }

        .logout-button:hover {
            background-color: #f44336;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h2 class="welcome-heading">Welcome, <%= userName %>!</h2>

        <ul class="dashboard-links">
            <li><a href="profile.jsp"><i class="bi bi-person-fill me-2"></i> Profile</a></li>
            <li><a href="history.jsp"><i class="bi bi-clock-history me-2"></i> Search History</a></li>
            <li><a href="search.jsp"><i class="bi bi-search me-2"></i> New Travel Search</a></li>
        </ul>

        <a href="logout.jsp" class="logout-button"><i class="bi bi-box-arrow-left me-2"></i> Logout</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>