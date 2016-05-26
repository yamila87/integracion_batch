CREATE TABLE GeoStreetVtx (GeoStreetId NUMBER(10), Id NUMBER(10), Idx NUMBER(5), X NUMBER(15), Y NUMBER(15));
CREATE UNIQUE INDEX ix_GeoStreetVtx_PK ON GeoStreetVtx (GeoStreetId, Id, Idx);
CREATE  INDEX ix_GeoStreetVtx_XY ON GeoStreetVtx (X, Y);