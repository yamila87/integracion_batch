CREATE TABLE NetTopoLink (NetElementId NUMBER(10), TopoLinkVal VARCHAR2(200));
CREATE UNIQUE INDEX ix_NetTopoLink_PK ON NetTopoLink (NetElementId);
CREATE  INDEX ix_NetTopoLink_LNK ON NetTopoLink (TopoLinkVal);
