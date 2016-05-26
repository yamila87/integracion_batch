CREATE TABLE CfgAttrType
(
  ID          INTEGER,
  DSC  	      VARCHAR2(100 BYTE)
);

CREATE UNIQUE INDEX ix_CfgAttrType_PK ON CfgAttrType
(ID);

CREATE INDEX ix_CfgAttrType_DSC ON CfgAttrType
(DSC);


ALTER TABLE CfgAttrType ADD (
  CONSTRAINT ix_CfgAttrType_PK PRIMARY KEY(ID),
  CONSTRAINT ix_CfgAttrType_DSC UNIQUE(DSC)
  );
