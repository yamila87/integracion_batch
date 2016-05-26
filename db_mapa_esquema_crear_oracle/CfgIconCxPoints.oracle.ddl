CREATE TABLE CfgIconCxPoints
(
  EntityTypeId    NUMBER,
  IDX  	          NUMBER,
  X               NUMBER,
  Y               NUMBER,
  Z               NUMBER
);

CREATE UNIQUE INDEX ix_CfgIconCxPoints_PK ON CfgIconCxPoints
(EntityTypeId, Idx);

ALTER TABLE CfgIconCxPoints ADD (
  CONSTRAINT ix_CfgIconCxPoints_PK  PRIMARY KEY  (EntityTypeId, Idx)
  );


