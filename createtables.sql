drop table "brewery_tbl";
CREATE TABLE "brewery_tbl" (
    "brewery_id" int   NOT NULL,
    "brewery_name" char(100)   NOT NULL,
    "city" char(100)   NULL,
    "state" char(100)    NULL,
    "country" char(100)   NOT NULL,
    "beer_count" INT   NOT NULL,
    "rating" FLOAT    NULL,
    CONSTRAINT "pk_brewery_tbl" PRIMARY KEY (
        "brewery_id"
     )
);

CREATE TABLE "beer_tbl" (
    "beer_name" char(100)   NULL,
    "style" char(100)  NULL,
    "ABV" FLOAT   NULL,
    "brewery_id" int   NOT NULL
);


