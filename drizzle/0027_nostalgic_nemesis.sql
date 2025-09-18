CREATE TYPE "public"."milestone" AS ENUM('60%', '90%', '100%');--> statement-breakpoint
CREATE TYPE "public"."mode_of_project" AS ENUM('Back To Back', 'Direct');--> statement-breakpoint
CREATE TYPE "public"."my_bill_category" AS ENUM('Service', 'Supply', 'ROW', 'AMC', 'Restoration Service', 'Restoration Supply', 'Restoration Row', 'Spares', 'Training');--> statement-breakpoint
CREATE TYPE "public"."project" AS ENUM('NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC');--> statement-breakpoint
CREATE TYPE "public"."state" AS ENUM('West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman');--> statement-breakpoint
CREATE TYPE "public"."status" AS ENUM('Paid', 'Cancelled', 'Under process', 'Credit Note Issued');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "project" SET DATA TYPE "public"."project" USING "project"::text::"public"."project";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "mode_of_project" SET DATA TYPE "public"."mode_of_project" USING "mode_of_project"::text::"public"."mode_of_project";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "state" SET DATA TYPE "public"."state" USING "state"::text::"public"."state";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "my_bill_category" SET DATA TYPE "public"."my_bill_category" USING "my_bill_category"::text::"public"."my_bill_category";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" SET DATA TYPE "public"."milestone" USING "milestone"::text::"public"."milestone";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET DATA TYPE "public"."status" USING "status"::text::"public"."status";--> statement-breakpoint
DROP TYPE "public"."milestonee";--> statement-breakpoint
DROP TYPE "public"."mode_of_projects";--> statement-breakpoint
DROP TYPE "public"."my_bill_categorys";--> statement-breakpoint
DROP TYPE "public"."projects";--> statement-breakpoint
DROP TYPE "public"."states";--> statement-breakpoint
DROP TYPE "public"."payment_status";