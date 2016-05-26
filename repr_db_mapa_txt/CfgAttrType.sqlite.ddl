CREATE TABLE CfgAttrType (id INTEGER, dsc INTEGER);
CREATE UNIQUE INDEX ix_CfgAttrType_PK ON CfgAttrType (id);
CREATE  INDEX ix_CfgAttrType_DSC ON CfgAttrType (dsc);
