# E-Tutorial - Online Learning & Course Management System

An Advance Java web application built using **JSP, Servlets, JDBC, and MySQL**. This portal provides an interactive platform for students to explore IT courses and register online, while offering administrators a complete dashboard to manage students and course offerings.

---

## 📌 Features

### 👨‍🎓 Student / User Features
- **Course Exploration:** Browse available technical courses (Java, Python, C, C++, PHP, Android, Hadoop, etc.) with durations, syllabi, and fee structures.
- **Online Admission & Registration:** Fill out detailed online registration forms with personal, course, and payment details.
- **User Authentication:** Account creation (Signup) and secure login.
- **Student Dashboard:** Dedicated student home portal after successful authentication.
- **Password Recovery:** Reset password using registered credentials.

### 👨‍💼 Admin Features
- **Admin Dashboard:** Secure admin portal accessed via administrator credentials.
- **Student Management (CRUD):**
  - View full records of registered students.
  - Update student contact, address, branch, and course information.
  - Delete student records.
- **Course Management (CRUD):**
  - Add new courses with fees, duration, projects, and descriptions.
  - Update existing course details.
  - Delete obsolete courses.

---

## 🛠️ Technology Stack

| Layer | Technology |
|---|---|
| **Backend** | Java Servlets, JSP (JavaServer Pages), JDBC |
| **Database** | MySQL Server |
| **Frontend** | HTML5, CSS3, JavaScript, Bootstrap 5 (Mentor Theme) |
| **Server** | Apache Tomcat 8.5 / 9.0+ |
| **Connector** | MySQL Connector/J (`mysql-connector-java-8.0.11.jar`) |
| **Project Type** | Eclipse Dynamic Web Project |

---

## 🗄️ Database Setup (MySQL)

Open your MySQL Command Line Client or MySQL Workbench and execute the following queries:

```sql
-- 1. Create the database
CREATE DATABASE IF NOT EXISTS employees;
USE employees;

-- 2. Create 'signup' table for user authentication
CREATE TABLE IF NOT EXISTS signup (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    fname VARCHAR(100),
    email VARCHAR(150) UNIQUE NOT NULL,
    phone VARCHAR(20),
    state VARCHAR(50),
    address TEXT,
    gender VARCHAR(10)
);

-- 3. Create 'registration' table for student course admissions
CREATE TABLE IF NOT EXISTS registration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL,
    branch VARCHAR(100),
    course VARCHAR(100),
    amount VARCHAR(50),
    address TEXT,
    city VARCHAR(100),
    country VARCHAR(100),
    zipcode VARCHAR(20)
);

-- 4. Create 'course' table for managing courses
CREATE TABLE IF NOT EXISTS course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course VARCHAR(100) NOT NULL,
    description TEXT,
    fees VARCHAR(50),
    duration VARCHAR(50),
    project VARCHAR(50),
    password VARCHAR(100)
);
```

---

## ⚙️ Configuration

Check database configuration in:
[`src/main/java/Conn/Db_Conn.java`](src/main/java/Conn/Db_Conn.java)

```java
public static final String Driver = "com.mysql.cj.jdbc.Driver"; // For MySQL 8.x
public static final String url = "jdbc:mysql://localhost:3306/";
public static final String username = "root";
public static final String password = "YOUR_MYSQL_PASSWORD";
public static final String database = "employees";
```

> **Note:** Update the `password` field in `Db_Conn.java` to match your local MySQL root password.

---

## 🚀 How to Run the Project

### Prerequisites
1. **JDK 8 or higher** installed and configured in `JAVA_HOME`.
2. **Apache Tomcat 8.5 / 9.0+** installed.
3. **MySQL Server** running on `localhost:3306`.
4. **Eclipse IDE for Enterprise Java and Web Developers** (or IntelliJ IDEA Ultimate).

### Steps in Eclipse:
1. Open Eclipse and choose your workspace.
2. Go to **File -> Import -> Existing Projects into Workspace**.
3. Select the `E-Tutorial` folder and click **Finish**.
4. Verify MySQL Connector:
   - Ensure `mysql-connector-java-8.0.11.jar` is inside `src/main/webapp/WEB-INF/lib/` and added to the Build Path (**Build Path -> Configure Build Path -> Libraries**).
5. Add Apache Tomcat Server to Eclipse:
   - Open the **Servers** tab -> **New Server** -> Select **Apache Tomcat v9.0** -> Browse to your Tomcat installation path.
6. Right-click on the `E-Tutorial` project -> **Run As -> Run on Server**.
7. Access the application in your browser:
   ```
   http://localhost:8080/E-Tutorial/index.jsp
   ```

---

## 🔑 Default Credentials

- **Admin Login:**
  - **URL:** `http://localhost:8080/E-Tutorial/login.jsp`
  - **Email:** `admin@gmail.com`
  - **Password:** `admin`
  - **Dashboard:** Redirects to `admin/AdminHome.jsp`

- **Student Login:**
  - Register via `Signup.jsp` or use records present in the `signup` table.
  - Redirects to `Student/StudentHome.jsp` upon successful login.

---

## 📂 Project Directory Structure

```
E-Tutorial/
├── src/main/java/
│   ├── Conn/
│   │   └── Db_Conn.java              # Database connection utility (JDBC)
│   └── Com/Servlet/
│       ├── LoginAction.java          # Handles authentication for Admin & Student
│       └── CAction.java              # Handles course creation requests
├── src/main/webapp/
│   ├── assets/                       # Images, vendor libraries, templates
│   ├── css/, js/                     # Custom and Bootstrap styles/scripts
│   ├── index.jsp                     # Landing homepage
│   ├── Navbar.jsp, Footer.jsp        # Reusable navigation and footer components
│   ├── login.jsp                     # Login page
│   ├── Signup.jsp                    # Student registration / signup page
│   ├── RegistrationForm.jsp          # Course registration form
│   ├── ForgetPassword.jsp            # Password reset interface
│   ├── ForgetPasswordAction.jsp      # Password reset logic
│   ├── Student/
│   │   ├── StudentNavbar.jsp         # Student portal navigation
│   │   └── StudentHome.jsp           # Student dashboard
│   ├── admin/
│   │   ├── AdminNavbar.jsp           # Admin portal sidebar & navigation
│   │   ├── AdminHome.jsp             # Admin home view
│   │   ├── RegistrationStudent.jsp   # Registered students list (View table)
│   │   ├── RegistrationAction.jsp    # Processes student registration inserts
│   │   ├── update_res.jsp            # Edit student details form
│   │   ├── UpdateAction_Res.jsp      # Executes student update query
│   │   ├── delete_res.jsp            # Executes student deletion query
│   │   ├── C.jsp, cAction.jsp        # Course insert form and action
│   │   ├── Update.jsp, UpdateAction.jsp # Course update form and action
│   │   └── Delete.jsp                # Course delete action
│   └── WEB-INF/
│       └── lib/
│           └── mysql-connector-java-8.0.11.jar # MySQL JDBC driver
└── README.md                         # Project documentation
```

---

## 📄 License & Credits
- **UI Template:** [Mentor Bootstrap Theme](https://bootstrapmade.com/mentor-free-education-bootstrap-theme/) by BootstrapMade.
- **Backend & Logic:** Developed using Core & Advance Java (Servlets, JSP, JDBC).
