ALTER TABLE "user-auth" ADD COLUMN "user_Id" uuid DEFAULT gen_random_uuid() NOT NULL;--> statement-breakpoint
ALTER TABLE "user-auth" DROP COLUMN "userId";