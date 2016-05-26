CREATE TABLE CfgIconPartVtx (IconId NUMBER, IconPartId NUMBER, Idx NUMBER, id NUMBER, x NUMBER, y NUMBER, bulge NUMBER, startwidth REAL, endwidth REAL);
CREATE UNIQUE INDEX ix_CfgIconPartVtx_PK ON CfgIconPartVtx (IconId, IconPartId, Idx, id);
