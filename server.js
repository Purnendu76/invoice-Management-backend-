import express from "express";
import cors from "cors";
import invoiceRoutes from "./routes/invoiceRoutes.js";
import authRoutes from "./routes/authRoutes.js"; 
import { authMiddleware } from "./authMiddleware.js";

const app = express();
const PORT = process.env.PORT ;

// ✅ Middleware
app.use(cors());
app.use(express.json());

// ✅ Auth routes (no middleware here)
app.use("/api/v1/auth", authRoutes);

// ✅ Invoice routes (protected by auth middleware)
app.use("/api/v1/invoices",authMiddleware, invoiceRoutes);

// User invoices (protected)
app.use("/api/v1/user-invoices", authMiddleware, invoiceRoutes);

// ✅ Root route
app.get("/", (req, res) => {
  res.send("🚀 Invoice API is running...");
});

// ✅ Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});
