CREATE TYPE "public"."milestonee" AS ENUM('60%', '90%', '100%');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "milestone" SET DATA TYPE "public"."milestonee" USING "milestone"::text::"public"."milestonee";--> statement-breakpoint
DROP TYPE "public"."milestone";