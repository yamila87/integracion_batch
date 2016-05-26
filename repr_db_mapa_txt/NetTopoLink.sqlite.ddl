CREATE TABLE NetTopoLink (NetElementId INTEGER, TopoLinkVal TEXT);
CREATE UNIQUE INDEX ix_NetTopoLink_PK ON NetTopoLink (NetElementId);
CREATE  INDEX ix_NetTopoLink_LNK ON NetTopoLink (TopoLinkVal);
