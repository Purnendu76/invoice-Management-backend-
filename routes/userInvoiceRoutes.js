// routes/userInvoiceRoutes.js
import { Router } from "express";
import db from "../db/db_connect.js";
import { invoices } from "../db/schema.js";
import { buildInvoicePayload } from "../helpers/invoiceHelpers.js";
import { calculateInvoiceTotals } from "../helpers/invoiceCalculations.js";
import { eq, and } from "drizzle-orm";
import { authMiddleware } from "../authMiddleware.js";

const router = Router();

// create (attach logged-in user)
router.post("/", authMiddleware, async (req, res) => {
  try {
    let invoiceData = buildInvoicePayload(req);
    invoiceData = calculateInvoiceTotals(invoiceData);

    // IMPORTANT: property name must match your schema (see note below)
    invoiceData.userId = req.user.id;

    const [newInvoice] = await db.insert(invoices).values(invoiceData).returning();
    res.status(201).json({ message: "Invoice created", invoice: newInvoice });
  } catch (error) {
    console.error("Create invoice error:", error);
    res.status(500).json({ error: "Failed to create invoice" });
  }
});

// get all for logged-in user
router.get("/", authMiddleware, async (req, res) => {
  try {
    console.log("user-invoices: req.user =", req.user); 
    const allInvoices = await db
      .select()
      .from(invoices)
      .where(eq(invoices.userId, req.user.id)); 
    res.json(allInvoices);
  } catch (error) {
    console.error("Get invoices error:", error);
    res.status(500).json({ error: "Failed to fetch invoices" });
  }
});

// get single (owner only)
router.get("/:id", authMiddleware, async (req, res) => {
  try {
    const [invoice] = await db
      .select()
      .from(invoices)
      .where(and(eq(invoices.id, req.params.id), eq(invoices.userId, req.user.id)));
    if (!invoice) return res.status(404).json({ error: "Invoice not found" });
    res.json(invoice);
  } catch (error) {
    console.error("Get invoice error:", error);
    res.status(500).json({ error: "Failed to fetch invoice" });
  }
});

// update (owner only)
router.put("/:id", authMiddleware, async (req, res) => {
  try {
    let invoiceData = buildInvoicePayload(req);
    invoiceData = calculateInvoiceTotals(invoiceData);
    delete invoiceData.id;
    const [updatedInvoice] = await db
      .update(invoices)
      .set(invoiceData)
      .where(and(eq(invoices.id, req.params.id), eq(invoices.userId, req.user.id)))
      .returning();
    if (!updatedInvoice) return res.status(404).json({ error: "Invoice not found" });
    res.json({ message: "Invoice updated", invoice: updatedInvoice });
  } catch (error) {
    console.error("Update invoice error:", error);
    res.status(500).json({ error: "Failed to update invoice" });
  }
});

// delete (owner only)
router.delete("/:id", authMiddleware, async (req, res) => {
  try {
    const [deletedInvoice] = await db
      .delete(invoices)
      .where(and(eq(invoices.id, req.params.id), eq(invoices.userId, req.user.id)))
      .returning();
    if (!deletedInvoice) return res.status(404).json({ error: "Invoice not found" });
    res.json({ message: "Invoice deleted", invoice: deletedInvoice });
  } catch (error) {
    console.error("Delete invoice error:", error);
    res.status(500).json({ error: "Failed to delete invoice" });
  }
});

export default router;
