CREATE TABLE GeoBlockVtx (GeoBlockId INTEGER, Idx INTEGER, X INTEGER, Y INTEGER);
CREATE UNIQUE INDEX ix_GeoBlockVtx_PK ON GeoBlockVtx (GeoBlockId, Idx);
CREATE  INDEX ix_GeoBlockVtx_XY ON GeoBlockVtx (X, Y);
