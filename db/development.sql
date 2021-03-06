PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150601141815');
INSERT INTO "schema_migrations" VALUES('20150601141828');
CREATE TABLE "brands" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "brands" VALUES(1,'Gap','2015-06-01 14:36:24.880677','2015-06-01 14:36:24.880677');
INSERT INTO "brands" VALUES(2,'Banana Republic','2015-06-01 14:37:01.394921','2015-06-01 14:37:01.394921');
INSERT INTO "brands" VALUES(3,'Taylor','2015-06-01 14:37:16.618014','2015-06-01 14:37:16.618014');
INSERT INTO "brands" VALUES(4,'Rebbeca Taylor','2015-06-01 14:37:22.633087','2015-06-01 14:37:22.633087');
INSERT INTO "brands" VALUES(5,'Boss','2015-06-01 14:37:36.450107','2015-06-01 14:37:36.450107');
INSERT INTO "brands" VALUES(6,'Hugo Boss','2015-06-01 14:37:40.913678','2015-06-01 14:37:40.913678');
CREATE TABLE "clothing_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "clothing_types" VALUES(1,'Denim','2015-06-01 14:39:33.849059','2015-06-01 14:39:33.849059');
INSERT INTO "clothing_types" VALUES(2,'Pants','2015-06-01 14:39:41.661752','2015-06-01 14:39:41.661752');
INSERT INTO "clothing_types" VALUES(3,'Skirts','2015-06-01 14:40:12.631742','2015-06-01 14:40:12.631742');
INSERT INTO "clothing_types" VALUES(4,'Dresses','2015-06-01 14:40:27.889195','2015-06-01 14:40:27.889195');
INSERT INTO "clothing_types" VALUES(5,'Sweaters','2015-06-01 14:40:39.549709','2015-06-01 14:40:39.549709');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('brands',6);
INSERT INTO "sqlite_sequence" VALUES('clothing_types',5);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
