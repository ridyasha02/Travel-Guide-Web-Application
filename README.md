# ✈️ Travel Guide Web Application  

A dynamic web application that provides personalized travel recommendations based on user preferences like region, language, and interests.  

This project allows users to search for places, view their profile, and check their search history for a better travel planning experience.

---

## 📌 Features

- 🔐 User Registration & Login  
- 🧭 Personalized Travel Recommendations  
- 🌍 API Integration for real-time travel suggestions  
- 👤 User Profile Management  
- 🕓 View and Manage Search History  
- 💾 MySQL Database for storing user data & history  

---

## 💻 Tech Stack Used  

| Technology        | Purpose                             |
|------------------|--------------------------------------|
| Java (JSP & Servlets) | Backend Development             |
| MySQL            | Database Management                  |
| HTML, CSS        | Frontend Design                      |
| Travel Guide API | Fetch Travel Recommendations         |
| Apache Tomcat    | Server Deployment                    |

---

## 🚀 Project Flow  

1. User registers or logs in to the application.  
2. User enters region, language, and interests.  
3. Application sends a request to the Travel Guide API.  
4. API responds with place recommendations.  
5. Data is displayed to the user dynamically.  
6. Search history is saved in MySQL Database.  
7. User can view and manage their profile and search history.

---

## 🗃️ Database Structure  

### Tables:

#### `users`
- Stores user information:  
`id`, `username`, `email`, `password`

#### `search_history`
- Stores user search records:  
`id`, `user_id`, `region`, `language`, `interests`, `search_date`

---

## 📈 Future Enhancements  

- 🌐 Integration with Google Maps for better visualization  
- ⭐ User Reviews & Ratings for places  
- 🎫 Travel Package Suggestions & Booking System  
- ⚙️ Admin Panel for User and Content Management  
- 🎨 Revamp UI using React or Angular for a modern look  

---

## ✍️ Conclusion  

This Travel Guide Web Application is a full-stack Java project designed to offer users a customized travel experience using external APIs, dynamic content generation, and database interaction.

It showcases practical implementation of Java Servlets, API consumption, and user data management using JDBC in a real-world scenario.

---

> _Made with ❤️ by Ridyasha Ray  
