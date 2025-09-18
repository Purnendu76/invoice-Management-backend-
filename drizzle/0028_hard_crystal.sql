CREATE TYPE "public"."gst_percentage" AS ENUM('5%', '12%', '18%');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_percentage" SET DATA TYPE "public"."gst_percentage" USING "gst_percentage"::text::"public"."gst_percentage";--> statement-breakpoint
DROP TYPE "public"."gst_percentagee";