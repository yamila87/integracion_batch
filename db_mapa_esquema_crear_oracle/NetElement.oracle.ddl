CREATE TABLE NetElement (NetElementId NUMBER(10), EntityTypeId NUMBER(10), X NUMBER(15), Y NUMBER(15), Angle FLOAT, Scale FLOAT, Color NUMBER(10));
CREATE UNIQUE INDEX ix_NetElement_PK ON NetElement (NetElementId);
CREATE  INDEX ix_NetElement_XY ON NetElement (X, Y);
