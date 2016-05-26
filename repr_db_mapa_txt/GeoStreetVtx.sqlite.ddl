CREATE TABLE GeoStreetVtx (GeoStreetId INTEGER, Id INTEGER, Idx INTEGER, X INTEGER, Y INTEGER);
CREATE UNIQUE INDEX ix_GeoStreetVtx_PK ON GeoStreetVtx (GeoStreetId, Id, Idx);
CREATE  INDEX ix_GeoStreetVtx_XY ON GeoStreetVtx (X, Y);
