package com.travelguide;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class TravelServlet extends HttpServlet {
    private static final String API_KEY = "YOUR_API_KEY";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String region = request.getParameter("region");
        String language = request.getParameter("language");
        String[] interests = request.getParameter("interests").split(",");

        TravelAPIClient client = new TravelAPIClient();
        List<Map<String, String>> places = client.getRecommendations(region, language, interests, API_KEY);

        if (places == null) {
            response.sendRedirect("error.jsp");
        } else {
            request.setAttribute("places", places);
            request.setAttribute("region", region);
            request.setAttribute("interests", String.join(", ", interests));
            DBConnection.saveSearch(region, language, interests); // Save to DB
            request.getRequestDispatcher("results.jsp").forward(request, response);
        }
    }
}
