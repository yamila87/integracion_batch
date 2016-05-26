CREATE TABLE NetElement (NetElementId INTEGER, EntityTypeId INTEGER, X INTEGER, Y INTEGER, Angle REAL, Scale REAL, Color INTEGER);
CREATE UNIQUE INDEX ix_NetElement_PK ON NetElement (NetElementId);
CREATE INDEX ix_NetElement_XY ON NetElement (X, Y);
CREATE INDEX ix_NetElement_EntityType on NetElement (EntityTypeId);

