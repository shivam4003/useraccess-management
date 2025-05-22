import "reflect-metadata";
import express from "express";
import dotenv from "dotenv";
import { AppDataSource } from "./utils/data-source";
import authRoutes from "./routes/authRoutes";
dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json());
app.use("/api/auth", authRoutes);

AppDataSource.initialize()
  .then(() => {
    console.log("Data Source has been initialized!");
    app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
  })
  .catch((err) => {
    console.error("Error during Data Source initialization:", err);
  });
