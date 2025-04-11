<%@ page import="java.util.*" %>
<%
    List<Map<String, String>> places = (List<Map<String, String>>) request.getAttribute("places");
    String region = (String) request.getAttribute("region");

    if (places == null || places.isEmpty()) {
%>
        <p>No places found for <%= region %>.</p>
        <p><a href="search.jsp">Try a different search</a></p>
<%
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Top Places in <%= region %></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        :root {
            --dark-bg: #222; /* Dark background */
            --primary-color: #f06292; /* Bright Pink */
            --secondary-color: #ba68c8; /* Purple */
            --text-color: #eee; /* Light Grey */
            --body-font: 'Poppins', sans-serif;
            --border-radius-box: 15px; /* Rounded corners for boxes */
            --box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        body {
            font-family: var(--body-font);
            background-color: var(--dark-bg);
            color: var(--text-color);
            padding-top: 30px;
            padding-bottom: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .results-container {
            background-color: #333;
            border-radius: var(--border-radius-box);
            box-shadow: var(--box-shadow);
            padding: 30px;
            margin-bottom: 20px;
            width: 90%;
            max-width: 960px;
        }

        h2 {
            color: var(--primary-color);
            text-align: center;
            margin-bottom: 25px;
        }

        .place-card {
            background-color: #444;
            border-radius: var(--border-radius-box);
            box-shadow: var(--box-shadow);
            padding: 25px;
            margin-bottom: 20px;
            border-left: 5px solid var(--secondary-color);
        }

        .place-title {
            color: var(--primary-color);
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .place-type-heading {
            color: var(--secondary-color);
            font-size: 1.1rem;
            margin-bottom: 5px;
        }

        .place-type {
            color: var(--text-color);
            font-style: italic;
            margin-left: 10px;
        }

        .description-heading {
            color: #999;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 5px;
        }

        .place-description {
            line-height: 1.6;
            margin-bottom: 15px;
            color: var(--text-color);
        }

        .comments-heading {
            color: #999;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 5px;
        }

        .place-comments {
            color: #ccc;
            font-style: italic;
            font-size: 0.95rem;
        }

        .search-again-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .search-again-link:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="results-container">
        <h2>Top Places to Visit in <%= region %></h2>
        <% for (Map<String, String> place : places) { %>
            <div class="place-card">
                <strong class="place-title"><%= place.get("name") %></strong>

                <h3 class="place-type-heading">Type: <span class="place-type"><%= place.get("type") %></span></h3>

                <h4 class="description-heading">Description:</h4>
                <p class="place-description"><%= place.get("description") %></p>

                <% if (place.containsKey("comments") && place.get("comments") != null && !place.get("comments").trim().isEmpty()) { %>
                    <h5 class="comments-heading">Comments:</h5>
                    <p class="place-comments"><%= place.get("comments") %></p>
                <% } %>
            </div>
        <% } %>
    </div>
    <p><a href="search.jsp" class="search-again-link"><i class="bi bi-arrow-left-circle-fill me-2"></i> Search Again</a></p>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>