CREATE TABLE NetConnectorVtx (NetElementId INTEGER, Idx INTEGER, X INTEGER, Y INTEGER);
CREATE UNIQUE INDEX ix_NetConnectorVtx_PK ON NetConnectorVtx (NetElementId, Idx);
CREATE  INDEX ix_NetConnectorVtx_XY ON NetConnectorVtx (X, Y);
