CREATE TYPE "public"."gst_percentage" AS ENUM('5%', '12%', '18%');--> statement-breakpoint
CREATE TYPE "public"."milestone" AS ENUM('60%', '90%', '100%');--> statement-breakpoint
CREATE TYPE "public"."mode_of_projecte" AS ENUM('Back To Back', 'Direct');--> statement-breakpoint
CREATE TYPE "public"."my_bill_categoriy" AS ENUM('Service', 'Supply', 'ROW', 'AMC', 'Restoration Service', 'Restoration Supply', 'Restoration Row', 'Spares', 'Training');--> statement-breakpoint
CREATE TYPE "public"."my-project" AS ENUM('NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC');--> statement-breakpoint
CREATE TYPE "public"."states" AS ENUM('West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman');--> statement-breakpoint
CREATE TYPE "public"."status" AS ENUM('Paid', 'Cancelled', 'Under process', 'Credit Note Issued');--> statement-breakpoint
CREATE TABLE "my-invoicees" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"project" "my-project" NOT NULL,
	"mode_of_project" "mode_of_projecte" NOT NULL,
	"state" "states" NOT NULL,
	"my_bill_category" "my_bill_categoriy" NOT NULL,
	"milestone" "milestone",
	"invoice_number" varchar(255) NOT NULL,
	"invoice_date" date NOT NULL,
	"submission_date" date NOT NULL,
	"invoice_basic_amount" numeric NOT NULL,
	"gst_percentage" "gst_percentage" NOT NULL,
	"invoice_gst_amount" numeric DEFAULT '0' NOT NULL,
	"total_amount" numeric DEFAULT '0' NOT NULL,
	"passed_amount_by_client" numeric DEFAULT '0',
	"retention" numeric DEFAULT '0' NOT NULL,
	"gst_withheld" numeric DEFAULT '0' NOT NULL,
	"tds" numeric DEFAULT '0' NOT NULL,
	"gst_tds" numeric DEFAULT '0' NOT NULL,
	"bocw" numeric DEFAULT '0' NOT NULL,
	"low_depth_deduction" numeric DEFAULT '0' NOT NULL,
	"ld" numeric DEFAULT '0' NOT NULL,
	"sla_penalty" numeric DEFAULT '0' NOT NULL,
	"penalty" numeric DEFAULT '0' NOT NULL,
	"other_deduction" numeric DEFAULT '0' NOT NULL,
	"total_deduction" numeric DEFAULT '0' NOT NULL,
	"net_payable" numeric DEFAULT '0' NOT NULL,
	"status" "status" NOT NULL,
	"amount_paid_by_client" numeric DEFAULT '0' NOT NULL,
	"payment_date" date,
	"balance" numeric DEFAULT '0' NOT NULL,
	"remarks" text
);
--> statement-breakpoint
CREATE TABLE "users_auth" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	"role" varchar(50) DEFAULT 'user',
	"created_at" timestamp DEFAULT now(),
	CONSTRAINT "users_auth_email_unique" UNIQUE("email")
);
