ALTER TABLE "user-auth" ADD COLUMN "user_id" uuid NOT NULL;--> statement-breakpoint
ALTER TABLE "user-auth" ADD CONSTRAINT "user-auth_user_id_user-auth_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."user-auth"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user-auth" DROP COLUMN "user_Id";