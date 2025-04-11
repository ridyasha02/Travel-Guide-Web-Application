<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get username from session
    String userName = (String) session.getAttribute("userName");

    // Redirect to login if user is not logged in
    if (userName == null || userName.trim().isEmpty()) {
        response.sendRedirect("login.jsp");
        return; // Stop further processing of the page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Dreams</title>

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
            --input-bg: #333;
            --input-border: #555;
            --placeholder-color: #ddd; /* Light grey for placeholder */
        }

        body {
            font-family: var(--body-font);
            background-color: var(--dark-bg);
            color: var(--text-color);
            padding-top: 30px;
            padding-bottom: 30px;
        }

        .container {
            max-width: 650px;
        }

        .welcome-heading {
            font-family: var(--heading-font);
            color: var(--primary-color);
            font-size: 2.8rem;
            text-align: center;
            margin-bottom: 25px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
        }

        .search-card {
            background-color: var(--input-bg);
            border-radius: var(--border-radius);
            border: none;
            box-shadow: var(--box-shadow);
            overflow: hidden;
        }

        .search-card .card-header {
            background-color: var(--secondary-color);
            border-bottom: none;
            text-align: center;
            padding: 15px;
        }

        .search-card .card-header h3 {
            font-family: var(--heading-font);
            color: var(--text-color);
            font-size: 1.8rem;
            margin: 0;
        }

        .search-card .card-body {
            padding: 30px;
        }

        .form-label {
            font-weight: 600;
            color: var(--secondary-color);
            margin-bottom: 8px;
        }

        .form-control,
        .form-select {
            background-color: var(--input-bg);
            border-radius: 10px;
            border: 1px solid var(--input-border);
            padding: 10px 15px;
            font-size: 0.95rem;
            color: var(--text-color);
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
        }

        .form-control::placeholder { /* Style for placeholder text */
            color: var(--placeholder-color);
        }

        .form-control:focus,
        .form-select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(240, 98, 146, 0.5);
            outline: none;
        }

        .form-check-input {
            border-radius: 50%;
            border-color: var(--secondary-color);
            height: 1.2em;
            width: 1.2em;
            margin-top: 0.2em;
            cursor: pointer;
            background-color: var(--input-bg);
        }

        .form-check-input:checked {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }
        .form-check-input:focus {
             box-shadow: 0 0 0 0.25rem rgba(240, 98, 146, 0.5);
             border-color: var(--primary-color);
        }

        .form-check-label {
            margin-left: 8px;
            font-weight: 300;
            cursor: pointer;
            color: var(--text-color);
        }
        .interests-group {
            padding: 10px;
            background-color: #444;
            border-radius: 8px;
            border: 1px solid #666;
        }

        .submit-button {
            background: linear-gradient(45deg, var(--primary-color), var(--secondary-color));
            border: none;
            color: var(--text-color);
            padding: 12px 20px;
            font-weight: 600;
            font-size: 1.1rem;
            border-radius: 50px;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
        }

        .submit-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(240, 98, 146, 0.4);
        }

        .back-link {
            text-align: center;
            margin-top: 30px;
        }

        .back-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 400;
            transition: color 0.2s ease;
        }

        .back-link a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
         .back-link i {
             margin-right: 5px;
         }

    </style>
</head>
<body>

    <div class="container">

        <h2 class="welcome-heading">Hello <%= userName %>!</h2>

        <div class="card search-card">
            <div class="card-header">
                <h3>Plan Your Next Adventure</h3>
            </div>
            <div class="card-body">
                <form method="post" action="travel">

                    <div class="mb-4">
                        <label for="regionInput" class="form-label"><i class="bi bi-geo-alt-fill"></i> Destination:</label>
                        <input type="text" class="form-control" id="regionInput" name="region" placeholder="e.g. Paris, Kyoto, Bali" required />
                    </div>

                    <div class="mb-4">
                        <label for="languageSelect" class="form-label"><i class="bi bi-translate"></i> Preferred Language:</label>
                        <select class="form-select" id="languageSelect" name="language" required>
                            <option value="" selected disabled>-- Select Language --</option>
                            <option value="en">English</option>
                            <option value="fr">French</option>
                            <option value="es">Spanish</option>
                            <option value="de">German</option>
                            <option value="it">Italian</option>
                            <option value="tr">Turkish</option>
                            <%-- Add more languages as needed --%>
                        </select>
                    </div>

                    <div class="mb-4">
                        <label class="form-label d-block"><i class="bi bi-heart-fill"></i> Your Interests:</label>
                        <div class="interests-group">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="interestHistorical" name="interests" value="historical">
                                <label class="form-check-label" for="interestHistorical">Historical</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="interestCultural" name="interests" value="cultural">
                                <label class="form-check-label" for="interestCultural">Cultural</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="interestFood" name="interests" value="food">
                                <label class="form-check-label" for="interestFood">Food</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="interestNature" name="interests" value="nature">
                                <label class="form-check-label" for="interestNature">Nature</label>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="submit-button">
                       <i class="bi bi-search-heart"></i> Find Recommendations
                    </button>

                </form>
            </div>
        </div>

        <div class="back-link">
            <a href="dashboard.jsp">
                <i class="bi bi-arrow-left-circle"></i> Back to Dashboard
            </a>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>