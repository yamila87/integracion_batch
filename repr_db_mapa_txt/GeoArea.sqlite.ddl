CREATE TABLE GeoArea (Id INTEGER, TypeId INTEGER, Dsc TEXT, Code INTEGER, Parent INTEGER);
CREATE UNIQUE INDEX ix_GeoArea_PK ON GeoArea (Id);
