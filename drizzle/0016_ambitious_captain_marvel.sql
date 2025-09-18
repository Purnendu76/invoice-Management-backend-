ALTER TABLE "user-auth" DROP CONSTRAINT "user-auth_user_id_user-auth_id_fk";
--> statement-breakpoint
ALTER TABLE "user-auth" ADD COLUMN "userId" uuid DEFAULT gen_random_uuid() NOT NULL;--> statement-breakpoint
ALTER TABLE "user-auth" DROP COLUMN "user_id";