CREATE TABLE GeoBlock (Id INTEGER, EntityTypeId INTEGER);
CREATE UNIQUE INDEX ix_GeoBlock_PK ON GeoBlock (Id);
CREATE  INDEX ix_GeoBlock_ET ON GeoBlock (EntityTypeId);
