import express from "express";
import cors from "cors";
import invoiceRoutes from "./routes/invoiceRoutes.js";

const app = express();
const PORT = process.env.PORT || 3000;

// ✅ Middleware
app.use(cors());
app.use(express.json());

// ✅ Routes
app.use("/api/v1/invoices", invoiceRoutes);


// ✅ Root route
app.get("/", (req, res) => {
  res.send("🚀 Invoice API is running...");
});

// ✅ Start server
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});
