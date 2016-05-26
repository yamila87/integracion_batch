CREATE TABLE CfgIconCxPoints (EntityTypeId INTEGER, Idx INTEGER, x INTEGER, y INTEGER, z INTEGER);
CREATE UNIQUE INDEX ix_CfgIconCxPoints_PK ON CfgIconCxPoints (EntityTypeId, Idx);
