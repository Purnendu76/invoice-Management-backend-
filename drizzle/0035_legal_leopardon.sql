CREATE TYPE "public"."states" AS ENUM('West Bengal', 'Delhi', 'Bihar', 'MP', 'Kerala', 'Sikkim', 'Jharkhand', 'Andaman');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "state" SET DATA TYPE "public"."states" USING "state"::text::"public"."states";--> statement-breakpoint
DROP TYPE "public"."state";