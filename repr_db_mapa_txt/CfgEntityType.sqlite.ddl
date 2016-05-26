CREATE TABLE CfgEntityType (Id INTEGER, Dsc TEXT, DscL TEXT, Class INTEGER, NetTypeId INTEGER, CategoryId INTEGER, PropertyId INTEGER, Layer INTEGER, Flags INTEGER);
CREATE UNIQUE INDEX ix_CfgEntityType_PK ON CfgEntityType (Id);
