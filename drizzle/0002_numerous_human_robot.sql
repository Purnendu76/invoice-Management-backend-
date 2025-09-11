ALTER TABLE "invoices" ALTER COLUMN "project" SET DATA TYPE "public"."project" USING "project"::"public"."project";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "mode_of_project" SET DATA TYPE "public"."mode_of_project" USING "mode_of_project"::"public"."mode_of_project";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "state" SET DATA TYPE "public"."state" USING "state"::"public"."state";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "my_bill_category" SET DATA TYPE "public"."my_bill_category" USING "my_bill_category"::"public"."my_bill_category";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" SET DATA TYPE "public"."milestone" USING "milestone"::"public"."milestone";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_percentage" SET DATA TYPE "public"."gst_percentage" USING "gst_percentage"::"public"."gst_percentage";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "passed_amount_by_client" SET DEFAULT '0';--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "retention" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_withheld" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "tds" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_tds" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "bocw" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "low_depth_deduction" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "ld" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "sla_penalty" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "penalty" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "other_deduction" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET DATA TYPE "public"."status" USING "status"::"public"."status";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "amount_paid_by_client" SET NOT NULL;