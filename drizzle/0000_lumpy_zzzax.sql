CREATE TYPE "public"."gst_percentage" AS ENUM('5%', '12%', '18%');--> statement-breakpoint
CREATE TYPE "public"."milestone" AS ENUM('60%', '90%', '100%');--> statement-breakpoint
CREATE TYPE "public"."mode_of_project" AS ENUM('Back To Back', 'Direct');--> statement-breakpoint
CREATE TYPE "public"."my_bill_category" AS ENUM('Service', 'Supply', 'ROW', 'AMC', 'Restoration Service', 'Restoration Supply', 'Restoration Row', 'Spares', 'Training');--> statement-breakpoint
CREATE TYPE "public"."project" AS ENUM('NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC');--> statement-breakpoint
CREATE TYPE "public"."state" AS ENUM('West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman');--> statement-breakpoint
CREATE TYPE "public"."status" AS ENUM('Paid', 'Cancelled', 'Under process', 'Credit Note Issued');--> statement-breakpoint
CREATE TABLE "invoices" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"project" "project" NOT NULL,
	"mode_of_project" "mode_of_project" NOT NULL,
	"state" "state" NOT NULL,
	"my_bill_category" "my_bill_category" NOT NULL,
	"milestone" "milestone" NOT NULL,
	"invoice_number" varchar(255) NOT NULL,
	"invoice_date" date NOT NULL,
	"submission_date" date NOT NULL,
	"invoice_basic_amount" numeric(12, 2) NOT NULL,
	"gst_percentage" "gst_percentage" NOT NULL,
	"invoice_gst_amount" numeric(12, 2) NOT NULL,
	"total_amount" numeric(12, 2) NOT NULL,
	"passed_amount_by_client" numeric(12, 2),
	"retention" numeric(12, 2),
	"gst_withheld" numeric(12, 2),
	"tds" numeric(12, 2),
	"gst_tds" numeric(12, 2),
	"bocw" numeric(12, 2),
	"low_depth_deduction" numeric(12, 2),
	"ld" numeric(12, 2),
	"sla_penalty" numeric(12, 2),
	"penalty" numeric(12, 2),
	"other_deduction" numeric(12, 2),
	"total_deduction" numeric(12, 2),
	"net_payable" numeric(12, 2),
	"status" "status" NOT NULL,
	"amount_paid_by_client" numeric(12, 2),
	"payment_date" date,
	"balance" numeric(12, 2),
	"remarks" text
);
