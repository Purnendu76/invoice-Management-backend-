CREATE TYPE "public"."pay-status" AS ENUM('Paid', 'Cancelled', 'Under process', 'Credit Note Issued');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "status" SET DATA TYPE "public"."pay-status" USING "status"::text::"public"."pay-status";--> statement-breakpoint
DROP TYPE "public"."status";