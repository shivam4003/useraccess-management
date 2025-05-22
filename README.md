#User Access Management System
A complete system for managing user access to software applications with role-based permissions.

Features
User registration and authentication with JWT
Role-based access control (Employee, Manager, Admin)
Software listing and creation (Admin only)
Access request submission (Employee)
Access request approval/rejection (Manager)
Tech Stack
Backend: Node.js, Express.js, TypeORM
Frontend: React, React Router, Axios
Database: PostgreSQL
Authentication: JWT, bcrypt
Other tools: dotenv, nodemon
Project Structure
├── backend/                 # Node.js + Express backend
│   ├── src/
│   │   ├── config/          # Configuration files
│   │   ├── controllers/     # API controllers
│   │   ├── entities/        # TypeORM entities
│   │   ├── middleware/      # Custom middleware
│   │   ├── routes/          # API routes
│   │   ├── utils/           # Helper functions
│   │   └── index.ts         # Entry point
│   ├── .env.example         # Environment variables example
│   ├── package.json         # Backend dependencies
│   └── tsconfig.json        # TypeScript configuration
├── frontend/                # React frontend
│   ├── public/              # Static files
│   ├── src/
│   │   ├── components/      # Reusable components
│   │   ├── context/         # React context
│   │   ├── pages/           # Page components
│   │   ├── services/        # API services
│   │   ├── utils/           # Helper functions
│   │   ├── App.tsx          # Main App component
│   │   └── index.tsx        # Entry point
│   ├── package.json         # Frontend dependencies
│   └── tsconfig.json        # TypeScript configuration
└── README.md                # Project documentation
Setup Instructions
Prerequisites
Node.js (v14+)
PostgreSQL
npm or yarn
Backend Setup
Navigate to the backend directory:

cd backend
Install dependencies:

npm install
Create a .env file based on .env.example:

cp .env.example .env
Update the .env file with your PostgreSQL credentials and JWT secret.

Start the development server:

npm run dev
Frontend Setup
Navigate to the frontend directory:

cd frontend
Install dependencies:

npm install
Start the development server:

npm start
API Documentation
Authentication
POST /api/auth/signup - Register a new user

Body: { username, password }
Response: { id, username, role }
POST /api/auth/login - Login and get JWT token

Body: { username, password }
Response: { token, user: { id, username, role } }
Software Management (Admin only)
GET /api/software - Get all software

Response: [{ id, name, description, accessLevels }]
POST /api/software - Create new software

Body: { name, description, accessLevels }
Response: { id, name, description, accessLevels }
Access Requests
GET /api/requests - Get all requests (filtered by role)

Response: [{ id, user, software, accessType, reason, status }]
POST /api/requests - Create a new access request

Body: { softwareId, accessType, reason }
Response: { id, user, software, accessType, reason, status }
PATCH /api/requests/:id - Approve or reject a request (Manager only)

Body: { status: 'Approved' | 'Rejected' }
Response: { id, user, software, accessType, reason, status }
User Roles
Employee: Can request access to software
Manager: Can approve/reject access requests
Admin: Can create software and has full access
