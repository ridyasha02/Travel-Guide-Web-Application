<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = (String) session.getAttribute("userName");
    String userEmail = (String) session.getAttribute("userEmail"); // Assuming you store email in session
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
    <title>Your Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        :root {
            --dark-bg: #222; /* Dark background */
            --primary-color: #f06292; /* Bright Pink */
            --secondary-color: #ba68c8; /* Purple */
            --accent-color: #ffb74d; /* Orange */
            --text-color: #eee; /* Light Grey */
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

        .profile-container {
            background-color: #333;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            padding: 40px;
            text-align: left;
            width: 80%;
            max-width: 500px;
        }

        .profile-heading {
            font-family: var(--heading-font);
            color: var(--primary-color);
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-align: center;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
        }

        .profile-info p {
            margin-bottom: 15px;
            font-size: 1rem;
        }

        .profile-info strong {
            color: var(--secondary-color);
            font-weight: bold;
            margin-right: 10px;
        }

        .back-link {
            margin-top: 30px;
            text-align: center;
        }

        .back-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .back-link a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <h2 class="profile-heading">Your Profile</h2>
        <div class="profile-info">
            <p><strong>Name:</strong> <%= userName %></p>
            <% if (userEmail != null && !userEmail.trim().isEmpty()) { %>
                <p><strong>Email:</strong> <%= userEmail %></p>
            <% } else { %>
                <p><strong>Email:</strong> Not available</p>
            <% } %>
            </div>

        <div class="back-link">
            <a href="dashboard.jsp"><i class="bi bi-arrow-left-circle-fill me-2"></i> Back to Dashboard</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>