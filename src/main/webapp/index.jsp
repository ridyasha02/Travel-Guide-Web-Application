<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Travel Guide</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        /* Define Theme Variables */
        :root {
            --dark-bg: #222; /* Dark background */
            --primary-color: #f06292; /* Bright Pink */
            --secondary-color: #ba68c8; /* Purple */
            --accent-color: #ffb74d; /* Orange */
            --text-color: #eee; /* Light Grey */
            --heading-font: 'Dancing Script', cursive;
            --body-font: 'Poppins', sans-serif;
            --border-radius-buttons: 50px; /* Pill shape */
            --border-radius-box: 15px; /* Rounded corners for boxes */
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: var(--body-font);
            background-color: var(--dark-bg); /* Dark background */
            color: var(--text-color); /* Light text */
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
        }

        .welcome-container {
            background-color: rgba(51, 51, 51, 0.85); /* Semi-transparent dark background */
            padding: 40px 50px;
            border-radius: var(--border-radius-box);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3); /* Darker shadow */
            max-width: 600px;
            width: 90%;
        }

        h1 {
            font-family: var(--heading-font);
            color: var(--primary-color); /* Bright pink heading */
            font-size: 3.5rem;
            margin-top: 0;
            margin-bottom: 15px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5); /* Darker text shadow */
        }

        p {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 30px;
            font-weight: 300;
            color: var(--text-color); /* Light paragraph text */
        }

        .action-links a {
            display: inline-block;
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            color: var(--text-color); /* Light button text */
            padding: 12px 30px;
            margin: 10px 8px;
            border-radius: var(--border-radius-buttons);
            text-decoration: none;
            font-weight: 600;
            font-size: 1rem;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3); /* Darker button shadow */
        }

        .action-links a:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(240, 98, 146, 0.4); /* Pinker hover shadow */
        }

        /* Style the second button differently if desired (optional) */
        .action-links a:last-child {
             background: linear-gradient(45deg, var(--secondary-color), #c994d9); /* Purple-ish gradient */
        }
         .action-links a:last-child:hover {
             box-shadow: 0 6px 15px rgba(201, 148, 217, 0.5); /* Purple-ish hover shadow */
         }

    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome to the Travel Guide</h1>
        <p>Discover your next adventure! Explore travel destinations perfectly matched to your interests.</p>

        <div class="action-links">
            <a href="login.jsp">Login</a>
            <a href="signup.jsp">Sign Up</a>
            </div>
    </div>
</body>
</html>