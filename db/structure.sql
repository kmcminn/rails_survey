CREATE TABLE "feedbacks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "question_id" integer, "survey_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "join_models" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" text, "answer_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "surveys" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "survey_id" integer, "question_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130801065846');

INSERT INTO schema_migrations (version) VALUES ('20130801073703');

INSERT INTO schema_migrations (version) VALUES ('20130801104814');

INSERT INTO schema_migrations (version) VALUES ('20130801105408');