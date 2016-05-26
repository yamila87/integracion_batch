CREATE TABLE GeoFacade (Id INTEGER, GeoStreetId INTEGER, GeoBlockId INTEGER, GeoBlockVtxIdxIni INTEGER, GeoBlockVtxIdxEnd INTEGER, GeoFacadeNumIni INTEGER, GeoFacadeNumEnd INTEGER, GeoFacadeNumDir INTEGER);
CREATE UNIQUE INDEX ix_GeoFacade_PK ON GeoFacade (Id);
CREATE  INDEX ix_GeoFacade_SID ON GeoFacade (GeoStreetId);
CREATE  INDEX ix_GeoFacade_BID ON GeoFacade (GeoBlockId);
