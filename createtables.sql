CREATE TABLE "brewery_tbl" (
    "brewery_id" char(10)   NOT NULL,
    "brewery_name" char(30)   NOT NULL,
    "city" char(30)   NOT NULL,
    "state" char(2)   NOT NULL,
    "country" char(30)   NOT NULL,
    "beer_count" INT   NOT NULL,
    "rating" FLOAT   NOT NULL,
    CONSTRAINT "pk_brewery_tbl" PRIMARY KEY (
        "brewery_id"
     )
);
CREATE TABLE "beer_tbl" (
    "id" INT   NOT NULL,
    "name" char(30)   NOT NULL,
    "syle" char(30)   NOT NULL,
    "ABV" FLOAT   NOT NULL,
    "brewery_id" char(10)   NOT NULL,
    CONSTRAINT "pk_beer_tbl" PRIMARY KEY (
        "id"
     )
);
ALTER TABLE "brewery_tbl" ADD CONSTRAINT "fk_brewery_tbl_brewery_id" FOREIGN KEY("brewery_id")
REFERENCES "beer_tbl" ("brewery_id");