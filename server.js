import express from "express";
import cors from "cors";
import invoiceRoutes from "./routes/invoiceRoutes.js";
import userInvoiceRoutes from "./routes/userInvoiceRoutes.js"; 
import authRoutes from "./routes/authRoutes.js"; 
import { authMiddleware } from "./authMiddleware.js";
import { authorizeRoles } from "./authorizeRoles.js";

const app = express();
const PORT = process.env.PORT;

// ✅ Middleware
app.use(cors());
app.use(express.json());

// ✅ Auth routes (no middleware here)
app.use("/api/v1/auth", authRoutes);

// ✅ Admin invoices (only Admins)
app.use(
  "/api/v1/invoices",
  authMiddleware,
  authorizeRoles("Admin"),
  invoiceRoutes
);

// ✅ User invoices (Users + Admins can access)
app.use(
  "/api/v1/user-invoices",
  // authMiddleware,
  // authorizeRoles("user", "Admin"),
  userInvoiceRoutes
);

// app.use(
//   "/api/v1/user-invoices/project",
//   userInvoiceRoutes
// )

// ✅ Root route
app.get("/", (req, res) => {
  res.send("🚀 Invoice API is running...");
});

// ✅ Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});
