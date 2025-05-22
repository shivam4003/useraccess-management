
# 🧭 User Access Management System

A full-stack system to handle user registration, role-based authentication, software access requests, and approvals.

## 🚀 Features

- ✅ User registration and login with secure password hashing
- 🔒 JWT-based authentication
- 👥 Role-based access control (Employee, Manager, Admin)
- 💻 Software creation and listing (Admin only)
- 📥 Employees can request access to software
- ✅ Managers can approve/reject access requests
- 📊 PostgreSQL with TypeORM entities

---

## 🛠️ Tech Stack

| Layer       | Technology                     |
|-------------|--------------------------------|
| Backend     | Node.js, Express.js, TypeORM   |
| Frontend    | React, React Router            |
| Database    | PostgreSQL                     |
| Auth        | JWT, bcrypt                    |
| Tooling     | Nodemon, dotenv                |

---

## 🔧 Setup Instructions

### 🗂 Backend

```bash
cd user-access-backend
npm install
````

Create a `.env` file in `user-access-backend`:

```env
PORT=5000
DB_HOST=localhost
DB_PORT=5432
DB_USERNAME=postgres
DB_PASSWORD=Shiv@m1996
DB_DATABASE=useraccessdb
JWT_SECRET=4Yz!qP7@xW#s9Vz$Rm%2Lb8GdJfN0Eht
```

Run backend:

```bash
npm run dev
```

### 🌐 Frontend

```bash
cd user-access-frontend
npm install
npm start
```

---

## 🧩 Database Schema

Use the `schema.sql` file to initialize the PostgreSQL database.

```bash
psql -U postgres -d useraccessdb -f schema.sql
```

---

## 👤 Roles

* **Employee**: Sign up, log in, request access
* **Manager**: Approve or reject requests
* **Admin**: Create software, full access

---

## 📁 Folder Structure

```
user-access-management/
├── user-access-backend/
│   └── src/
├── user-access-frontend/
│   └── src/
└── schema.sql
```

---

## 📝 License

This project is for educational purposes. No license applied.

```


