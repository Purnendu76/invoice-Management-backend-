CREATE TYPE "public"."mode_of_projects" AS ENUM('Back To Back', 'Direct');--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "mode_of_project" SET DATA TYPE "public"."mode_of_projects" USING "mode_of_project"::text::"public"."mode_of_projects";--> statement-breakpoint
DROP TYPE "public"."mode_of_project";