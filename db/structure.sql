CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "networks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "call_letters" varchar, "channel" integer);
CREATE TABLE "shows" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "network_id" integer);
CREATE TABLE "actors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar, "last_name" varchar);
CREATE TABLE "characters" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "show_id" integer, "catchphrase" varchar);
INSERT INTO schema_migrations (version) VALUES ('1'), ('2'), ('3'), ('4'), ('5'), ('6');


