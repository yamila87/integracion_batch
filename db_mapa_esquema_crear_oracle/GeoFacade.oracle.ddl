CREATE TABLE GeoFacade (Id NUMBER(10), GeoStreetId NUMBER(10), GeoBlockId NUMBER(10), GeoBlockVtxIdxIni NUMBER(5), GeoBlockVtxIdxEnd NUMBER(5), GeoFacadeNumIni NUMBER(10), GeoFacadeNumEnd NUMBER(10), GeoFacadeNumDir NUMBER(10));
CREATE UNIQUE INDEX ix_GeoFacade_PK ON GeoFacade (Id);
CREATE  INDEX ix_GeoFacade_SID ON GeoFacade (GeoStreetId);
CREATE  INDEX ix_GeoFacade_BID ON GeoFacade (GeoBlockId);
