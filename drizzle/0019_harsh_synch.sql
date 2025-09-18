ALTER TABLE "user-auth" DROP CONSTRAINT "user-auth_user_Id_user-auth_id_fk";
--> statement-breakpoint
ALTER TABLE "user-auth" ALTER COLUMN "user_Id" SET NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ADD COLUMN "user_id" uuid NOT NULL;--> statement-breakpoint
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_user_id_user-auth_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."user-auth"("id") ON DELETE cascade ON UPDATE no action;