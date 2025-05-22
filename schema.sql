
CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "username" VARCHAR(255) UNIQUE NOT NULL,
  "password" VARCHAR(255) NOT NULL,
  "role" VARCHAR(20) NOT NULL CHECK (role IN ('Employee', 'Manager', 'Admin'))
);

CREATE TABLE "software" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(255) NOT NULL,
  "description" TEXT,
  "accessLevels" TEXT[]
);

CREATE TABLE "request" (
  "id" SERIAL PRIMARY KEY,
  "userId" INT REFERENCES "user"(id),
  "softwareId" INT REFERENCES "software"(id),
  "accessType" VARCHAR(20) CHECK (accessType IN ('Read', 'Write', 'Admin')),
  "reason" TEXT,
  "status" VARCHAR(20) CHECK (status IN ('Pending', 'Approved', 'Rejected'))
);
