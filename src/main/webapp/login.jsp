<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login to Travel Guide</title>
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
            --text-color: #eee; 
            --heading-font: 'Dancing Script', cursive;
            --body-font: 'Poppins', sans-serif;
            --border-radius-buttons: 50px; 
            --border-radius-box: 15px; 
            --input-bg: #333;
            --input-border: #555;
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: var(--body-font);
            background-color: var(--dark-bg);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
        }

        .login-container {
            background-color: rgba(51, 51, 51, 0.85); 
            padding: 40px 50px;
            border-radius: var(--border-radius-box);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
            max-width: 600px;
            width: 90%;
        }

        h1 {
            font-family: var(--heading-font);
            color: var(--primary-color);
            font-size: 3.5rem;
            margin-top: 0;
            margin-bottom: 25px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: var(--text-color);
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--input-border);
            border-radius: 8px;
            background-color: var(--input-bg);
            color: var(--text-color);
            box-sizing: border-box;
        }

        button[type="submit"] {
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            color: var(--text-color);
            padding: 12px 30px;
            border: none;
            border-radius: var(--border-radius-buttons);
            cursor: pointer;
            font-weight: 600;
            font-size: 1rem;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
            width: 100%;
        }

        button[type="submit"]:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(240, 98, 146, 0.4);
        }

        .signup-link {
            margin-top: 25px;
        }

        .signup-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .signup-link a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="login" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required class="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required class="form-control"/>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
        <div class="signup-link">
            <a href="signup.jsp">New user? Signup</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>