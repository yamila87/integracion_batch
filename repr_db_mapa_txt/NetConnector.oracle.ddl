CREATE TABLE NetConnector (NetElementId NUMBER(10), EntityTypeId NUMBER(10), Color NUMBER(10));
CREATE UNIQUE INDEX ix_NetConnector_PK ON NetConnector (NetElementId);
CREATE  INDEX ix_NetConnector_ET ON NetConnector (EntityTypeId);
