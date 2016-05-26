CREATE TABLE CfgIcon
(
  ID              NUMBER,
  DSC  	          VARCHAR2(100 BYTE),
  IconCategoryId  NUMBER,
  SCALE           REAL,
  TYPE            VARCHAR2(100 BYTE),
  IMAGEPATH       VARCHAR2(100 BYTE)
);

CREATE UNIQUE INDEX ix_CfgIcon_PK ON CfgIcon
(ID);

ALTER TABLE CfgIcon ADD (
  CONSTRAINT ix_CfgIcon_PK  PRIMARY KEY  (ID)
  );

