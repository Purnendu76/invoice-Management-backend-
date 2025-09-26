import { pgTable, unique, check, uuid, varchar, timestamp, date, numeric, text, pgEnum } from "drizzle-orm/pg-core"
import { sql } from "drizzle-orm"

// export const gstPercentages = pgEnum("gst_percentages", ['5%', '12%', '18%'])
export const milestone = pgEnum("milestone", ['60%', '90%', '100%'])
export const modeOfProjecte = pgEnum("mode_of_projecte", ['Back To Back', 'Direct'])
export const myProject = pgEnum("my-project", ['NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC'])
export const myBillCategoriy = pgEnum("my_bill_categoriy", ['Service', 'Supply', 'ROW', 'AMC', 'Restoration Service', 'Restoration Supply', 'Restoration Row', 'Spares', 'Training'])
export const states = pgEnum("states", ['West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman'])
export const status = pgEnum("status", ['Paid', 'Cancelled', 'Under process', 'Credit Note Issued'])


export const usersAuth = pgTable("users_auth", {
	id: uuid().defaultRandom().primaryKey().notNull(),
	name: varchar({ length: 255 }).notNull(),
	email: varchar({ length: 255 }).notNull(),
	password: varchar({ length: 255 }).notNull(),
	projectRole: myProject("project_role"),
	role: varchar({ length: 50 }).default('user'),
	createdAt: timestamp("created_at", { mode: 'string' }).defaultNow(),
}, (table) => [
	unique("users_auth_email_unique").on(table.email),
	check("users_auth_id_not_null", sql`NOT NULL id`),
	check("users_auth_name_not_null", sql`NOT NULL name`),
	check("users_auth_email_not_null", sql`NOT NULL email`),
	check("users_auth_password_not_null", sql`NOT NULL password`),
]);

export const myInvoicees = pgTable("my-invoicees", {
	id: uuid().defaultRandom().primaryKey().notNull(),
	userId: uuid("user_id"),
	project: myProject().notNull(),
	modeOfProject: modeOfProjecte("mode_of_project").notNull(),
	state: states().notNull(),
	myBillCategory: myBillCategoriy("my_bill_category").notNull(),
	milestone: milestone(),
	invoiceNumber: varchar("invoice_number", { length: 255 }).notNull(),
	invoiceDate: date("invoice_date").notNull(),
	submissionDate: date("submission_date").notNull(),
	invoiceBasicAmount: numeric("invoice_basic_amount").notNull(),
	invoiceGstAmount: numeric("invoice_gst_amount").default('0').notNull(),
	totalAmount: numeric("total_amount").default('0').notNull(),
	passedAmountByClient: numeric("passed_amount_by_client").default('0'),
	retention: numeric().default('0').notNull(),
	gstWithheld: numeric("gst_withheld").default('0').notNull(),
	tds: numeric().default('0').notNull(),
	gstTds: numeric("gst_tds").default('0').notNull(),
	bocw: numeric().default('0').notNull(),
	lowDepthDeduction: numeric("low_depth_deduction").default('0').notNull(),
	ld: numeric().default('0').notNull(),
	slaPenalty: numeric("sla_penalty").default('0').notNull(),
	penalty: numeric().default('0').notNull(),
	otherDeduction: numeric("other_deduction").default('0').notNull(),
	totalDeduction: numeric("total_deduction").default('0').notNull(),
	netPayable: numeric("net_payable").default('0').notNull(),
	status: status().notNull(),
	amountPaidByClient: numeric("amount_paid_by_client").default('0').notNull(),
	paymentDate: date("payment_date"),
	balance: numeric().default('0').notNull(),
	remarks: text(),
}, (table) => [
	check("my-invoicees_id_not_null", sql`NOT NULL id`),
	check("my-invoicees_project_not_null", sql`NOT NULL project`),
	check("my-invoicees_mode_of_project_not_null", sql`NOT NULL mode_of_project`),
	check("my-invoicees_state_not_null", sql`NOT NULL state`),
	check("my-invoicees_my_bill_category_not_null", sql`NOT NULL my_bill_category`),
	check("my-invoicees_invoice_number_not_null", sql`NOT NULL invoice_number`),
	check("my-invoicees_invoice_date_not_null", sql`NOT NULL invoice_date`),
	check("my-invoicees_submission_date_not_null", sql`NOT NULL submission_date`),
	check("my-invoicees_invoice_basic_amount_not_null", sql`NOT NULL invoice_basic_amount`),
	check("my-invoicees_invoice_gst_amount_not_null", sql`NOT NULL invoice_gst_amount`),
	check("my-invoicees_total_amount_not_null", sql`NOT NULL total_amount`),
	check("my-invoicees_retention_not_null", sql`NOT NULL retention`),
	check("my-invoicees_gst_withheld_not_null", sql`NOT NULL gst_withheld`),
	check("my-invoicees_tds_not_null", sql`NOT NULL tds`),
	check("my-invoicees_gst_tds_not_null", sql`NOT NULL gst_tds`),
	check("my-invoicees_bocw_not_null", sql`NOT NULL bocw`),
	check("my-invoicees_low_depth_deduction_not_null", sql`NOT NULL low_depth_deduction`),
	check("my-invoicees_ld_not_null", sql`NOT NULL ld`),
	check("my-invoicees_sla_penalty_not_null", sql`NOT NULL sla_penalty`),
	check("my-invoicees_penalty_not_null", sql`NOT NULL penalty`),
	check("my-invoicees_other_deduction_not_null", sql`NOT NULL other_deduction`),
	check("my-invoicees_total_deduction_not_null", sql`NOT NULL total_deduction`),
	check("my-invoicees_net_payable_not_null", sql`NOT NULL net_payable`),
	check("my-invoicees_status_not_null", sql`NOT NULL status`),
	check("my-invoicees_amount_paid_by_client_not_null", sql`NOT NULL amount_paid_by_client`),
	check("my-invoicees_balance_not_null", sql`NOT NULL balance`),
]);
