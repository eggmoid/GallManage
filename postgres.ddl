CREATE EXTENSION pg_trgm;

CREATE TABLE "post" (
    "num"             integer       NOT NULL PRIMARY KEY,
    "title"           varchar(320)  NOT NULL,
    "name"            varchar(120)  NOT NULL,
    "idip"            varchar(20)   NOT NULL,
    "date"            varchar(19)   NOT NULL,
    "comment_count"   integer,
    "gall_count"      integer,
    "gall_recommend"  integer
);
CREATE INDEX "post_name_tgrm_idx" ON "post" USING gin("name" gin_trgm_ops);
CREATE INDEX "post_idip_tgrm_idx" ON "post" USING gin("idip" gin_trgm_ops);
