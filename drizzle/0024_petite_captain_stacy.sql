CREATE TYPE "public"."gst_percentagee" AS ENUM('5%', '12%', '18%');--> statement-breakpoint
ALTER TABLE "user-auth" DROP CONSTRAINT "user-auth_user_id_user-auth_id_fk";
--> statement-breakpoint
ALTER TABLE "invoices" ALTER COLUMN "gst_percentage" SET DATA TYPE "public"."gst_percentagee" USING "gst_percentage"::text::"public"."gst_percentagee";--> statement-breakpoint
ALTER TABLE "user-auth" DROP COLUMN "user_id";--> statement-breakpoint
DROP TYPE "public"."gst_percentage";