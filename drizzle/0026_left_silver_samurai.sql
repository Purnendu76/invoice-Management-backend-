CREATE TYPE "public"."mode_of_projects" AS ENUM('Back To Back', 'Direct');--> statement-breakpoint
CREATE TYPE "public"."my_bill_categorys" AS ENUM('Service', 'Supply', 'ROW', 'AMC', 'Restoration Service', 'Restoration Supply', 'Restoration Row', 'Spares', 'Training');--> statement-breakpoint
CREATE TYPE "public"."projects" AS ENUM('NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC');--> statement-breakpoint
CREATE TYPE "public"."states" AS ENUM('West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman');--> statement-breakpoint
CREATE TYPE "public"."payment_status" AS ENUM('Paid', 'Cancelled', 'Under process', 'Credit Note Issued');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "project" SET DATA TYPE "public"."projects" USING "project"::text::"public"."projects";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "mode_of_project" SET DATA TYPE "public"."mode_of_projects" USING "mode_of_project"::text::"public"."mode_of_projects";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "state" SET DATA TYPE "public"."states" USING "state"::text::"public"."states";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "my_bill_category" SET DATA TYPE "public"."my_bill_categorys" USING "my_bill_category"::text::"public"."my_bill_categorys";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET DATA TYPE "public"."payment_status" USING "status"::text::"public"."payment_status";--> statement-breakpoint
DROP TYPE "public"."mode_of_project";--> statement-breakpoint
DROP TYPE "public"."my_bill_category";--> statement-breakpoint
DROP TYPE "public"."project";--> statement-breakpoint
DROP TYPE "public"."state";--> statement-breakpoint
DROP TYPE "public"."status";