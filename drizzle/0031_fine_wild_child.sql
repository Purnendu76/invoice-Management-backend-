CREATE TYPE "public"."gst_percentages" AS ENUM('5%', '12%', '18%');--> statement-breakpoint
CREATE TYPE "public"."milestonees" AS ENUM('60%', '90%', '100%');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" SET DATA TYPE "public"."milestonees" USING "milestone"::text::"public"."milestonees";--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_percentage" SET DATA TYPE "public"."gst_percentages" USING "gst_percentage"::text::"public"."gst_percentages";--> statement-breakpoint
DROP TYPE "public"."gst_percentage";--> statement-breakpoint
DROP TYPE "public"."milestone";