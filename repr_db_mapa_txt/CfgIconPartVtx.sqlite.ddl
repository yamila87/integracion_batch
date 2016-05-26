CREATE TABLE CfgIconPartVtx (IconId INTEGER, IconPartId INTEGER, Idx INTEGER, id INTEGER, x INTEGER, y INTEGER, bulge INTEGER, startwidth REAL, endwidth REAL);
CREATE UNIQUE INDEX ix_CfgIconPartVtx_PK ON CfgIconPartVtx (IconId, IconPartId, Idx, id);
