ALTER TABLE "invoices" ALTER COLUMN "project" SET DATA TYPE varchar(255);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "mode_of_project" SET DATA TYPE varchar(255);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "state" SET DATA TYPE varchar(255);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "my_bill_category" SET DATA TYPE varchar(255);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" SET DATA TYPE varchar(50);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "invoice_basic_amount" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_percentage" SET DATA TYPE varchar(10);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "invoice_gst_amount" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "invoice_gst_amount" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "total_amount" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "total_amount" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "passed_amount_by_client" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "retention" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "retention" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_withheld" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_withheld" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "tds" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "tds" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_tds" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_tds" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "bocw" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "bocw" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "low_depth_deduction" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "low_depth_deduction" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "ld" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "ld" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "sla_penalty" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "sla_penalty" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "penalty" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "penalty" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "other_deduction" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "other_deduction" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "total_deduction" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "total_deduction" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "total_deduction" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "net_payable" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "net_payable" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "net_payable" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET DATA TYPE varchar(50);--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "amount_paid_by_client" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "amount_paid_by_client" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "balance" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "balance" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "balance" SET NOT NULL;