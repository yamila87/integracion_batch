CREATE TABLE GeoBlockVtx (GeoBlockId NUMBER(10), Idx NUMBER(5), X NUMBER(15), Y NUMBER(15));
CREATE UNIQUE INDEX ix_GeoBlockVtx_PK ON GeoBlockVtx (GeoBlockId, Idx);
CREATE  INDEX ix_GeoBlockVtx_XY ON GeoBlockVtx (X, Y);
