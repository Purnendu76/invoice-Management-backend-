import { drizzle } from "drizzle-orm/node-postgres";
import pkg from "pg";

const { Pool } = pkg;

// ⚠️ use .env later, but for now you can hardcode it
const pool = new Pool({
  connectionString: process.env.DATABASE_URL || "postgres://postgres:yourpassword@localhost:5432/invoice_db",
});

export const db = drizzle(pool);
