## 📌 Project Title

**Product Feedback System using C# and ASP.NET**

---

## 📖 Description

The Product Feedback System is a web-based application developed using C# and ASP.NET.
This system allows users to submit feedback about products and helps administrators manage and view submitted feedback.

The main goal of this project is to provide a simple and efficient platform to collect user feedback and store it securely in a database.

---

## 🎯 Objectives

* To collect product feedback from users
* To store feedback in a database
* To allow administrators to view feedback
* To manage feedback records efficiently
* To improve product quality based on feedback

---

## 🛠️ Technologies Used

### Frontend

* HTML
* CSS
* JavaScript

### Backend

* C#
* ASP.NET Web Forms

### Database

* SQL Server

### Tools

* Microsoft Visual Studio
* SQL Server Management Studio (SSMS)

---

## ⚙️ Installation Steps

### Step 1 — Clone or Download Project

Download the project from GitHub:

https://github.com/Kasturi-Mahendra-Sawant/Product_Feedback_system

OR

Clone using Git:

git clone https://github.com/Kasturi-Mahendra-Sawant/Product_Feedback_system.git

---

### Step 2 — Open Project in Visual Studio

1. Open Microsoft Visual Studio
2. Click **Open → Project/Solution**
3. Select the `.sln` file from the project folder

---

### Step 3 — Setup Database

1. Open **SQL Server Management Studio (SSMS)**
2. Create a new database

Example:

ProductFeedbackDB

3. Import the `.sql` database file into the database

---

### Step 4 — Configure Database Connection

Open **Web.config** file and update the connection string:

Example:

<connectionStrings>
  <add name="con"
       connectionString="Data Source=.;Initial Catalog=ProductFeedbackDB;Integrated Security=True"
       providerName="System.Data.SqlClient"/>
</connectionStrings>

---

## ▶️ Run the Project

1. Press **F5**
   OR
2. Click **Start** button in Visual Studio

The project will open in your browser.

---

## 👤 User Features

* Submit product feedback
* Enter product name
* Write comments
* Save feedback into database

---

## 🛡️ Admin Features

* View all feedback
* Delete unwanted feedback
* Manage feedback records
* Monitor feedback details

---

## 📂 Project Structure

Product_Feedback_system/

│
├── App_Data/
├── Scripts/
├── Styles/
├── Images/
│
├── Default.aspx
├── Feedback.aspx
├── Admin.aspx
├── Web.config
├── Product_Feedback_system.sln
└── README.md

---

## 🚀 Future Enhancements

* Add Login Authentication
* Add Email Notification System
* Add Feedback Reports
* Add Search and Filter Options

---

## 👨‍💻 Author

**Name:** Kasturi Mahendra Sawant
**Project:** Product Feedback System
**Technology:** C# ASP.NET
**GitHub:** https://github.com/Kasturi-Mahendra-Sawant

---

## 📜 License

This project is developed for educational purposes.
