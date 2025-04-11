package com.travelguide;

import java.io.*;
import java.net.*;
import java.util.*;
import org.json.*;

public class TravelAPIClient {

    public List<Map<String, String>> getRecommendations(String region, String language, String[] interests, String apiKey) {
        try {
            URL url = new URL("https://travel-guide-api-city-guide-top-places.p.rapidapi.com/check?noqueue=1");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("x-rapidapi-host", "travel-guide-api-city-guide-top-places.p.rapidapi.com");
            conn.setRequestProperty("x-rapidapi-key", "9893ed3b19mshda4a669e12cdaf6p1e72b5jsn4e3273596f86"); // Use the provided apiKey
            conn.setDoOutput(true);

            // Prepare the request JSON body
            JSONObject json = new JSONObject();
            json.put("region", region);
            json.put("language", language);
            json.put("interests", new JSONArray(interests));

            // Send request
            try (OutputStream os = conn.getOutputStream()) {
                byte[] input = json.toString().getBytes("utf-8");
                os.write(input, 0, input.length);
            }

            // Read response
            int responseCode = conn.getResponseCode();
            if (responseCode != 200) {
                System.err.println("API returned error code: " + responseCode);
                return null;
            }

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
            StringBuilder sb = new StringBuilder();
            String line;

            while ((line = br.readLine()) != null) {
                sb.append(line.trim());
            }

            JSONObject responseJson = new JSONObject(sb.toString());
            JSONArray resultArray = responseJson.getJSONArray("result");

            List<Map<String, String>> resultList = new ArrayList<>();
            for (int i = 0; i < resultArray.length(); i++) {
                JSONObject place = resultArray.getJSONObject(i);
                Map<String, String> map = new HashMap<>();
                map.put("name", place.getString("name"));
                map.put("description", place.getString("description"));
                map.put("type", place.optString("type", ""));
                map.put("comments", place.optString("comments", ""));
                // Handle potential null or missing coordinates
                if (place.has("coordinates") && !place.isNull("coordinates")) {
                    JSONObject coordinates = place.getJSONObject("coordinates");
                    map.put("latitude", coordinates.optString("latitude", ""));
                    map.put("longitude", coordinates.optString("longitude", ""));
                } else {
                    map.put("latitude", "");
                    map.put("longitude", "");
                }
                resultList.add(map);
            }

            return resultList;

        } catch (MalformedURLException e) {
            System.err.println("Invalid URL: " + e.getMessage());
            e.printStackTrace();
            return null;
        } catch (ProtocolException e) {
            System.err.println("Protocol error: " + e.getMessage());
            e.printStackTrace();
            return null;
        } catch (IOException e) {
            System.err.println("IO error: " + e.getMessage());
            e.printStackTrace();
            return null;
        } catch (JSONException e) {
            System.err.println("JSON parsing error: " + e.getMessage());
            e.printStackTrace();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}