CREATE TABLE GeoAreaVtx (GeoAreaId NUMBER(10), Id NUMBER(10), Idx NUMBER(5), X NUMBER(15), Y NUMBER(15));
CREATE UNIQUE INDEX ix_GeoAreaVtx_PK ON GeoAreaVtx (GeoAreaId, Id, Idx);
CREATE  INDEX ix_GeoAreaVtx_XY ON GeoAreaVtx (X, Y);
