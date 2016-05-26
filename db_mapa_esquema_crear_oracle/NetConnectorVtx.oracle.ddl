CREATE TABLE NetConnectorVtx (NetElementId NUMBER(10), Idx NUMBER(5), X NUMBER(15), Y NUMBER(15));
CREATE UNIQUE INDEX ix_NetConnectorVtx_PK ON NetConnectorVtx (NetElementId, Idx);
CREATE  INDEX ix_NetConnectorVtx_XY ON NetConnectorVtx (X, Y);
