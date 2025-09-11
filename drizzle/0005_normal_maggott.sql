CREATE TABLE "user-auth" (
	"id" serial PRIMARY KEY NOT NULL,
	"email" varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	"role" varchar(50) DEFAULT 'user',
	"created_at" timestamp DEFAULT now(),
	CONSTRAINT "user-auth_email_unique" UNIQUE("email")
);
--> statement-breakpoint
DROP TABLE "users-auth" CASCADE;