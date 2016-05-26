CREATE TABLE NetConnector (NetElementId INTEGER, EntityTypeId INTEGER, Color INTEGER);
CREATE UNIQUE INDEX ix_NetConnector_PK ON NetConnector (NetElementId);
CREATE  INDEX ix_NetConnector_ET ON NetConnector (EntityTypeId);
