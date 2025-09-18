CREATE TYPE "public"."projects" AS ENUM('NFS', 'GAIL', 'BGCL', 'STP', 'Bharat Net', 'NFS AMC');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "project" SET DATA TYPE "public"."projects" USING "project"::text::"public"."projects";--> statement-breakpoint
DROP TYPE "public"."project";