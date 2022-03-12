CREATE TABLE "public"."products" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "user_id" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "name" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE cascade);COMMENT ON TABLE "public"."products" IS E'A product is an object that can be put in the inventory.';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
