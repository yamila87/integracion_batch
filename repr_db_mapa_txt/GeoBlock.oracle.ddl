CREATE TABLE GeoBlock (Id NUMBER(10), EntityTypeId NUMBER(10));
CREATE UNIQUE INDEX ix_GeoBlock_PK ON GeoBlock (Id);
CREATE  INDEX ix_GeoBlock_ET ON GeoBlock (EntityTypeId);
