CREATE TABLE GeoArea (Id NUMBER(10), TypeId NUMBER(10), Dsc VARCHAR2(100), Code VARCHAR2(100), Parent NUMBER(10));
CREATE UNIQUE INDEX ix_GeoArea_PK ON GeoArea (Id);

ALTER TABLE GeoArea ADD (
  CONSTRAINT ix_GeoArea_PK PRIMARY KEY(ID)
);