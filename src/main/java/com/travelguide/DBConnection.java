package com.travelguide;

import java.sql.*;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/travelguide";
    private static final String USER = "root";
    private static final String PASS = "root";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC Driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Method to get DB connection
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }

    // Save user search history
    public static void saveSearch(String region, String language, String[] interests) {
        String sql = "INSERT INTO searches (region, language, interests) VALUES (?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, region);
            ps.setString(2, language);
            ps.setString(3, String.join(",", interests));
            ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error saving search:");
            e.printStackTrace();
        }
    }

    // Register new user
    public static boolean registerUser(String name, String email, String password) {
        String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password); // Tip: use hashed passwords in real apps
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error registering user:");
            e.printStackTrace();
            return false;
        }
    }

    // Validate user login
    public static boolean validateUser(String email, String password) {
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.err.println("Error validating user:");
            e.printStackTrace();
            return false;
        }
    }
}
